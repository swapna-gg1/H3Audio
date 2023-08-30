/*******************************************************************************
* Copyright (C) 2022 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/

/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It 
    implements the logic of the application's state machine and it may call 
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************

#include "app.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

uint16_t volumeLevels[VOL_LVL_MAX] =
{
#ifdef DRV_AK4954_VOLUME
    0 /* off */, 192, 208, 224          // if using AK4954, use narrower range  
#else            
    0 /* off */, 64, 128, 255            
#endif 
};

#ifdef DATA32_ENABLED
DRV_I2S_DATA32m __attribute__ ((aligned (32))) App_Audio_Output_Buffer1[NUM_SAMPLES];
DRV_I2S_DATA32m __attribute__ ((aligned (32))) App_Audio_Output_Buffer2[NUM_SAMPLES];
DRV_I2S_DATA16 __attribute__ ((aligned (32))) App_Audio_Output_TempBuf[NUM_SAMPLES];
#else
DRV_I2S_DATA16 __attribute__ ((aligned (32))) App_Audio_Output_Buffer1[NUM_SAMPLES];
DRV_I2S_DATA16 __attribute__ ((aligned (32))) App_Audio_Output_Buffer2[NUM_SAMPLES];
#endif
DRV_I2S_DATA16 __attribute__ ((aligned (32))) App_Audio_Input_Buffer[NUM_SAMPLES];

static uint16_t rd, wrtn;
int32_t bytesRead;

static dWAVHEADER wavHdr;

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.
    
    Application strings and buffers are be defined outside this structure.
*/
APP_DATA appData;
LED_DATA ledData;
BTN_DATA btnData;

#define char_tolower(c)      (char) ((c >= 'A' && c <= 'Z') ? (c | 0x20) : c)

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions. */
// ****************************************************************************
/*
  Function:
        static void WM8904_TimerCallback
        (
            uintptr_t context
        )

  Summary:
    Implements the handler for timer callback function.

  Description:
    Called every 1 ms by timer services.  It then decrements WM8904Delay if
    non-zero.

  Parameters:
    context      - Contains index into driver's instance object array

  Remarks:
    None
*/
static void App_TimerCallback( uintptr_t context)
{
    if (ledData.led1Delay)
    {
        ledData.led1Delay--;
    }
    if (ledData.led2Delay)
    {
        ledData.led2Delay--;
    }
    if (appData.playbackDelay)
    {
        appData.playbackDelay--;
    }
    if (btnData.delay)
    {      
        btnData.delay--;
    }
    //LED2_Toggle();        // to check timing
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************
/* TODO:  Add any necessary local functions.
*/

APP_DATA * APP_GetAppDataInstance()
{
    return &appData;
}

void APP_PlayerInitialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.fileHandle = SYS_FS_HANDLE_INVALID;
    appData.fileStatus.lfsize = FAT_FS_MAX_LFN;
    appData.readBytes = 0;
    appData.current_filesize = 0;
    
    DISK_Initialize();
}

