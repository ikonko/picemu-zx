#include <plib.h>
//#include <p32xxxx.h>
/*
#pragma config UPLLEN   = OFF        // USB PLL 
#pragma config FPLLMUL  = MUL_20        // PLL Multiplier
#pragma config UPLLIDIV = DIV_3         // USB PLL Input Divider
#pragma config FPLLIDIV = DIV_1         // PLL Input Divider
#pragma config FPLLODIV = DIV_1         // PLL Output Divider
#pragma config FPBDIV   = DIV_1         // Peripheral Clock divisor
#pragma config FWDTEN   = OFF           // Watchdog Timer
#pragma config WDTPS    = PS1           // Watchdog Timer Postscale
#pragma config FCKSM    = CSDCMD        // Clock Switching & Fail Safe Clock Monitor
#pragma config OSCIOFNC = OFF           // CLKO Enable
#pragma config POSCMOD  = XT       // Primary Oscillator
#pragma config IESO     = OFF           // Internal/External Switch-over
#pragma config FSOSCEN  = OFF           // Secondary Oscillator Enable (KLO was off)
#pragma config FNOSC    = PRIPLL        // Oscillator Selection
#pragma config CP       = OFF           // Code Protect
#pragma config BWP      = OFF           // Boot Flash Write Protect
#pragma config PWP      = OFF           // Program Flash Write Protect
#pragma config ICESEL   = ICS_PGx1      // ICE/ICD Comm Channel Select
#pragma config DEBUG    = OFF            // Background Debugger Enable
*/

#include <stdio.h>
#include <ctype.h>
#include <fcntl.h>
#include <sys/appio.h>
#include "sim.h"
#include "simglb.h"
#include "hw.h"
#include "rom48.h"

extern unsigned int Ticks;
unsigned char conin_buffer[30];
unsigned char conin_buffer_pointer;

unsigned char reader_buffer[30];
unsigned char reader_buffer_pointer;

unsigned char flash_buff[4096];
unsigned char disk_temp[128];


extern unsigned char disk_temp[128];
/*
#ifdef	USE_RAM_IMAGE
extern const unsigned char ram_image[65536];
#endif
#ifdef	USE_RAMDISK_IMAGE
extern const unsigned char rom_image[65536];
#endif
unsigned char ram_disk[RAMDISK_SIZE];
//unsigned char __attribute__((section("persist"))) ram_disk[51200];
unsigned int PC_REAL;
unsigned char iobyte;
*/
void Setup(void) {
	unsigned int i;

	for(i=0;i<16384;i++) {
		ram[i] = rom48[i];
		ram[i+16384] = rom48[i];
		
	}
	wrk_ram	= PC = STACK = ram;
	

}

void Emulate(void) {
		cpu_error = NONE;
		cpu();
		Ticks++;
}

int main_cpm(void)
{ 

	volatile unsigned int i;
	unsigned int bkpt1, bkpt2, bkpt3, bkptgt;
	CheKseg0CacheOn();
//	i = SYSTEMConfigPerformance(80000000); 

//	wait_ms(8);
  // 	init_usart();
//	init_spi();
	wrk_ram	= PC = STACK = ram;
/*
#ifdef	USE_RAM_IMAGE	
	for (i=0;i<65536;i++) ram[i] = ram_image[i];
#endif
#ifdef	USE_RAMDISK_IMAGE	
	for (i=0;i<51200;i++) ram_disk[i] = rom_image[i];
#endif
#ifndef	USE_RAMDISK_IMAGE	
	for (i=0;i<51200;i++) ram_disk[i] = 0xE5;
#endif
	bkpt1 = bkpt2 = bkpt3 = bkptgt = 0xFFFE;
	i=0;
	wait_ms(100);
*/
//	CONIO_SWITCH = 1;
//	CONIO_SWITCH_T = 0;
//	conin_buffer_pointer=0;
//	INTConfigureSystem(INT_SYSTEM_CONFIG_MULT_VECTOR);
//	INTEnableInterrupts();
//	fl_rst_pb();

//	conin_buffer_pointer = 0;
//	wait_ms(2000);
//	if (conin_buffer_pointer > 1)
//		CONIO_SWITCH = 1;
//	else CONIO_SWITCH = 0;
//	conin_buffer_pointer = 0;
//	init_first_x_sects(32);


/*
	fl_read_4k(0,flash_buff);
	fl_erase_4k(0);
	fl_write_4k(0,flash_buff);
	fl_read_4k(0,flash_buff);
	fl_erase_4k(4096);
	fl_read_4k(0,flash_buff);
*/

//	fl_read_128(0,disk_temp);
//	fl_write_128(0,disk_temp);
//	fl_read_128(0,disk_temp);



/*
#ifdef	REMOVE_MAINLOOP
	while (1);
#endif

	while (1)
		{
		cpu_error = NONE;
		cpu();
/*
		PC_REAL = PC - ram;
		if ((PC_REAL==bkpt1)|(PC_REAL==bkpt2)|(PC_REAL==bkpt3))
			{
			i++;
			}
		if (PC_REAL>bkptgt)
			{
			i++;
			}

		if (cpu_error == OPHALT)
			{
			LEDG=1;
			LEDR=0;
			while (1);
			}
*/
//		}
}

/*
void reload_cpm_warm (void)
{
unsigned int i;
#ifdef	USE_RAM_IMAGE	
	for (i=0xD400;i<(0xD400+0x1EFF);i++) ram[i] = ram_image[i];
#endif
}
*/

/*
void __ISR(_UART_3A_VECTOR, ipl2) IntUart3AHandler(void) 
{
	unsigned char temp;
	// Is this an RX interrupt?
	if(IFS1bits.U3ARXIF==1)
	{
		// Clear the RX interrupt Flag
		temp = U3ARXREG;
		conin_buffer[conin_buffer_pointer]=temp;
		conin_buffer_pointer++;
	    IFS1bits.U3ARXIF=0;
	}

	if(IFS1bits.U3ATXIF==1)
	{
	    IFS1bits.U3ATXIF=0;
//		LEDR = ~ LEDR;
	} 
}
*/

/*
void __ISR(_UART_2A_VECTOR, ipl4) IntUart2AHandler(void) 
{
	unsigned char temp;
	// Is this an RX interrupt?
	if(IFS1bits.U2ARXIF==1)
	{
		// Clear the RX interrupt Flag
		temp = U2ARXREG;
		conin_buffer[conin_buffer_pointer]=temp;
		conin_buffer_pointer++;
	    IFS1bits.U2ARXIF=0;
	}

	if(IFS1bits.U2ATXIF==1)
	{
	    IFS1bits.U2ATXIF=0;
//		LEDR = ~ LEDR;
	} 
}
*/

/*
void __ISR(_UART_3B_VECTOR, ipl4) IntUart3BHandler(void) 
{
	unsigned char temp;
	// Is this an RX interrupt?
	if(IFS2bits.U3BRXIF==1)
	{
		// Clear the RX interrupt Flag
		temp = U3BRXREG;
		reader_buffer[reader_buffer_pointer]=temp;
		reader_buffer_pointer++;
	    IFS2bits.U3BRXIF=0;
	}

	if(IFS2bits.U3BTXIF==1)
	{
	    IFS2bits.U3BTXIF=0;
//		LEDR = ~ LEDR;
	} 
}
*/
