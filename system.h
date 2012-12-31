/******************************************************************************/
/* System Level #define Macros                                                */
/******************************************************************************/


#define	GetSystemClock() 			(80000000ul)
#define	GetPeripheralClock()		(GetSystemClock()/(1 << OSCCONbits.PBDIV))
#define	GetInstructionClock()		(GetSystemClock())


/******************************************************************************/
/* System Function Prototypes                                                 */
/******************************************************************************/

/* Custom oscillator configuration funtions, reset source evaluation
functions, and other non-peripheral microcontroller initialization functions
go here. */
#define TOGGLES_PER_SEC			1000
#define CORE_TICK_RATE	       (GetSystemClock()/2/TOGGLES_PER_SEC)


/*********************************************************************
* IOS FOR THE SD/MMC CARD INTERFACE
*********************************************************************/
/*
#define USE_SD_INTERFACE_WITH_SPI

    // Registers for the SPI module
    #define MDD_USE_SPI_2

	// MDD SPI Configuration
	#define SPI_START_CFG_1     (PRI_PRESCAL_64_1 | SEC_PRESCAL_8_1 | MASTER_ENABLE_ON | SPI_CKE_ON | SPI_SMP_ON)
    #define SPI_START_CFG_2     (SPI_ENABLE)

    // Define the SPI frequency
    #define SPI_FREQUENCY			(20000000)


    // Description: SD-SPI Chip Select Output bit
    #define SD_CS               _LATG9
    // Description: SD-SPI Chip Select TRIS bit
    #define SD_CS_TRIS          _TRISG9

    // Description: SD-SPI Card Detect Input bit
    #define SD_CD               _RA6
    // Description: SD-SPI Card Detect TRIS bit
    #define SD_CD_TRIS          _TRISA6

    // Description: SD-SPI Write Protect Check Input bit
    #define SD_WE               _RA7
    // Description: SD-SPI Write Protect Check TRIS bit
    #define SD_WE_TRIS          _TRISA7

    // Description: The main SPI control register
    #define SPICON1             SPI2CON
    // Description: The SPI status register
    #define SPISTAT             SPI2STAT
    // Description: The SPI Buffer
    #define SPIBUF              SPI2BUF
    // Description: The receive buffer full bit in the SPI status register
    #define SPISTAT_RBF         SPI2STATbits.SPIRBF
    // Description: The bitwise define for the SPI control register (i.e. _____bits)
    #define SPICON1bits         SPI2CONbits
    // Description: The bitwise define for the SPI status register (i.e. _____bits)
    #define SPISTATbits         SPI2STATbits
    // Description: The enable bit for the SPI module
    #define SPIENABLE           SPI2CONbits.ON
    // Description: The definition for the SPI baud rate generator register (PIC32)
    #define SPIBRG			    SPI2BRG

    // Tris pins for SCK/SDI/SDO lines
    // not required for PIC32...
        // Description: The TRIS bit for the SCK pin
        #define SPICLOCK            TRISGbits.TRISG6
        // Description: The TRIS bit for the SDI pin
        #define SPIIN               TRISGbits.TRISG7
        // Description: The TRIS bit for the SDO pin
        #define SPIOUT              TRISGbits.TRISG8

    //SPI library functions
    #define putcSPI             putcSPI2
    #define getcSPI             getcSPI2
    #define OpenSPI(config1, config2)   OpenSPI2(config1, config2)

    // Will generate an error if the clock speed is too low to interface to the card
    #if (GetSystemClock() < 100000)
        #error Clock speed must exceed 100 kHz
    #endif

*/

