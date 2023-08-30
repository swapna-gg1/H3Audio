#ifndef PLIB_CLASSD_H
#define PLIB_CLASSD_H
/*******************************************************************************
  CLASSD PLIB Header

  Company:
    Microchip Technology Inc.

  File Name:
    plib_classd.h

  Summary:
    This file provides the public declarations for the Audio CLASS D Amplifier.

  Description:
    None

*******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
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
#ifdef __cplusplus  // Provide C++ Compatibility
    extern "C" {
#endif
// DOM-IGNORE-END
#include <stddef.h>
#include <stdbool.h>
#include <device.h>

// *****************************************************************************
// *****************************************************************************
// Section: Data Types
// *****************************************************************************
// *****************************************************************************
/*  The following data type definitions are used by the functions in this
    interface and should be considered part it.
*/

typedef enum
{
    CLASSD_LEFT=0,
    CLASSD_RIGHT         
}CLASSD_CHANNEL;

// *****************************************************************************
/* Function:
    void CLASSD_Transfer(uint8_t* data, uint32_t length)

  Summary:
    Transmits the raw music data to CLASSD_THR register.

  Description:
    This function transmits the raw music data to the CLASS D THR register, 
    to play the tune (Using DMA or polling method, whatever was selected by
    the user.

  Precondition:
    CLASSD_Initialize should be called before calling this function.

  Parameters:
    data - The data buffer containing musical tune.
    length - The length of the buffer.
 
  Returns:
    None.

  Example:
    <code>
    uint8_t __attribute__ ((aligned(32))) music_data[] = {....};
    #define ARRAY_SIZE(x) (sizeof ((x)) / sizeof(*(x)))
    uint32_t  arr_size = ARRAY_SIZE(music_data) / sizeof(uint8_t);
	uint32_t  length = arr_size / sizeof(uint16_t);
    CLASSD_Transfer(music_data, length);
    </code>

  Remarks:
    None.
*/
void CLASSD_Transfer(uint8_t* data, uint32_t size);

// *****************************************************************************
/* Function:
    void CLASSD_ChannelDisable (bool left, bool right)

  Summary:
    Disables the required channel.

  Description:
    This function disables the left/right channel.

  Precondition:
    None.

  Parameters:
    None.
 
  Returns:
    None.

  Example:
    <code>
    CLASSD_ChannelDisable(true, true);
    </code>

  Remarks:
    None.
*/
void CLASSD_ChannelDisable (bool left, bool right);

// *****************************************************************************
/* Function:
    void CLASSD_ChannelEnable (bool left, bool right)

  Summary:
    Enables the required channel.

  Description:
    This function enables the left/right channel.

  Precondition:
    None.

  Parameters:
    None.
 
  Returns:
    None.

  Example:
    <code>
    CLASSD_ChannelEnable(true, true);
    </code>

  Remarks:
    None.
*/
void CLASSD_ChannelEnable (bool left, bool right);

// *****************************************************************************
/* Function:
    void CLASSD_AttenuationSet( CLASSD_CHANNEL chnl, uint8_t attn )

  Summary:
    Sets the channel attenuation.

  Description:
    This function sets the attenuation of the left/right channel.

  Precondition:
    None.

  Parameters:
    None.
 
  Returns:
    None.

  Example:
    <code>
    CLASSD_AttenuationSet(CLASSD_LEFT, 0);
    </code>

  Remarks:
    None.
*/
void CLASSD_AttenuationSet( CLASSD_CHANNEL chnl, uint8_t attn );

// *****************************************************************************
/* Function:
    void CLASSD_UnMute (bool left, bool right)

  Summary:
    Sets the channel to unmute.

  Description:
    This function sets the channel left/right to unmute.

  Precondition:
    None.

  Parameters:
    None.
 
  Returns:
    None.

  Example:
    <code>
    CLASSD_UnMute(true, true);
    </code>

  Remarks:
    None.
*/
void CLASSD_UnMute (bool left, bool right);

// *****************************************************************************
/* Function:
    void CLASSD_Mute (bool left, bool right)

  Summary:
    Sets the channel to mute.

  Description:
    This function sets the channel left/right to mute.

  Precondition:
    None.

  Parameters:
    None.
 
  Returns:
    None.

  Example:
    <code>
    CLASSD_Mute(true, true);
    </code>

  Remarks:
    None.
*/
void CLASSD_Mute (bool left, bool right);
// *****************************************************************************
/* Function:
    void CLASSD_Initialize(void)

  Summary:
    Configures Audio Class D amplifier.

  Description:
    This function configures the Audio Class D amplifier.

  Precondition:
    None.

  Parameters:
    None.
 
  Returns:
    None.

  Example:
    <code>
    CLASSD_Initialize();
    </code>

  Remarks:
    None.
*/
void CLASSD_Initialize(void);


// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility
    }
#endif
// DOM-IGNORE-END

#endif // PLIB_CLASSD_H