void APP_UpdateTrackPosition(void)
{
    uint32_t dur, time;
    if( appData.sampleRate && appData.numOfChnls )
    {
        switch( appData.currentStreamType )
        {
            case APP_STREAM_WAV:
                dur = (appData.fileSize - sizeof( WAV_FILE_HEADER ))/(appData.sampleRate*2*appData.numOfChnls);
                time = (appData.currPos - sizeof( WAV_FILE_HEADER))/(appData.sampleRate*2*appData.numOfChnls);
                break;

            default:
                time = dur = 0;
                break;
        }
       
        if (time >= dur)
        {
            appData.state = APP_STATE_CLOSE_FILE;   // if at or past duration, force file to close
        }        
    }
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

void _audioCodecInitialize (AUDIO_CODEC_DATA* codecData)
{
    codecData->handle = DRV_HANDLE_INVALID;
    codecData->context = 0;
    codecData->bufferHandler = 
           (DRV_CODEC_BUFFER_EVENT_HANDLER) Audio_Codec_BufferEventHandler;
    codecData->txbufferObject1 = NULL;
    codecData->txbufferObject2 = NULL;
    codecData->bufferSize1 = 0;
    codecData->bufferSize2 = 0;
}


/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{  
    /* TODO: Initialize your application's state machine and other
     * parameters.
     */   
    appData.state = APP_STATE_INIT;//APP_STATE_IDLE;
    btnData.state = BTN_STATE_IDLE;
    appData.volLevel = VOL_LVL_LOW;
    appData.prevVol = 0;
    appData.volume = volumeLevels[appData.volLevel];
    appData.buttonDelay = 0;
    LED_Set_Mode( 1, LED_STATE_TOGGLE, _100ms );
    LED_Set_Mode( 2, LED_STATE_OFF, _50ms );
    appData.playbackDelay = _1sec;
    _audioCodecInitialize (&appData.codecData);
    
    appData.deviceIsConnected = false;
    appData.usbConnect = false;
    appData.pingPong = true;
    appData.headphone_out = true;
    APP_PlayerInitialize();
}

#ifndef USE_SDMMC
USB_HOST_EVENT_RESPONSE APP_USBHostEventHandler (USB_HOST_EVENT event, void * eventData, uintptr_t context)
{
    switch (event)
    {
        case USB_HOST_EVENT_DEVICE_UNSUPPORTED:
            appData.state = APP_STATE_WAIT_FOR_DEVICE_ATTACH;
            break;
        default:
            break;
    }
    return(USB_HOST_EVENT_RESPONSE_NONE);
}

void APP_SYSFSEventHandler(SYS_FS_EVENT event, void * eventData, uintptr_t context)
{
    switch(event)
    {
        case SYS_FS_EVENT_MOUNT:
            appData.deviceIsConnected = true;
            LED_Set_Mode( 1, LED_STATE_OFF, 0 );
            break;
            
        case SYS_FS_EVENT_UNMOUNT:
            appData.deviceIsConnected = false;
            appData.usbConnect = false;
            LED_Set_Mode( 1, LED_STATE_TOGGLE, 0 );
            LED_Set_Mode( 2, LED_STATE_OFF, _50ms );
            appData.state = APP_STATE_WAIT_FOR_DEVICE_ATTACH;
            break;
            
        default:
            break;
    }
}
#endif

bool APP_IsSupportedAudioFile(char *name)
{
    uint8_t i = strlen(name);
    while(i--)
    {
        if(name[i] == '.')
            break;
    }
            
    if(name[i] == '\0' || name[i+1] =='\0'
            || name[i+2] == '\0' || name[i+3] == '\0')
    {
        return false;
    }

    char lowercase[4];
    lowercase[0] = char_tolower(name[i+1]);
    lowercase[1] = char_tolower(name[i+2]);
    lowercase[2] = char_tolower(name[i+3]);
    lowercase[3] = '\0';
    
    if( strcmp( lowercase, "wav" ) == 0 )
    {
        strcpy( appData.ext, "wav" );
        appData.currentStreamType = APP_STREAM_WAV;
        return true;
    }

    strcpy( appData.ext, "n/a" );
    appData.currentStreamType = APP_STREAM_UNKNOWN;
    return false;
}

void APP_ValidateFile( void )
{
    switch( appData.currentStreamType )
    {
        case APP_STREAM_WAV:
            // Read the header data
            bytesRead = SYS_FS_FileRead( appData.fileHandle, &wavHdr, sizeof(wavHdr));
            // If end of file is reached then close this file
            if ((0==bytesRead) || (-1==bytesRead) || SYS_FS_FileEOF(appData.fileHandle))
            {
                appData.state = APP_STATE_CLOSE_FILE; 
                break;
            }             
            WAV_Initialize_N( (uint8_t *)&wavHdr, appData.fileHandle );                     
            
            appData.numOfChnls = WAV_GetChannels();
            appData.bytesRemaining = WAV_GetDataLen();
            appData.sampleRate = WAV_GetSampleRate();
            appData.playbackDuration = WAV_GetDuration();
            appData.bitDepth = WAV_GetBitsPerSample();
            appData.bufferSize1 = BUFFER_SIZE;
            appData.bufferSize2 = BUFFER_SIZE;
            
            if((wavHdr.format == 0x46464952 ) && ( wavHdr.filetype == 0x45564157 ) && 
                ( wavHdr.frmtchunk_marker == 0x20746d66 ) & (wavHdr.type_frmt == 1) && 
                (appData.sampleRate >= 8000) && (appData.sampleRate <= 96000) &&
                (appData.numOfChnls == 2))
            {
                appData.validFile = true;
            }
            break;

        default:
            appData.bufferSize1 = 0;
            appData.bufferSize2 = 0;
            appData.validFile = false;
            break;
    }
}

bool APP_Decoder(uint8_t * inBuf, uint16_t inSize, uint16_t * bytesRd, int16_t * outBuf, uint16_t * outSize )
{
    bool ret = false;
    switch( appData.currentStreamType )
    {
        case APP_STREAM_WAV:
            ret = WAV_Decoder( inBuf, inSize, bytesRd, outBuf, outSize );
            break;

        default:
            break;
    }
    return ret;
}

/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */
DRV_HANDLE tmrHandle;

bool firstRead = true;
bool oldPause = false;

void APP_Tasks ( void )
{  
    DISK_Tasks();
    APP_LED_Tasks();
   	BTN_Tasks();
    
    // check the application's current state
    switch ( appData.state )
    {       
        // application's initial state.
        case APP_STATE_INIT:
        {
            // open the timer Driver
            tmrHandle = SYS_TIME_CallbackRegisterMS(App_TimerCallback, 
                    (uintptr_t)0, 1/*ms*/, SYS_TIME_PERIODIC);

            if ( SYS_TIME_HANDLE_INVALID != tmrHandle )
            {
               appData.state = APP_STATE_CODEC_OPEN;
            }
            break;
        }
        case APP_STATE_CODEC_OPEN:
            {
            // see if codec is done initializing
            SYS_STATUS status = DRV_CODEC_Status(sysObjdrvCodec0);
            if (SYS_STATUS_READY == status)
            {
                // This means the driver can now be be opened.
                // a client opens the driver object to get an Handle
                appData.codecData.handle = DRV_CODEC_Open(DRV_CODEC_INDEX_0, 
                    DRV_IO_INTENT_WRITE | DRV_IO_INTENT_EXCLUSIVE);       
                if(appData.codecData.handle != DRV_HANDLE_INVALID)
                {
                    appData.state = APP_STATE_CODEC_SET_BUFFER_HANDLER;
                }            
            }
            break;
        }
        
        
        // set a handler for the audio buffer completion event
        case APP_STATE_CODEC_SET_BUFFER_HANDLER:
            DRV_CODEC_BufferEventHandlerSet(appData.codecData.handle, 
                                            appData.codecData.bufferHandler, 
                                            appData.codecData.context);
            appData.state = APP_STATE_BUS_ENABLE;           

            DRV_CODEC_VolumeSet(appData.codecData.handle,
                DRV_CODEC_CHANNEL_LEFT_RIGHT, 75/*appData.volume*/);                
            break;
            
        case APP_STATE_BUS_ENABLE:
        {
           // set the event handler and enable the bus
#ifndef USE_SDMMC
            SYS_FS_EventHandlerSet(APP_SYSFSEventHandler, (uintptr_t)NULL);
            USB_HOST_EventHandlerSet(APP_USBHostEventHandler, 0);
            USB_HOST_BusEnable(0);
            appData.state = APP_STATE_WAIT_FOR_BUS_ENABLE_COMPLETE;
#else
            appData.state = APP_STATE_MOUNT_DISK;
#endif
            break;
        }
		
        case APP_STATE_WAIT_FOR_BUS_ENABLE_COMPLETE:
        {
#ifndef USE_SDMMC		
            if(USB_HOST_BusIsEnabled(0))
            {
                appData.state = APP_STATE_WAIT_FOR_DEVICE_ATTACH;
            }
#endif			
            break;
        }
		
#ifdef USE_SDMMC            
        case APP_STATE_MOUNT_DISK:
            if( SYS_FS_Mount( SDCARD_DEV_NAME, SDCARD_MOUNT_NAME, FAT, 0, NULL) == SYS_FS_RES_SUCCESS )
            {
                appData.state = APP_STATE_WAIT_FOR_DEVICE_ATTACH;
                appData.deviceIsConnected = true;
                LED_Set_Mode( 1, LED_STATE_OFF, _50ms );
            }
            break;
#endif		            

        case APP_STATE_WAIT_FOR_DEVICE_ATTACH:
            /* Wait for device attach. The state machine will move
             * to the next state when the attach event
             * is received.  */
            if(appData.deviceIsConnected)
            {
                appData.state = APP_STATE_DEVICE_CONNECTED;
                appData.usbConnect = true;
                LED_Set_Mode( 1, LED_STATE_OFF, _50ms );
            }
            break;

        case APP_STATE_DEVICE_CONNECTED:
            // device was mounted. We can try scanning the disk
            appData.state = APP_STATE_READY_TO_SCAN;
            break;
        
        case APP_STATE_READY_TO_SCAN:
            // Wait until the disk has been scanned for all requested file types
            //__NOP();
            break;
        
        case APP_STATE_SCANNING:
            // Wait until the next file has been chosen to open and play
            //__NOP();
            break;
        
        case APP_STATE_OPEN_FILE:
            if( !appData.totalAudioFiles )
            {
                appData.state = APP_STATE_SCANNING;
                break;
            }
            appData.pause = oldPause = false;
            LED_Set_Mode( 2, LED_STATE_ON, _50ms );
            if( APP_IsSupportedAudioFile( appData.fileName ))
            {
                // try opening the file for reading
                appData.fileHandle = SYS_FS_FileOpen(appData.fileName, (SYS_FS_FILE_OPEN_READ));
                if(appData.fileHandle == SYS_FS_HANDLE_INVALID)
                {
                    // could not open the file -- 
                    appData.state = APP_STATE_CLOSE_FILE;
                }
                else
                {
                    appData.fileSize = SYS_FS_FileSize( appData.fileHandle );
                    if( appData.fileSize == -1 )
                    {
                        appData.state = APP_STATE_CLOSE_FILE;
                    }
                    else
                    {
                        // Read the header data
                        appData.validFile = false;
                        
                        appData.lrSync = true;  
						appData.pingPong = true;
                        firstRead = true;                          
                        appData.state = APP_STATE_INIT_READ_FILE;    
                    }
                }
            }
            else 
            {
                appData.state = APP_STATE_SCANNING;
            }
            break;
            
        case APP_STATE_INIT_READ_FILE:
            
            APP_ValidateFile();         
                    
            if( !appData.validFile )
            {
                // Look for next file
                appData.state = APP_STATE_CLOSE_FILE;
            }
            else
            { 
                DRV_CODEC_SamplingRateSet(appData.codecData.handle, appData.sampleRate);
                appData.state = APP_STATE_READ_FILE;
            }
            break;
            
        case APP_STATE_READ_FILE:
            if (appData.pause)
            {
                if (oldPause==false)
                {
                    DRV_I2S_WriteQueuePurge(DRV_CODEC_GetI2SDriver(appData.codecData.handle));                
                }
                oldPause = appData.pause;                
                break;
            }
            else
            {
                if (oldPause==true)
                {
                    firstRead = true;                
                }
                oldPause = appData.pause;                
            }
            
            bytesRead = SYS_FS_FileRead( appData.fileHandle, (uint8_t *) App_Audio_Input_Buffer, appData.bufferSize1);
            if ((0==bytesRead) || (-1==bytesRead) || SYS_FS_FileEOF(appData.fileHandle))
            {
                // read was not successful or no data read -- assume end of file
                appData.state = APP_STATE_CLOSE_FILE;
            }
            else
            {
                if (appData.pingPong)     // will write to I2S from buffer 1    
                {                    
#ifndef DATA32_ENABLED
                    APP_Decoder( (uint8_t *)App_Audio_Input_Buffer, (uint16_t)bytesRead, &rd,
                            (int16_t *) App_Audio_Output_Buffer1, &wrtn);
#else
                    APP_Decoder( (uint8_t *)App_Audio_Input_Buffer, (uint16_t)bytesRead, &rd,
                            (int16_t *) App_Audio_Output_TempBuf, &wrtn);
                    int i;
                    for( i = 0; i < NUM_SAMPLES; i++ )
                    {
                        App_Audio_Output_Buffer1[i].leftData = (int32_t)App_Audio_Output_TempBuf[i].leftData<<16;
                        App_Audio_Output_Buffer1[i].rightData = (int32_t)App_Audio_Output_TempBuf[i].rightData<<16;
                    }
                    wrtn *= 2;
#endif
                    appData.codecData.txbufferObject1 = (uint8_t *)App_Audio_Output_Buffer1;
                    appData.codecData.bufferSize1 = wrtn;
                }
                else
                {
#ifndef DATA32_ENABLED
                    APP_Decoder( (uint8_t *)App_Audio_Input_Buffer, (uint16_t)bytesRead, &rd,
                            (int16_t *) App_Audio_Output_Buffer2, &wrtn);
#else
                    APP_Decoder( (uint8_t *)App_Audio_Input_Buffer, (uint16_t)bytesRead, &rd,
                            (int16_t *) App_Audio_Output_TempBuf, &wrtn);
                    int i;
                    for( i = 0; i < NUM_SAMPLES; i++ )
                    {
                        App_Audio_Output_Buffer2[i].leftData = (int32_t)App_Audio_Output_TempBuf[i].leftData<<16;
                        App_Audio_Output_Buffer2[i].rightData = (int32_t)App_Audio_Output_TempBuf[i].rightData<<16;
                    }
                    wrtn *= 2;
#endif
                    appData.codecData.txbufferObject2 = (uint8_t *) App_Audio_Output_Buffer2;
                    appData.codecData.bufferSize2 = wrtn;                        
                }
            }               
            
            if (firstRead)
            {
                appData.state = APP_STATE_CODEC_ADD_BUFFER;
                firstRead = false;
            }
            else
            {
                appData.state = APP_STATE_CODEC_WAIT_FOR_BUFFER_COMPLETE;    
            }
            break;
            
        case APP_STATE_CODEC_ADD_BUFFER:
#ifndef USE_SDMMC                           
            if (appData.lrSync)                  
            {
                DRV_CODEC_LRCLK_Sync(appData.codecData.handle);
                appData.lrSync = false;
            }
#else
            DRV_CODEC_LRCLK_Sync(appData.codecData.handle);     // resync for every buffer            
#endif            
            
            if(!appData.deviceIsConnected)
            {
                appData.state = APP_STATE_WAIT_FOR_DEVICE_ATTACH;
                break;
            }            
            
            if ( appData.pingPong )     // writing from 1, will decode  into 2     
            {
                DRV_CODEC_BufferAddWrite(appData.codecData.handle,
                                            &appData.codecData.writeBufHandle1,
                                            appData.codecData.txbufferObject1,
                                            appData.codecData.bufferSize1);

                // initiated a write to the codec via I2S, read next buffer full
                if(appData.codecData.writeBufHandle1 != DRV_CODEC_BUFFER_HANDLE_INVALID)
                {
                    appData.pingPong = false;
                    appData.state = APP_STATE_READ_FILE;
                }
                else
                {
                    appData.state = APP_STATE_CLOSE_FILE;
                }
            }
            else
            {                
                DRV_CODEC_BufferAddWrite(appData.codecData.handle,
                                            &appData.codecData.writeBufHandle2,
                                            appData.codecData.txbufferObject2,
                                            appData.codecData.bufferSize2);
                
                // initiated a write to the codec via I2S, read next buffer full
                if(appData.codecData.writeBufHandle2 != DRV_CODEC_BUFFER_HANDLE_INVALID)
                {
                    appData.pingPong = true;
                    appData.state = APP_STATE_READ_FILE;
                }               
                else
                {
                    appData.state = APP_STATE_CLOSE_FILE;
                }
            }
            appData.currPos = SYS_FS_FileTell( appData.fileHandle );            
            APP_UpdateTrackPosition();            

            if( appData.prevVol != appData.volume )
            {
                DRV_CODEC_VolumeSet(appData.codecData.handle,
                    DRV_CODEC_CHANNEL_LEFT_RIGHT, appData.volume);
                appData.prevVol = appData.volume;
            }
            break;                                  
            
        // audio data Transmission under process
        case APP_STATE_CODEC_WAIT_FOR_BUFFER_COMPLETE:
            //__NOP();
            break;
            
        case APP_STATE_CLOSE_FILE:
            SYS_FS_FileClose( appData.fileHandle );
            DRV_I2S_WriteQueuePurge(DRV_CODEC_GetI2SDriver(appData.codecData.handle));          
            appData.state = APP_STATE_SCANNING;
            break;
            
        case APP_STATE_CLOSE_AND_REOPEN_FILE:          
            SYS_FS_FileClose( appData.fileHandle );
            DRV_I2S_WriteQueuePurge(DRV_CODEC_GetI2SDriver(appData.codecData.handle));          
            appData.state = APP_STATE_OPEN_FILE;
            break;            
        
        case APP_STATE_NO_MEDIA:          
            appData.state = APP_STATE_SCANNING;
            appData.pause = true;           
		default:
            //__NOP();
            break;
    }
}

void APP_LED_Tasks( void )
{
    if( !ledData.led1Delay )
    {
        switch( ledData.led1State )
        {
            case LED_STATE_ON:
                LED1_On();
                ledData.led1On = true;
                ledData.led1Delay = ledData.led1Period;
                break;
            case LED_STATE_OFF:
            default:
                LED1_Off();
                ledData.led1On = false;
                ledData.led1Delay = ledData.led1Period;
                break;
            case LED_STATE_TOGGLE:
                LED1_Toggle();
                ledData.led1On = !ledData.led1On;
                ledData.led1Delay = ledData.led1Period;
                break;
            case LED_STATE_BLINK:
                ledData.led1Delay = ( ledData.led1BlinkCnt ) ? _200ms : _500ms;
                if( ledData.led1On )
                {
                    LED1_Off();
                    ledData.led1On = false;
                    ledData.led1Blinks = ( ledData.led1Blinks ) ? : 1;
                    ledData.led1BlinkCnt = ( ledData.led1BlinkCnt ) ? : ledData.led1Blinks;
                }
                else
                {
                    LED1_On();
                    ledData.led1On = true;
                    ledData.led1BlinkCnt--;
                }
                break;
        }        
    }
    if( !ledData.led2Delay )
    {
        switch( ledData.led2State )
        {
            case LED_STATE_ON:
                LED2_On();
                ledData.led2On = true;
                ledData.led2Delay = ledData.led2Period;
                break;
            case LED_STATE_OFF:
            default:
                LED2_Off();
                ledData.led2On = false;
                ledData.led2Delay = ledData.led2Period;
                break;
            case LED_STATE_TOGGLE:
                LED2_Toggle();
                ledData.led2On = !ledData.led2On;
                ledData.led2Delay = ledData.led2Period;
                break;
            case LED_STATE_BLINK:
                ledData.led2Delay = ( ledData.led2BlinkCnt ) ? _200ms : _500ms;
                if( ledData.led2On )
                {
                    LED2_Off();
                    ledData.led2On = false;
                    ledData.led2Blinks = ( ledData.led2Blinks ) ? : 1;
                    ledData.led2BlinkCnt = ( ledData.led2BlinkCnt ) ? : ledData.led2Blinks;
                }
                else
                {
                    LED2_On();
                    ledData.led2On = true;
                    ledData.led2BlinkCnt--;
                }
                break;
        }
    }
}

void LED_Set_Mode( uint8_t led, LED_STATES state, uint32_t prd_blinks)
{
    switch( state )
    {
        case LED_STATE_ON:
        case LED_STATE_OFF:
        case LED_STATE_TOGGLE:
        default:
            switch( led )
            {
                case 1:
                    ledData.led1State = state;
                    ledData.led1Period = ( prd_blinks <= LED_PRD_MAX ) ? prd_blinks = ( prd_blinks > LED_PRD_MIN )?
                        prd_blinks : LED_PRD_MIN : LED_PRD_MAX;
                    break;
                case 2:
                    ledData.led2State = state;
                    ledData.led2Period = ( prd_blinks <= LED_PRD_MAX ) ? prd_blinks = ( prd_blinks > LED_PRD_MIN )?
                        prd_blinks : LED_PRD_MIN : LED_PRD_MAX;
                default:
                    break;
            }
            break;
        case LED_STATE_BLINK:
            switch( led )
            {
                case 1:
                    ledData.led1State = state;
                    ledData.led1Blinks = ( !prd_blinks ) ? ledData.led1Blinks : prd_blinks;
                    ledData.led1BlinkCnt = ledData.led1Blinks;
                    break;
                case 2:
                    ledData.led2State = state;
                    ledData.led2Blinks = ( !prd_blinks ) ? ledData.led2Blinks : prd_blinks;
                    ledData.led2BlinkCnt = ledData.led2Blinks;
                default:
                    break;
            }
            break;
    }
}

void BTN_ShortPress( void )
{
    switch( appData.playerBtnMode )
    {
        case VOL_ADJUST:
            appData.volLevel++;
            appData.volLevel %= VOL_LVL_MAX;
            if( appData.volLevel == VOL_LVL_MUTE )
            {
                LED_Set_Mode( 1, LED_STATE_TOGGLE, _500ms );
            }
            else
            {
                LED_Set_Mode( 1, LED_STATE_OFF, _500ms );
            }
            appData.volume = volumeLevels[appData.volLevel];
            break;
        case LINEAR_TRACK_CHANGE:
            appData.state = APP_STATE_CLOSE_FILE;
            break;
        default:
            break;
    }
}

void BTN_LongPress( void )
{
    appData.playerBtnMode++;
    appData.playerBtnMode %= MAX_MODES;
    if( appData.playerBtnMode == LINEAR_TRACK_CHANGE )
    {
        LED_Set_Mode( 1, LED_STATE_ON, _50ms );
    }
    else
    {
        LED_Set_Mode( 1, LED_STATE_OFF, _50ms );
    }
}
       
void BTN_Tasks()
{
   //BUTTON PROCESSING
    /* Check the buttons' current state. */
    switch ( btnData.state )
    {
        case BTN_STATE_IDLE:
            if(( btnData.delay == 0 ) &&
                 ( SWITCH_Get() == SWITCH_STATE_PRESSED ))                
            {
                btnData.delay = BUTTON_DEBOUNCE;       
                btnData.state = BTN_STATE_PRESSED;               
            }
            break;

        case BTN_STATE_PRESSED:
            if( btnData.delay > 0 )
            {
                break;      // still debouncing
            }

            if( SWITCH_Get() == SWITCH_STATE_PRESSED ) 
            {                
                btnData.delay = LONG_BUTTON_PRESS;          // 1 sec is long press
                btnData.state = BTN_STATE_BUTTON0_PRESSED;                  
            }
            break;

        case BTN_STATE_BUTTON0_PRESSED:
            if(( btnData.delay > 0 ) &&
                ( SWITCH_Get() != SWITCH_STATE_PRESSED ))     // SW01 pressed and released < 1 sec
            {
                BTN_ShortPress();
                btnData.delay = BUTTON_DEBOUNCE;                
                btnData.state = BTN_STATE_IDLE;    
                
            }
            else if(( btnData.delay == 0 ) &&
                     ( SWITCH_Get() == SWITCH_STATE_PRESSED ))  // SW0 still pressed after 1 sec
            {
                BTN_LongPress();
                btnData.state = BTN_STATE_WAIT_FOR_RELEASE;                
            }                          
            break;

        case BTN_STATE_WAIT_FOR_RELEASE:
            if( SWITCH_Get() != SWITCH_STATE_PRESSED )
            {
                btnData.delay = BUTTON_DEBOUNCE;
                btnData.state = BTN_STATE_IDLE;
            }

        /* The default state should never be executed. */
        default:
            /* TODO: Handle error in application's state machine. */
            break;
    }
}

//******************************************************************************
// 
// Audio_Codec_TxBufferComplete() - Set APP_Tasks Next state to buffer complete.
//
// NOTE: Called from APP_CODECBufferEventHandler().
//
// TODO: Put the appData instance pointer in the AUDIO_CODEC_DATA instance on
//       initialization of codecData and let the audio_codec instance change
//       the codec data and state. CAL
//
//******************************************************************************
void Audio_Codec_BufferEventHandler(DRV_CODEC_BUFFER_EVENT event,
    DRV_CODEC_BUFFER_HANDLE handle, uintptr_t context)
{
    switch(event)
    {
        case DRV_CODEC_BUFFER_EVENT_COMPLETE:
            // Signal to APP that DMA has finished
                appData.state = APP_STATE_CODEC_ADD_BUFFER; 
            break;

        case DRV_CODEC_BUFFER_EVENT_ERROR:
        case DRV_CODEC_BUFFER_EVENT_ABORT:
            appData.state = APP_STATE_SCANNING;
            break;
    }
}

bool DISK_EventHandler ( DISK_EVENT event, uint32_t variable,SYS_FS_HANDLE fileHandle)
{
    switch ( event )
    {
        case DISK_EVENT_REMOVED:
            appData.state = APP_STATE_NO_MEDIA;
            return ( true );

        case DISK_EVENT_INSERTED:
            appData.state = APP_STATE_WAITING;
            return ( true );

        case DISK_EVENT_SCANNING_STARTED:
            appData.state = APP_STATE_SCANNING;
            return ( true );

        case DISK_EVENT_SCANNING_FINISHED:
            return ( true );

        case DISK_EVENT_TRACK_CHANGED:
            return ( true );

        case DISK_EVENT_FILE_OPEN_ERROR:
        case DISK_EVENT_END_OF_FILE:
            DISK_CloseFile(appData.fileHandle);
            return ( true );
        default:
            break;
    }

    return ( false );
}

/*******************************************************************************
 End of File
 */
