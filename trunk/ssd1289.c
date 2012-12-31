/******************************************************************************/
/* Files to Include                                                           */
/******************************************************************************/

#include <stdlib.h>
#include <plib.h>            /* Include to use PIC32 peripheral libraries     */
#include <stdint.h>          /* For uint32_t definition                       */
#include <stdbool.h>         /* For true/false definition                     */
#include "ssd1289.h"
#include "system.h"
#include "fonts.h"

#define TFT_RST LATGbits.LATG15 

extern unsigned int Ticks;
/*
// PMP defines
#define PMP_EXT_ADDR		0x8000		// the external memory device address


#define PMP_CONTROL	(PMP_ON | PMP_MUX_OFF | PMP_READ_WRITE_EN |\
             		PMP_CS2_EN | PMP_CS2_POL_LO | PMP_WRITE_POL_LO | PMP_READ_POL_LO)

#define PMP_MODE        (PMP_IRQ_READ_WRITE | PMP_AUTO_ADDR_INC | PMP_DATA_BUS_16 | PMP_MODE_MASTER2 |\
                     PMP_WAIT_BEG_3 | PMP_WAIT_MID_7 | PMP_WAIT_END_3 )


#define	PMP_PORT_PINS	PMP_PEN_ALL

#define	PMP_INTERRUPT	PMP_INT_OFF
*/

UINT16 colours[] = {
                        0xFFFF, //white
                        0x0000, //black
                        0xF7DE, //grey
                        0x001F, //blue
                        0x051F, //blue2
                        0xF800, //red
                        0xF81F, //magenta
                        0x07E0, //green
                        0x7FFF, //cyan
                        0xFFE0  //yellow
                        };




void delay_1us( int delay )
{
	// note that 1 core tick = 2 SYS cycles (this is fixed)
	int us_ticks = ( GetSystemClock()/1000000 ) / 2;
	WriteCoreTimer( 0 );
	while( ReadCoreTimer() < delay *us_ticks);// 
} // END delay_us()



// this function sets the PMP as mode 2, 16bit, PMCS2 = CS, PMCS1 = RS
void SSD1289_PMP_init(void)
{
	// setup the PMP
	//mPMPOpen(PMP_CONTROL, PMP_MODE,PMP_PORT_PINS ,PMP_INTERRUPT);

    delay_1us(30000);

    IEC1CLR 	= 0x0004;   // Disable PMP interrupt
    PMCON 	= 0x0000;   // Stop PMP module and clear control register
    PMCONSET	= 0x0340;   // Configure the addressing and polarities
    PMMODE 	= 0x0600;   // Configure the mode
    PMAEN 	= 0xC000;   // Enable all address and Chip Select lines
    PMCONSET 	= 0x8000;   // Enable the PMP module

    delay_1us(50000);
}


void SSD1289_sendCommand( UINT16 command )
{
    PMPSetAddress( SSD1289_COMMAND_ADDRESS );
    PMPMasterWrite( command );

}

void SSD1289_sendData( UINT16 data )
{
    PMPSetAddress( SSD1289_DATA_ADDRESS );
    PMPMasterWrite( data );

}

void SSD1289_writeResgiter( UINT16 reg, UINT16 data ){
    
    SSD1289_sendCommand( reg );
    SSD1289_sendData( data );
}


void SSD1289_on(void)
{

	// IK: Added display reset pin on RG15
	TFT_RST = 1;
	delay_1us(5000);
	TFT_RST = 0;
	delay_1us(15000);
	TFT_RST = 1;
	delay_1us(15000);

    // set R07h at 0021h
    SSD1289_writeResgiter( 0x0007, 0x0021 );
    
    // set R00h at 0001h
    SSD1289_writeResgiter( 0x0000, 0x0001 );
    
    // set R07h at 0023h
    SSD1289_writeResgiter( 0x0007, 0x0023 );
    
    // set R10h at 0000h = exit sleep mode
    SSD1289_writeResgiter( 0x0010, 0x0000 );

    // wait 30ms
    delay_1us(30000);

    // set R07h at 0033h
    SSD1289_writeResgiter( 0x0007, 0x0033 );

    // entry mode setting
    // set R11h at
    SSD1289_writeResgiter( 0x0011, 0x6830 );

    // LCD drive AC setting
    // set R02h at
    SSD1289_writeResgiter( 0x0002, 0x1000 );

    //Driver Output Control (R01h) (POR = [0XXXX0X1]3Fh)
    SSD1289_writeResgiter( 0x0001,0x2B3F  );

    //Frame Cycle Control (R0Bh) (POR = 5308h)
    SSD1289_writeResgiter( 0x000B, 0x5308 );

    //Setting R28h as 0x0006 is required before
    //setting R25h and R29h registers.
    SSD1289_writeResgiter( 0x0028, 0x0006 );

    //Frame Frequency Control (R25h) (POR = 8000h)
    SSD1289_writeResgiter( 0x0025, 0xE000 );

    //set the RAM register for writing
    SSD1289_sendCommand(0x0022); 
    
    // display ON, start to write RAM

}


