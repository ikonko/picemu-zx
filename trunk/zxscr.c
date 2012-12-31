#include <stdint.h>         /* For uint32_t definition                        */
#include <stdlib.h>
#include <stdbool.h> 
#include <plib.h>
#include "screens.h"

// color definitions (H = half)
#define    BLACK     0x0000
#define    HBLUE     0x0015
#define    BLUE      0x001F
#define    HRED      0xB800
#define    RED       0xF800
#define    HGREEN    0x05E0
#define    GREEN     0x07E0
#define    HCYAN     0x05F5
#define    CYAN      0x07FF
#define    HMAGENTA  0x8010
#define    MAGENTA   0xB815
#define    HYELLOW   0xC5E0
#define    YELLOW    0xFFE0
#define    HWHITE    0xC5F5
#define    WHITE     0xF7DA

#define    START_X   31
#define    START_Y   23

#define	   	MAX_X	319
#define		MAX_Y	239

extern unsigned char ram[];
extern unsigned int flsh_state;

// Define Spectrum colors
//static const 

uint16_t colors [16] = {
    BLACK,HBLUE,HRED,HMAGENTA,HGREEN,HCYAN,HYELLOW,HWHITE,BLACK,BLUE,RED,MAGENTA,GREEN,CYAN,YELLOW,WHITE
}; 


// Draw one line
void DrawLine(unsigned char l, unsigned char s, unsigned int d) {
// l = line, s = screen
    unsigned int in,pa,x,y,i,j,k,p,m,q,addr;
    unsigned char ink,pap,c,a,fl;

    uint16_t img[2048];
    unsigned char txt[30];

    //for(i=0;i<2048;i++) {
    //    img[i] = colors[l & 0x07];
    //}

    x=START_X;
    y=START_Y + (l*8);

    j = l/8;        // Third
    i = l & 0x07;   // Line in third
    //addr = 0;

    for (p=32;p>0;p--) { // Byte
        //a = screens[6912*s + 6144 + j * 256 + i * 32 + (p-1)];            // Attr byte
		a = ram[16384 + 6912*s + 6144 + j * 256 + i * 32 + (p-1)];            // Attr byte

        ink = a & 0x07;
        pap = ( a >> 3 ) & 0x07;

        if ( (a & 0x40) == 0x40 ) {  // Bright1 - not for black (0)
            ink += 8;
            pap += 8;
        }

        in = colors[ink];
        pa = colors[pap];
		if ((a & 0x80) == 0x80) {
			fl = 1;
		} else {
			fl = 0;
		}
		fl = fl & flsh_state;

        for (k=0;k<8;k++) {      // Microline

            //c = screens[6912*s + j * 2048 + k * 256 + i * 32 + (p-1)];        // Pixel byte
			c = ram[16384 + 6912*s + j * 2048 + k * 256 + i * 32 + (p-1)];        // Pixel byte

            for (q=0;q<8;q++) {                                     // Pixel

                addr = q*8 + (32-p)*64 + k;

                if ( (c & 0x01) == 0x01 ) {
                    img[addr] = fl ? pa : in;
                } else {
                    img[addr] = fl ? in : pa;
                }
                c >>= 1;
            } // end for m

        }
    }
 
    if (d==1) {
		SSD1289_drawAreaDMA(y,x,8,256,img);
	} else {
		SSD1289_drawArea(y,x,8,256,img);
	}
}

// Display screen$ on the TFT line by line 
// Input: s - screen number, d - dma mode: 0/1
void Lscr2lcd(unsigned char s, unsigned int d) {

    unsigned char l;
    for(l=0;l<24;l++) {
        DrawLine(l,s,d);
    }
}




// Show Spectrum screen on the display
unsigned char scr2lcd() {
    unsigned char a,ink,pap,pal;
    uint16_t in=0,pa=7;
    unsigned char c;
    unsigned char std=1;
    unsigned int x,y,i,j,k,l,m,pos;
    
    uint16_t palette64[64];
	unsigned int line[256];
   
    x=START_X;
    y=START_Y;  

    for (j=0;j<3;j++) {              // Screen "third"
        for (i=0;i<8;i++) {          // Line in third
            for (k=0;k<8;k++) {      // Microline
                for (l=32;l>0;l--) { // Byte
                    c = screens[j * 2048 + k * 256 + i * 32 + (l-1)];        // Pixel byte
                    a = screens[6144 + j * 256 + i * 32 + (l-1)];            // Attr byte

                    if (std) {                                              // Handle attributes as ULA
                        ink = a & 0x07;
                        pap = ( a >> 3 ) & 0x07;
                        if ( (a & 0x40) == 0x40 ) {  // Bright1 - not for black (0)
                            ink += 8;
                            pap += 8;
                        }
						in = colors[ink];
						pa = colors[pap];
                    } else {                                                // Otherwise treat as ULA+
                        pal = a >> 6;                                       // Palette suffix
                        ink = a & 0x07;
                        pap = ( a >> 3 ) & 0x07;
                        in = palette64[pal*16+ink];
                        pa = palette64[pal*16+8+pap]; 
                    } // end if

                    for (m=0;m<8;m++) {                                     // Pixel

                        if ( (c & 0x01) == 0x01 ) {
								SSD1289_drawPixel(y,x,in);
                        } else {
                            	SSD1289_drawPixel(y,x,pa);
                        } // end if
                        
                        
                        x++;
                        c >>= 1;
                    } // end for m
	
                }
                y++;
                x=START_X;
            }
        }
    }

    //return(0);
}

void DrawBorder(unsigned char border) {

	uint16_t color;

	color = colors[border];

	SSD1289_box(0,0,START_Y,MAX_X+1,color);	//top
	SSD1289_box(MAX_Y-START_Y-1,0,START_Y+2,MAX_X+1,color); //bottom
	SSD1289_box(START_Y,0,MAX_Y-2*START_Y, START_X,color); 	//right
	SSD1289_box(START_Y,MAX_X-START_X-1,MAX_Y-2*START_Y,START_X+2,color); 	//left
}

void HandleEvent(void) {
	int i;
	for(i=0;i<256;i++) {
		ram[22528+256+i] = manic_attr[i];
	}
}


void ZXChar(char ch, unsigned int x, unsigned int y, unsigned int Font, unsigned char ink, unsigned char pap ) 
{
// Font = rom48[15616]

	unsigned char m,c,n;
	unsigned int in,pa;

	Font = 0;

	in = colors[ink];
	pa = colors[pap];
	
	//x = MAX_X - x;

	for (n=0;n<8;n++) {
		c = ram[(ch-32)*8+15616+n];	// c
		for (m=0;m<8;m++) {                                     // Pixel
			if ( (c & 0x01) == 0x01 ) {
				SSD1289_drawPixel(y,311-x,in);
			} else {
				SSD1289_drawPixel(y,311-x,pa);
			} // end if
                        
			x--;
    		c >>= 1;
    	} // end for m
		y++;
		x+=8;
	}
	
}

void ZXPrint(char *S, unsigned int x, unsigned int y, unsigned int Font, unsigned char ink, unsigned char pap ) 
{

  int lenght,cnt;
  char buffer[40];
  lenght = strlen(S);		
  
  	for(cnt = 0; cnt <= (lenght - 1); cnt++)
  	{
    	buffer[cnt] = S[cnt];
  	}

	for(cnt = 0; cnt <= (lenght - 1); cnt++)
	{
		ZXChar(buffer[cnt],x,y,Font,ink,pap);
		x = x + 8;
	}
}

void zxputc(char c) {

    static int x=0;
    static int y=0;

    if (c < ' ' && c != '\r' && c != '\n' && c != '\t' && c != '\b') return;

    if (c >= ' ' && c < 128) {
          ZXChar(c,x,y,0,0,7);
          x+=8;
    }

    if (c == '\n' || c == '\r') {
        //New line
        x=0;
        y+=8;
//        if(y>239) y=0;
//        return;
    } 

    if (c=='\t') {
        x+=40;
    }

    if (c == '\b') {
        x-=8;
    }

    if (x<0) {
        x=311;
        y-=8;
        if (y<0) y=231;
    }

    if(x>319) {
        x=0;
        y+=8;
    }

    if(y>239) y=0;
}