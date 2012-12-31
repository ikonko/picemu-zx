/*
 * Z80SIM  -  a	Z80-CPU	simulator
 *
 * Copyright (C) 1987-92 by Udo Munk
 *
 * This modul of the simulator contains a simple terminal I/O
 * simulation as an example. It is released to the public domain
 * and may be modified by user.
 *
 * History:
 * 28-SEP-87 Development on TARGON/35 with AT&T Unix System V.3
 * 11-JAN-89 Release 1.1
 * 08-FEB-89 Release 1.2
 * 13-MAR-89 Release 1.3
 * 09-FEB-90 Release 1.4 Ported to TARGON/31 M10/30
 * 20-DEC-90 Release 1.5 Ported to COHERENT 3.0
 * 10-JUN-92 Release 1.6 long casting problem solved with COHERENT 3.2
 *			 and some optimization
 * 25-JUN-92 Release 1.7 comments in english
 */

/*
 *	Sample I/O-handler
 *
 *	Port 0 input:	reads the next byte from stdin
 *	Port 0 output:	writes the byte to stdout
 *
 *	All the other ports are connected to a I/O-trap handler,
 *	I/O to this ports stops the simulation with an I/O error.
 */
#include <plib.h>
#include <stdio.h>
#include "sim.h"
#include "simglb.h"
#include "hw.h"
//#include <

extern unsigned int PFin;
extern unsigned char border;
extern unsigned int bchange;

/*
 *	This function is to initiate the I/O devices.
 *	It will be called from the CPU simulation before
 *	any operation with the Z80 is possible.
 *
 *	In this sample I/O simulation we initialize all
 *	unused port with an error trap handler, so that
 *	simulation stops at I/O on the unused ports.
 */
void init_io()
{

}

/*
 *	This function is to stop the I/O devices. It is
 *	called from the CPU simulation on exit.
 *
 */
void exit_io()
{
}

BYTE readkbd(adr) {
	BYTE row,col;
	WORD PortD, PortF;

	row = (adr >> 8) & 0xFF;
	PortD = (row & 0x0F) | ((row & 0x30) << 4) | ((row & 0xC0) << 8);
	LATD = PortD;

	PortF = PORTF;
	PFin = PortF & 0x3038;
	col = ((PortF & 0x38) >> 3) | ((PortF & 0x3000) >> 9) ;
	//if (row == 0xFD) col = 0x1D;
	return col;
}

/*
 *	This is the main handler for all IN op-codes,
 *	called by the simulator. It calls the input
 *	function for port adr.
 */
BYTE io_in(adr)
WORD adr;
{
unsigned char test,test2;

if ((adr & 0xFF) == 0xFE) {

	return readkbd(adr);
}
if (adr==0x01)	
	{								//const
//	return rx_sta();
	}
if (adr==0x02)						//conin
	{
//	while (rx_sta()==0x00);
//	return rx_read();
	}
if (adr==0x07)
	{
//	return read_disk_byte();
	}

if (adr==0x0A)						//reader device
	{
//	while (rx_sta()==0x00);
//	return rx_read();
	}

if (adr==0x68)
	{
//	return rxm_read();
	}
if (adr==0x6D)
	{
//	test=0x20;
//	if (rxm_sta()==0xFF) test = test|0x01;
//	return test;
	}


}

/*
 *	This is the main handler for all OUT op-codes,
 *	called by the simulator. It calls the output
 *	function for port adr.
 */
BYTE io_out(adr, data)
BYTE adr, data;
{
unsigned char test;

if (adr==0xFE) {
	border = (data & 0x07);
	bchange = 1;

        if ((data & 0x10) == 0)
            { LATGbits.LATG12 = 0; }
        else
            { LATGbits.LATG12 = 1; }

}
if (adr==0x03)						//concout device
	{
//	tx_write(data);
	}
if (adr==0x04)
	{
//	set_drive(data);
	}
if (adr==0x05)
	{
//	set_track(data);
	}
if (adr==0x06)
	{
//	set_sector(data);
	}
if (adr==0x08)
	{
//	write_disk_byte(data);
	}
if (adr==0x09)					//punch device
	{
//	tx_write(data);
	}
if (adr==0x0B)					//list device
	{
//	tx_write(data);
	}
if (adr==0x68)
	{
//	txm_write(data);
	}
	
if (adr==0xFF)
	{
//	reload_cpm_warm();
	}
}

/*
 *	I/O trap funtion
 *	This function should be added into all unused
 *	entrys of the port array. It stops the emulation
 *	with an I/O error.
 */
static BYTE io_trap()
{
	cpu_error = IOTRAP;
	cpu_state = STOPPED;
	return((BYTE) 0);
}