void SSD1289_off(void)
{
	//I will write this function when I have time
}

void SSD1289_clearWith( UINT16 colour ){
    int i,j;
    for(i=0;i<320;i++){
        for (j=0;j<240;j++)
            SSD1289_sendData(colour);
    }
    
}


void SSD1289_setAC( UINT16 x, UINT16 y ){

    if ( x < 0 )    x = 0;
    if ( x > 239 )  x = 239;
    if ( y < 0 )    y = 0;
    if ( y > 319 )  y = 319;
    
    SSD1289_writeResgiter( 0x004E, x );
    SSD1289_writeResgiter( 0x004F, y );
    SSD1289_sendCommand(0x0022); //set the RAM register for writing
}


void SSD1289_setArea(UINT16 x, UINT16 y, UINT16 dx, UINT16 dy) {
    
	SSD1289_writeResgiter( 0x0044, (dx << 8) + x );
	SSD1289_writeResgiter( 0x0045, y );
	SSD1289_writeResgiter( 0x0046, dy );	
	
	SSD1289_writeResgiter( 0x004E, x );
    SSD1289_writeResgiter( 0x004F, y );
    
	SSD1289_sendCommand(0x0022); //set the RAM register for writing
}


void SSD1289_drawPixel( UINT16 x, UINT16 y, UINT16 colour ){

    SSD1289_setAC( x, y );
    SSD1289_sendData(colour);
}

void SSD1289_drawArea( UINT16 x, UINT16 y, UINT16 dx, UINT16 dy, UINT16 *pict) {

	unsigned int w,h; // Width + height
	SSD1289_setArea (x, y, x + dx - 1, y + dy - 1);
	
    for(h = y; h < (y + dy); h++ ) {
        for(w = x; w < (x + dx); w++ ) {
            SSD1289_sendData(*pict++);
        }
    }	

} 

void SSD1289_box( UINT16 x, UINT16 y, UINT16 dx, UINT16 dy, UINT16 color) {

	unsigned int w,h; // Width + height
	SSD1289_setArea (x, y, x + dx - 1, y + dy - 1);
	
    for(h = y; h < (y + dy); h++ ) {
        for(w = x; w < (x + dx); w++ ) {
            SSD1289_sendData(color);
        }
    }	

} 


void SSD1289_testColours( void ){
    int i;
    for (i=0;i<10;i++){
            SSD1289_clearWith( colours[i] );
            delay_1us(500000);
        }
}

void SSD1289_testPixels( void ){

    int i,j;

    for(i=0;i<320;i++){
        for (j=0;j<240;j++)
        SSD1289_drawPixel(  j,  i, Green );
        delay_1us(5000);
    }
/*
     for(i=319;i>=0;i--){
        for (j=239;j>=0;j--)
        SSD1289_drawPixel(  j,  i, Yellow );
        delay_1us(5000);
    }

     for(i=0;i<320;i++){
        for (j=0;j<240;j++)
        SSD1289_drawPixel(  j,  i, Blue );
        delay_1us(5000);
    }

    for(i=319;i>=0;i--){
        for (j=239;j>=0;j--)
        SSD1289_drawPixel(  j,  i, Green );
        delay_1us(5000);
    }

     for(i=0;i<320;i++){
        for (j=0;j<240;j++)
        SSD1289_drawPixel(  j,  i, White );
        delay_1us(5000);
    }

     for(i=319;i>=0;i--){
        for (j=239;j>=0;j--)
        SSD1289_drawPixel(  j,  i, Black );
        delay_1us(5000);
    }

     for(i=0;i<320;i++){
        for (j=0;j<240;j++)
        SSD1289_drawPixel(  j,  i, Magenta );
        delay_1us(5000);
    }

     for(i=319;i>=0;i--){
        for (j=239;j>=0;j--)
        SSD1289_drawPixel(  j,  i, Cyan );
        delay_1us(5000);
    }

    for(i=0;i<320;i++){
        for (j=0;j<240;j++)
        SSD1289_drawPixel(  j,  i, Grey );
        delay_1us(5000);
    }

     for(i=319;i>=0;i--){
        for (j=239;j>=0;j--)
        SSD1289_drawPixel(  j,  i, Blue2 );
        delay_1us(5000);
    }

*/
}
/*
void SSD1289_setupDMA (const unsigned int *pict) { 
	// Open the desired DMA channel. We use priority 0.
	DmaChnOpen(dmaChn, 0, DMA_OPEN_DEFAULT);

	// set the transfer event control: what event is to start the DMA transfer
	DmaChnSetEventControl(dmaChn, DMA_EV_START_IRQ(_PMP_IRQ));


	// set the transfer parameters: source & destination address, source & destination size, number of bytes per event
	DmaChnSetTxfer(dmaChn, pict, (void*)&PMDIN, sizeof(pict), 2, 2);


	// once we configured the DMA channel we can enable it
	// now it's ready and waiting for an event to occur...
	DmaChnEnable(dmaChn);

}
*/

