/***************************
VIDEO
***************************/

// Display Control Register
#define REG_DISPCTL *(unsigned short *)0x4000000

typedef unsigned short u16;

// Game Modes
#define MODE0 0
#define MODE3 3
#define MODE4 4

// Background Enabling
#define BG0_ENABLE (1 << 8)
#define BG1_ENABLE (1 << 9)
#define BG2_ENABLE (1 << 10)
#define BG3_ENABLE (1 << 11)

// Background Control Registers
#define REG_BG0CNT *(volatile unsigned short *)0x4000008
#define REG_BG1CNT *(volatile unsigned short *)0x400000A
#define REG_BG2CNT *(volatile unsigned short *)0x400000C
#define REG_BG3CNT *(volatile unsigned short *)0x400000E

// Color Palette
#define PALETTE (unsigned short *)0x5000000

// Back Videobuffer for MODE4
#define BACKBUFFER (1 << 4)

// Used in waitForVblank()
#define SCANLINECOUNTER *(volatile unsigned short *)0x4000006

#define RGB(r, g, b) ((r) | (g << 5) | (b << 10))
#define RED RGB(31, 0, 0)
#define BLACK 0
#define SCREENWIDTH 240
#define OFFSET(row, col, rowLen) ((row) * (rowLen) + (col))

// Videobuffer Pointers
extern unsigned short *videoBuffer;
extern unsigned short *frontBuffer;
extern unsigned short *backBuffer;

/***************************
SCREEN DRAWING
***************************/

// MODE3 Drawing
void setPixel3(int row, int col, unsigned short color);
void drawRect3(int row, int col, int height, int width, unsigned short color);
void fillScreen3(unsigned short color);
void drawImage3(const unsigned short* image, int row, int col, int height, int width);

// MODE4 Drawing
void setPixel4(int row, int col, unsigned char colorIndex);
void drawRect4(int row, int col, int height, int width, unsigned char colorIndex);
void fillScreen4(unsigned char color);
void drawBackgroundImage4(const unsigned short* image);
void drawImage4(const unsigned short* image, int row, int col, int height, int width);

// Load Palette Function
void loadPalette(const unsigned short *palette);

// Load Sprite Palette 
void loadSpritePalette(const unsigned short *palette);

// Video Drawing Functions
void waitForVblank();
void flipPage();

/***************************
BUTTON INPUT
***************************/

// Buttons
#define BUTTON_A		(1<<0)
#define BUTTON_B		(1<<1)
#define BUTTON_SELECT	(1<<2)
#define BUTTON_START	(1<<3)
#define BUTTON_RIGHT	(1<<4)
#define BUTTON_LEFT		(1<<5)
#define BUTTON_UP		(1<<6)
#define BUTTON_DOWN		(1<<7)
#define BUTTON_R		(1<<8)
#define BUTTON_L		(1<<9)

// Button Variables
extern unsigned int oldButtons;
extern unsigned int buttons;

// Button Macros
#define BUTTONS *(volatile unsigned int *)0x04000130
#define BUTTON_HELD(key)  (~(BUTTONS) & (key))
#define BUTTON_PRESSED(key) (!(~(oldButtons)&(key)) && (~buttons & (key)))

/***************************
DMA
***************************/

// DMA Draw
void DMANow(int channel, volatile const void* source, volatile void* destination, unsigned int control);

// DMA Controller Register Channel 3
#define REG_DMA3SAD *(volatile unsigned int *)0x40000D4
#define REG_DMA3DAD *(volatile unsigned int *)0x40000D8
#define REG_DMA3CNT *(volatile unsigned int *)0x40000DC

typedef volatile struct {
        volatile const void *src;
        volatile void *dst;
        volatile unsigned int cnt;
} DMA;

extern DMA *dma;

// DMA Controls
#define DMA_DESTINATION_INCREMENT (0 << 21)
#define DMA_DESTINATION_DECREMENT (1 << 21)
#define DMA_DESTINATION_FIXED (2 << 21)
#define DMA_DESTINATION_RESET (3 << 21)

#define DMA_SOURCE_INCREMENT (0 << 23)
#define DMA_SOURCE_DECREMENT (1 << 23)
#define DMA_SOURCE_FIXED (2 << 23)

#define DMA_REPEAT (1 << 25)

#define DMA_16 (0 << 26)
#define DMA_32 (1 << 26)

#define DMA_NOW (0 << 28)
#define DMA_AT_VBLANK (1 << 28)
#define DMA_AT_HBLANK (2 << 28)
#define DMA_AT_REFRESH (3 << 28)

#define DMA_IRQ (1 << 30)
#define DMA_ON (1 << 31)

/***************************
TIMERS
***************************/

// Controllers
#define REG_TM0CNT *(volatile unsigned short *)0x4000102
#define REG_TM1CNT *(volatile unsigned short *)0x4000106
#define REG_TM2CNT *(volatile unsigned short *)0x400010A
#define REG_TM3CNT *(volatile unsigned short *)0x400010E

// Timer Values
#define REG_TM0D       *(volatile unsigned short *)0x4000100
#define REG_TM1D       *(volatile unsigned short *)0x4000104
#define REG_TM2D       *(volatile unsigned short *)0x4000108
#define REG_TM3D       *(volatile unsigned short *)0x400010C

