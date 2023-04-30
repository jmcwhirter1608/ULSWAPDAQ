/* ============================================================================*/
/**
 * @file main.c
 * @author John McWhirter
 * @date 11/2022
 * @brief main file for Data Acquisition Unit
 * 
*/
/* ============================================================================*/
/*! \mainpage Ultra Low Size Weight and Power Data Acquisition
 * 
 * \section Introduction
 * The following page will be a useful guide in navigating the comments and code
 *  of this project. The main function of the PIC32 programmed with this code is 
 *  to adjust the gains of each of the PGAs, Read and Write SPI messages to the 
 *  LTC2373 for data acquisition, and output the message onto UART. 
 * 
 * \section Gain Configuration Table
 * | config #| Gain dB | Gain V/V |
 * |---------|---------|----------|
 * |   0     |   -22   |   0.08   |
 * |   1     |   -16   |   0.16   |
 * |   2     |   -10   |   0.32   |
 * |   3     |    -4   |   0.63   |
 * |   4     |     2   |   1.26   |
 * |   5     |     8   |   2.52   |
 * |   6     |    14   |   5.01   |
 * |   7     |    20   |   10.0   |
 *   
 * \section Navigation
 * The Table of Contents to the Left will be the main tool for guiding through
 * this documentation. Notice the Files tab. The main.c file can be found in
 * Files > File List > firmware > src. In addition, here you will find most of 
 * the code I have written. In the config folder, you will find the MPLAB X IDE
 * Harmony v3 generated Modules for SPI, UART, GPIO, etc. 
*/
// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <stdio.h>
#include "definitions.h"                // SYS function prototypes
#include <string.h>
#include <pgaConfigure.h>


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

/**
 * These are defined to shutdown PGAs in use
 * True for Shutdown, False for On
 */
uint8_t A_shdn = 0;
uint8_t B_shdn = 1;
uint8_t C_shdn = 1;
uint8_t D_shdn = 1;


/*! 
 */

/**
 * PGA Configuration Members
 */
uint8_t A_config = 0;
uint8_t B_config = 0;
uint8_t C_config = 0;
uint8_t D_config = 0;

/**
 * Configuration word is used to switch the mux within the ADC
 * The word will work as our "State" machine
 * Note: It is not what is sent to the ADC. It is 4 bits in the word that will
 * be sent.
 */

/**
 * \section Global Variables used through the device
 * @return
 */
uint8_t reset_word = 0;

/**
 * \section Interrupt for Sampling Frequency 
 * @return
 */
bool tmr2_alarm = false;
void TMR2_InterruptRoutine(uint32_t status, uintptr_t context){
    tmr2_alarm = true;
    TMR2_Stop();
}


int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    /* Initialize TMR2 Callback Register for 10kHz Frequency*/
    TMR2_CallbackRegister(TMR2_InterruptRoutine, (uintptr_t) NULL);
    
//    UART1_WriteCallbackRegister(UART1_InterruptRoutine, (uintptr_t) NULL);
    
    /* Configure PGAs refer to PGA datasheet for combinations */
    configureA(A_config, A_shdn);
    configureB(B_config, B_shdn);
    configureC(C_config, C_shdn);
    configureD(D_config, D_shdn);
    
    /**
     * \section Reset the ADC
     * @return 
     */
    RESET_Set();
    for(int i = 0; i < 100; i++);
    RESET_Clear();
    RDL_Set();
    
    uint32_t nBytesCursor = 0;
    
    
    
    /**
    * \section Possible Configuration Word Table
    * | channel |  BINARY  | INTEGER  |
    * |---------|----------|----------|
    * |   A     | X0000100 |      4   |
    * |   B     | X0001100 |     12   |
    * |   C     | X0010100 |     20   |
    * |   D     | x0111100 |     60   |
    * @return 
    */
    int config_words[4] = {4 << 8, 12 << 8, 20 << 8, 60 << 8};
    uint16_t curr_channel = config_words[0];    
    
    typedef enum{
                A,
                B,
                C,
                D,
                END_OF_LIST
    } CHANNEL; // 4 channels for the 4 different sensors
    CHANNEL CURR_CHANNEL = A;
      
    
    typedef enum{
                        START,
                        CONVERSION,
                        WRSPI_STATE,
                        WAIT_SPI,
                        BUSY_STATE,
                        END
    }STATE;
       
    STATE CURR_STATE = START;
    STATE NEXT_STATE = START;
    
    uint16_t spi_data; 
    uint8_t txBuffer[21];
    
    while(true){
        
        switch(CURR_STATE){
            case START:
                curr_channel = config_words[CURR_CHANNEL];
                if(nBytesCursor >= sizeof(txBuffer)){
                    UART1_Write(txBuffer, sizeof(txBuffer));
                    nBytesCursor = 0;
                }
                TMR2_Start();
                CNV_Set();
                NEXT_STATE = CONVERSION;
                break;
            
            case CONVERSION:
                CNV_Clear();
                RDL_Clear();
                NEXT_STATE = BUSY_STATE;
                break;
                            
            case WRSPI_STATE:
                SPI1_WriteRead(&curr_channel, 2, &spi_data, 2);
                while(SPI1_IsBusy());
                NEXT_STATE = WAIT_SPI;
                break;
                
            case BUSY_STATE:
                if(BUSY_Get() == false){
                    NEXT_STATE = WRSPI_STATE;
                }
                else{
                    NEXT_STATE = BUSY_STATE;
                }   
                break;
                
            case WAIT_SPI:
                if(SPI1_IsBusy() == false){
                    if(CURR_CHANNEL != 0){ // (float)(spi_data & 0x0000FF00 >> 8) FOR CONFIGURATION WORD (spi_data & 0xFFFF0000 >> 16) / 65536.0 * 4.096 FOR DATA
                        nBytesCursor += sprintf((char*)&txBuffer[nBytesCursor], "%0.2f,", spi_data / 65536.0 * 4.096);
                    }
                    else{
                        nBytesCursor += sprintf((char*)&txBuffer[nBytesCursor], "%0.2f\r\n", spi_data / 65536.0 * 4.096);
                    }
                    NEXT_STATE = END;
                }
                else{
                    NEXT_STATE = WAIT_SPI;
                }
                break;
                
            case END:
                RDL_Set();
                if(tmr2_alarm){
                    NEXT_STATE = START;
                    CURR_CHANNEL = CURR_CHANNEL + 1;
                    if(CURR_CHANNEL == END_OF_LIST){
                        CURR_CHANNEL = A;
                    }
                    
                }
                else{
                    NEXT_STATE = END;
                }
                break;
                
        }
        
        CURR_STATE = NEXT_STATE; 
    }
    //
    
    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/
