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
#include <stdio.h>
#include "definitions.h"  
#include "classd_music.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

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

#define ARRAY_SIZE(x) (sizeof ((x)) / sizeof(*(x)))
#define INITIAL_ATTENUATION 0
bool playTune = false;  //flag to track if musical tone should be played
bool changeVolume = false; //flag to track if volume must be changed
bool inProgress = false;  //flag to track if button was pressed
uint32_t t1=0, t2=0;
uint8_t attn = INITIAL_ATTENUATION;
// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

void app_transferComplete(CLASSD_DMA_TRANSFER_EVENT status, uintptr_t context)
{
        LED_BLUE_Off();
}

void playMusic(PIO_PIN pin, uintptr_t context)
{
    uint32_t ms = 0;
    
    if(SW1_Get() ==SW1_STATE_PRESSED){
        t1 = SYS_TIME_CounterGet();
        inProgress = true;
        LED_GREEN_On();
    }
    else
    {
        if(inProgress)
        {
            //button was pressed
            t2 = SYS_TIME_CounterGet();
            inProgress = false;            
            ms = SYS_TIME_CountToMS(t2) - SYS_TIME_CountToMS(t1);
            if(ms >= 3000)
            {
                //increase volume
                changeVolume = true;
            }
            else
            {
                //play tune
                playTune = true;
                LED_GREEN_Off();
                LED_BLUE_On();
                
            }
        }
    }
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************

void _volume_change(void)
{
    static bool increasingVolume = true;
    if (increasingVolume && attn > 0) 
    {
		attn -= 5;
        printf("Increasing Volume.\r\n");		
	} 
    else 
    {
        increasingVolume = false;
        attn += 5;       
		printf("Decreasing Volume.\r\n");	
        if(attn > 25)
            increasingVolume = true;
	}
    printf("Setting attenuation to -%udB\r\n", (unsigned)attn);
    CLASSD_AttenuationSet(CLASSD_LEFT, attn);
}

void _music_playback(void)
{
    uint32_t  arr_size = ARRAY_SIZE(music_data) / sizeof(uint8_t);
	uint32_t  length = arr_size / sizeof(uint16_t);
    
    CLASSD_Transfer(music_data, length);   
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;
    
}

/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            bool appInitialized = true;
            
            CLASSD_AttenuationSet(CLASSD_LEFT, INITIAL_ATTENUATION);
            printf("\r\n");
            printf("CLASS D Example for SAM9X60-EK\r\n");
            printf("Press and quickly release User Button to play music OR\n\r");
            printf("Press and hold User Button for 3 sec to decrease/increase volume.\n\r");
                      
            PIO_PinInterruptCallbackRegister(PIO_PIN_PD18, playMusic, (uintptr_t)NULL );
            PIO_PinInterruptEnable(PIO_PIN_PD18);
            CLASSD_CallbackRegister(app_transferComplete, 0);
            if (appInitialized)
            {

                appData.state = APP_STATE_SERVICE_TASKS;
            }
            break;
        }

        case APP_STATE_SERVICE_TASKS:
        {
            if(playTune){
                playTune = false;
                _music_playback();
                
            }
            if(changeVolume){
                changeVolume = false;
                _volume_change();
                LED_GREEN_Off();
            }
            break;
        }

       


        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}


/*******************************************************************************
 End of File
 */
