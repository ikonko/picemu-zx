# picemu-zx
Automatically exported from code.google.com/p/picemu-zx


# PIC32 Emulator of Sinclair ZX Spectrum

Microchip PIC32 Emulator System aimed at emulation of retro Z80 microcomputer systems as Sinclair ZX Spectrum. It can emulate various platforms like older Sinclair machines (ZX80/ZX81) or generic CP/M machine based on i8080 or Z80 CPU. Core is based on Udo Munk Z80 Simulator http://www.autometer.de/unix4fun/z80pack/index.html and its enhancements/modifications by Jaromir Sukuba http://jaromir.xf.cz/cpm/cpm_intro.html.

The main components are: 
* PIC32MX795F512L in 100pin package 
* 3.2" TFT LCD module wih SSD1289 controller and SD-Card slot
* standard ZX layout keyboard with 40 keys


Aim of this project is to build handheld device capable of emulation several retro platforms like e.g. Sinclair ZX Spectrum, Apple I or generic CP/M machine

## Introduction
Because we love retro-computing we decided to build our personalized, brand new and exciting gadget that can combine portability, instant power-on, multi platform plus other interesting features not available in others. This emulator is based on powerful and reliable MIPS PIC32 architecture and features minimalistic hardware design counting just couple active parts. The project started in 2nd half of 2012 with initial release.

## Details
Main features distinguishing this gadget to countless number of similar devices available are: 
* All-in-one device. You have everything ready in one box at your fingertip. Similar devices need external display (VGA/TV), power adapter and keyboard to be plugged in. Avoid annoying cables and "house equipment collection tour" before you play your favorite Manic Miner 
* Instant power-on. You press the power switch and ZX Spectrum is ready to accept your command or select a game you want to play out of dozen thousands of titles available on WoS (World Of Spectrum) 
* Handheld. The size of this gadget is very compact and tiny. It's also equipped with battery which makes it ideal for coding basic or play games when traveling

## Technical specification
Main parts of the emulator: 
* PIC32MX795F512L - single chip MIPS 32bit microcontroller with 512K flash memory and 128K RAM 
* Touchscreen TFT LCD 3.2" 320x240 px, SSD1289 Controller 
* 40+ key board with classic ZX layout

## Schematic
Ugly hand painted schematics of prototype of emulator on which I develop current code:
