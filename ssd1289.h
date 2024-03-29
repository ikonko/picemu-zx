#define SSD1289_COMMAND_ADDRESS         0x8000
#define SSD1289_DATA_ADDRESS            0xC000


//LCD color
#define White            0xFFFF
#define Black            0x0000
#define Grey             0xF7DE
#define Blue             0x001F
#define Blue2            0x051F
#define Red              0xF800
#define Magenta          0xF81F
#define Green            0x07E0
#define Cyan             0x7FFF
#define Yellow           0xFFE0

//---------------------- Graphic LCD size definitions ------------------------
#define LCD_WIDTH       240                  //Screen Width (in pixels)
#define LCD_HEIGHT      320                  //Screen Hight (in pixels)
#define BPP             16                   //Bits per pixel




void delay_1us( int delay );

void SSD1289_PMP_init(void);
void SSD1289_on(void);
void SSD1289_off(void);
void SSD1289_clearWith( UINT16 colour );
void SSD1289_writeResgiter( UINT16 reg, UINT16 data );
void SSD1289_sendCommand( UINT16 command );
void SSD1289_sendData( UINT16 data );
void SSD1289_setAC( UINT16 x, UINT16 y );
void SSD1289_drawPixel( UINT16 x, UINT16 y, UINT16 colour );
void SSD1289_drawArea( UINT16 x, UINT16 y, UINT16 dx, UINT16 dy, UINT16 *pict );
void SSD1289_drawAreaDMA( UINT16 x, UINT16 y, UINT16 dx, UINT16 dy, UINT16 *pict );
void SSD1289_setupDMA (const unsigned int *pict);
void SSD1289_box( UINT16 x, UINT16 y, UINT16 dx, UINT16 dy, UINT16 color);

void SSD1289_testColours( void );
void SSD1289_testPixels( void );