// Timer Flags
#define TIMER_ON      (1<<7)  
#define TM_IRQ        (1<<6)
#define TM_CASCADE    (1<<2)
#define TM_FREQ_1     0
#define TM_FREQ_64    1
#define TM_FREQ_256   2
#define TM_FREQ_1024  3

/***************************
INTERRUPTS
***************************/

// Controller
#define REG_IME *(unsigned short*)0x4000208 

// Enabler
#define REG_IE *(unsigned short*)0x4000200  

// Flag
#define REG_IF *(volatile unsigned short*)0x4000202

#define REG_INTERRUPT *(unsigned int*)0x3007FFC

// Display Status
#define REG_DISPSTAT *(unsigned short*)0x4000004

// Interrupts Constants
#define INT_VBLANK_ENABLE 1 << 3
#define INT_VBLANK 1 << 0
#define INT_TM1 1<<4
#define INT_BUTTON 1 << 12

/***************************
SOUND
***************************/

#define REG_SOUNDCNT_X *(volatile u16 *)0x04000084
#define REG_SOUNDCNT_L        *(u16*)0x04000080
#define REG_SOUNDCNT_H        *(volatile u16*)0x04000082

// Sound Flags
#define SND_ENABLED           (1<<7)
#define SND_OUTPUT_RATIO_25   0
#define SND_OUTPUT_RATIO_50   (1<<0)
#define SND_OUTPUT_RATIO_100  (1<<1)
#define DSA_OUTPUT_RATIO_50   0
#define DSA_OUTPUT_RATIO_100  (1<<2)
#define DSA_OUTPUT_TO_RIGHT   (1<<8)
#define DSA_OUTPUT_TO_LEFT    (1<<9)
#define DSA_OUTPUT_TO_BOTH    (3<<8)
#define DSA_TIMER0            0
#define DSA_TIMER1            (1<<10)
#define DSA_FIFO_RESET        (1<<11)
#define DSB_OUTPUT_RATIO_50   0
#define DSB_OUTPUT_RATIO_100  (1<<3)
#define DSB_OUTPUT_TO_RIGHT   (1<<12)
#define DSB_OUTPUT_TO_LEFT    (1<<13)
#define DSB_OUTPUT_TO_BOTH    (3<<12)
#define DSB_TIMER0            0
#define DSB_TIMER1            (1<<14)
#define DSB_FIFO_RESET        (1<<15)

#define REG_FIFO_A          0x040000A0
#define REG_FIFO_B          0x040000A4

/***************************
TILES
***************************/

typedef struct {
	unsigned short tileimg[8192];
} charblock;

typedef struct {
	unsigned short tilemap[1024];
} screenblock;

#define CHARBLOCKBASE ((charblock *)0x6000000)
#define SCREENBLOCKBASE ((screenblock *)0x6000000)

// Background Offset Registers
#define REG_BG0HOFS *(volatile unsigned short *)0x04000010
#define REG_BG1HOFS *(volatile unsigned short *)0x04000014
#define REG_BG2HOFS *(volatile unsigned short *)0x04000018
#define REG_BG3HOFS *(volatile unsigned short *)0x0400001C

#define REG_BG0VOFS *(volatile unsigned short *)0x04000012
#define REG_BG1VOFS *(volatile unsigned short *)0x04000016
#define REG_BG2VOFS *(volatile unsigned short *)0x0400001A
#define REG_BG3VOFS *(volatile unsigned short *)0x0400001E

#define SBB(num) num << 8
#define CBB(num) num << 2

#define COLOR256 1 << 7

#define BG_SIZE0 0<<14      // 32 x 32 tiles
#define BG_SIZE1 1<<14      // 64 x 32
#define BG_SIZE2 2<<14      // 32 x 64
#define BG_SIZE3 3<<14      // 64 x 64

/***************************
SPRITES
***************************/

#define SPRITE_MODE_1D (1 << 6) 
#define SPRITE_ENABLE (1 << 12) 

#define ATTR0_REGULAR (0 << 8) //Normal Sprites
#define ATTR0_AFFINE (1 << 8) //Affine Sprites
#define ATTR0_HIDE (2 << 8) // Hide Sprites
#define ATTR0_DOUBLE_AFFINE (3 << 8) //Double Affine Sprites 
#define ATTR0_NORMAL (0 << 10) //Normal Rendering
#define ATTR0_BLEND (1 << 10) //Enables Alpha Blending
#define ATTR0_WIN (2 << 10) //Object Window mod
#define ATTR0_MOSAIC (1 << 12) //Enables the mosaic effect 
#define ATTR0_4BPP (0 << 13) //16 color Sprites
#define ATTR0_8BPP (1 << 13) //256 color Sprites
#define ATTR0_SQUARE (0 << 14) //Square Shape
#define ATTR0_WIDE (1 << 14) // Wide Shape
#define ATTR0_TALL (2 << 14) //Tall Shape

#define ATTR1_HFLIP (1 << 12)
#define ATTR1_VFLIP (1 << 13)
#define ATTR1_SIZE8 (0 << 14)
#define ATTR1_SIZE16 (1 << 14)
#define ATTR1_SIZE32 (2 << 14)
#define ATTR1_SIZE64 (3 << 14)

#define OAM ((OBJ_ATTR*)(0x7000000))
#define SPRITE_PALETTE ((unsigned short*)(0x5000200))

void loadSpritePalette(const unsigned short* palette);

#define SPRITEOFFSET16(r,c) (r)*32+(c)

typedef struct{
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;

typedef struct {
    int row;
    int col;
} Sprite;