/*
//void Emulate() {
//	Ticks++;
//}
*/

void SSD1289_drawAreaDMA ( UINT16 x, UINT16 y, UINT16 dx, UINT16 dy, UINT16 *pict) {
	
	int	dmaChn=0;		// the DMA channel to use
	//UINT16 BackgroundColor = Black;
    static UINT16 LCD_buffer[2048];
	unsigned int i;

	SSD1289_setArea (x, y, x + dx - 1, y + dy - 1);

	// setup the external memory device address
	PMPSetAddress( SSD1289_DATA_ADDRESS );

	// Open the desired DMA channel. We use priority 0.
	DmaChnOpen(dmaChn, 0, DMA_OPEN_DEFAULT);

	// Clear all events
	DmaChnClrEvFlags(dmaChn, DMA_EV_ALL_EVNTS);

	// set the transfer event control: what event is to start the DMA transfer
	DmaChnSetEventControl(dmaChn, DMA_EV_START_IRQ(_TIMER_2_IRQ));

	// set the transfer parameters: source & destination address, source & destination size, number of bytes per event
	DmaChnSetTxfer(dmaChn, (void*)&pict[0], (void*)&PMDIN, 4096, 2, 2);

 	// once we configured the DMA channel we can enable it
	// now it's ready and waiting for an event to occur...
	DmaChnEnable(dmaChn);

	// force the first transfer, the PMP is quiet
	//DmaChnForceTxfer(dmaChn);
	
	//delay_1us(10000);
	
	//Ticks = DmaChnGetEvFlags(dmaChn);
	// wait for the transfer to be completed
	while(!(DmaChnGetEvFlags(dmaChn)&DMA_EV_BLOCK_DONE))
	{
		// do some other useful work
//		Ticks++;
		Emulate();
		
	}

	DmaChnDisable(dmaChn);
} 


void SSD1289_char(char C,unsigned int x,unsigned int y, unsigned int DimFont,unsigned int Fcolor,unsigned int Bcolor)
{
//const char *ptrFont;
//const char *ptrFont;
//unsigned int Cptrfont;
unsigned char font8x8[8];
unsigned char font16x16[16];
unsigned char k,i,print1,print2;
unsigned int print3,print4;

if(DimFont == 8)
{
//     ptrFont = &Font_8x8;
//     Cptrfont = (C-32)*8;
//     ptrFont = ptrFont + Cptrfont;
    
     for(k = 0; k <= 7; k++)
     {
//      font8x8[k] = *ptrFont;
//      ptrFont++;
        font8x8[k] = Font_8x8[8*(C-32)+k];
     }
     
     //TFT_CS = 0;
     SSD1289_setArea(x,y,x+7,y+7);
     for(i = 0; i <= 7; i++)
     {
       for(k = 0; k <= 7; k++)
       {
          print1 = (font8x8[i] & 0x80);
          print2 = print1 >>7;
          if(print2 == 1)
          {
             SSD1289_sendData(Fcolor);
          }
          else
          {
             SSD1289_sendData(Bcolor);
          }
          font8x8[i] = font8x8[i] << 1;
       }
     }
     //TFT_CS = 1;
}

else if(DimFont == 16)
{
     for(k = 0; k <= 15; k++)
     {
        font16x16[k] = Font_16x16[32*(C-32)+k];
        font16x16[k] = (font16x16[k] << 8);
        font16x16[k] = font16x16[k] + Font_16x16[32*(C-32)+k+1];       
     }

     //TFT_CS = 0;
     SSD1289_setArea(x,y,x+15,y+15);
     for(i = 0; i <= 15; i++)
     {
       for(k = 0; k <= 15; k++)
       {
        print3 = (font16x16[i] & 0x8000);
        print4 = print3 >>15;

        if(print4 == 1)
        {
           SSD1289_sendData(Fcolor);
        }
        else
        {
           SSD1289_sendData(Bcolor);
        }

        font16x16[i] = font16x16[i] << 1;
       }
     }
     //TFT_CS = 1;
}

}


void SSD1289_text(char *S,unsigned int x,unsigned int y,char DimFont,unsigned int Fcolor,unsigned int Bcolor)
{
  int lenght,cnt;
  char buffer[24];
  lenght = strlen(S);

  for(cnt = 0; cnt <= (lenght - 1); cnt++)
  {
    buffer[cnt] = S[cnt];
  }

  if(DimFont == 8)
  {
      for(cnt = 0; cnt <= (lenght - 1); cnt++)
      {
        SSD1289_char(buffer[cnt],x,y,DimFont,Fcolor,Bcolor);
        x = x + 8;
      }
  }
  else if(DimFont == 16)
  {
      for(cnt = 0; cnt <= (lenght - 1); cnt++)
      {
        SSD1289_char(buffer[cnt],x,y,DimFont,Fcolor,Bcolor);
        x = x + 16;
      }
  }
}


