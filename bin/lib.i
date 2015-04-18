# 1 "lib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "lib.c"
# 1 "lib.h" 1







typedef unsigned short u16;
# 43 "lib.h"
extern unsigned short *videoBuffer;
extern unsigned short *frontBuffer;
extern unsigned short *backBuffer;






void setPixel3(int row, int col, unsigned short color);
void drawRect3(int row, int col, int height, int width, unsigned short color);
void fillScreen3(unsigned short color);
void drawImage3(const unsigned short* image, int row, int col, int height, int width);


void setPixel4(int row, int col, unsigned char colorIndex);
void drawRect4(int row, int col, int height, int width, unsigned char colorIndex);
void fillScreen4(unsigned char color);
void drawBackgroundImage4(const unsigned short* image);
void drawImage4(const unsigned short* image, int row, int col, int height, int width);


void loadPalette(const unsigned short *palette);


void loadSpritePalette(const unsigned short *palette);


void waitForVblank();
void flipPage();
# 91 "lib.h"
extern unsigned int oldButtons;
extern unsigned int buttons;
# 104 "lib.h"
void DMANow(int channel, volatile const void* source, volatile void* destination, unsigned int control);






typedef volatile struct {
        volatile const void *src;
        volatile void *dst;
        volatile unsigned int cnt;
} DMA;

extern DMA *dma;
# 228 "lib.h"
typedef struct {
 unsigned short tileimg[8192];
} charblock;

typedef struct {
 unsigned short tilemap[1024];
} screenblock;
# 291 "lib.h"
void loadSpritePalette(const unsigned short* palette);



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
# 2 "lib.c" 2

unsigned short *videoBuffer = (unsigned short *)0x6000000;

unsigned short *frontBuffer = (unsigned short *)0x6000000;
unsigned short *backBuffer = (unsigned short *)0x600A000;

DMA *dma = (DMA *)0x40000B0;

void setPixel3(int row, int col, unsigned short color) {
 videoBuffer[((row) * (240) + (col))] = color;
}

void drawRect3(int row, int col, int height, int width, unsigned short color) {
 unsigned short c = color;

 int i;
 for(i = 0; i < height; i++) {
  DMANow(3, &c, &videoBuffer[((row+i) * (240) + (col))], (width) | (2 << 23));
 }
}

void drawImage3(const unsigned short* image, int row, int col, int height, int width) {
 int i;
 for(i = 0; i < height; i++) {
  DMANow(3, (unsigned short*)&image[((i) * (width) + (0))], &videoBuffer[((row+i) * (240) + (col))], (width));
 }
}

void fillScreen3(unsigned short color) {
 unsigned short c = color;

 DMANow(3, &c, videoBuffer, (240*160) | (2 << 23));

}

void setPixel4(int row, int col, unsigned char colorIndex) {
 unsigned short pixels = videoBuffer[((row) * (240/2) + (col/2))];

 if(col % 2 == 0) {
  pixels &= 0xFF << 8;
  videoBuffer[((row) * (240/2) + (col/2))] = pixels | colorIndex;
 }
 else {
  pixels &= 0xFF;
  videoBuffer[((row) * (240/2) + (col/2))] = pixels | colorIndex << 8;
 }
}

void drawRect4(int row, int col, int height, int width, unsigned char colorIndex) {
 unsigned short pixels = colorIndex << 8 | colorIndex;

 int r;
 for(r = 0; r < height; r++) {
  if(col % 2 == 0) {
   DMANow(3, &pixels, &videoBuffer[((row + r) * (240/2) + (col/2))], (width/2) | (2 << 23));
   if(width % 2 == 1) {
    setPixel4(row+r, col+width - 1, colorIndex);
   }
  }
  else {
   setPixel4(row+r, col, colorIndex);

   if(width % 2 == 1) {
    DMANow(3, &pixels, &videoBuffer[((row + r) * (240/2) + ((col+1)/2))], (width/2) | (2 << 23));
   }
   else {
    DMANow(3, &pixels, &videoBuffer[((row + r) * (240/2) + ((col+1)/2))], ((width/2)-1) | (2 << 23));
    setPixel4(row+r, col+width - 1, colorIndex);
   }
  }
 }

}

void fillScreen4(unsigned char colorIndex) {
 unsigned short pixels = colorIndex << 8 | colorIndex;
 DMANow(3, &pixels, videoBuffer, ((240 * 160)/2) | (2 << 23));
}

void drawBackgroundImage4(const unsigned short* image) {
 DMANow(3, (unsigned short*)image, videoBuffer, ((240 * 160)/2));
}

void drawImage4(const unsigned short* image, int row, int col, int height, int width) {
 if(col%2) {
  col++;
 }

 int r;
 for(r = 0; r < height; r++) {
  DMANow(3, (unsigned short*)&image[((r) * (width/2) + (0))], &videoBuffer[((row + r) * (240/2) + (col/2))], width/2);
 }
}

void loadPalette(const unsigned short* palette) {
 DMANow(3, (unsigned short*)palette, (unsigned short *)0x5000000, 256);
}

void loadSpritePalette(const unsigned short *palette) {
 DMANow(3, (unsigned short *)palette, ((unsigned short*)(0x5000200)), 256);
}

void DMANow(int channel, volatile const void* source, volatile void* destination, unsigned int control) {
 dma[channel].src = source;
 dma[channel].dst = destination;
 dma[channel].cnt = (1 << 31) | control;
}

void waitForVblank() {
 while(*(volatile unsigned short *)0x4000006 > 160);
 while(*(volatile unsigned short *)0x4000006 < 160);
}

void flipPage() {
    if(*(unsigned short *)0x4000000 & (1 << 4)) {
        *(unsigned short *)0x4000000 &= ~(1 << 4);
        videoBuffer = backBuffer;
    }
    else {
        *(unsigned short *)0x4000000 |= (1 << 4);
        videoBuffer = frontBuffer;
    }
}
