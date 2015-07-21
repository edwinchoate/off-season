# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
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
# 296 "lib.h"
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
# 2 "main.c" 2
# 1 "sprite_actor.h" 1
# 21 "sprite_actor.h"
extern const unsigned short sprite_actorTiles[16384];


extern const unsigned short sprite_actorPal[256];
# 3 "main.c" 2
# 1 "splash_screen.h" 1
# 21 "splash_screen.h"
extern const unsigned short splash_screenBitmap[19200];


extern const unsigned short splash_screenPal[256];
# 4 "main.c" 2
# 1 "instructions.h" 1
# 21 "instructions.h"
extern const unsigned short instructionsBitmap[19200];


extern const unsigned short instructionsPal[256];
# 5 "main.c" 2
# 1 "pause_screen.h" 1
# 22 "pause_screen.h"
extern const unsigned short pause_screenTiles[2336];


extern const unsigned short pause_screenMap[1024];


extern const unsigned short pause_screenPal[256];
# 6 "main.c" 2
# 1 "win_level_screen.h" 1
# 21 "win_level_screen.h"
extern const unsigned short win_level_screenBitmap[19200];


extern const unsigned short win_level_screenPal[256];
# 7 "main.c" 2
# 1 "game_end_screen.h" 1
# 21 "game_end_screen.h"
extern const unsigned short game_end_screenBitmap[19200];


extern const unsigned short game_end_screenPal[256];
# 8 "main.c" 2
# 1 "gameover_screen.h" 1
# 21 "gameover_screen.h"
extern const unsigned short gameover_screenBitmap[19200];


extern const unsigned short gameover_screenPal[256];
# 9 "main.c" 2
# 1 "titleSong.h" 1
# 20 "titleSong.h"
extern const unsigned char titleSong[679760];
# 10 "main.c" 2
# 1 "gameSong.h" 1
# 20 "gameSong.h"
extern const unsigned char gameSong[889378];
# 11 "main.c" 2
# 1 "jumpSound.h" 1
# 20 "jumpSound.h"
extern const unsigned char jumpSound[3118];
# 12 "main.c" 2
# 1 "warpSound.h" 1
# 20 "warpSound.h"
extern const unsigned char warpSound[20244];
# 13 "main.c" 2
# 1 "winLevelSound.h" 1
# 20 "winLevelSound.h"
extern const unsigned char winLevelSound[9156];
# 14 "main.c" 2
# 1 "menuSound.h" 1
# 20 "menuSound.h"
extern const unsigned char menuSound[2102];
# 15 "main.c" 2
# 1 "bg_snow.h" 1
# 22 "bg_snow.h"
extern const unsigned short bg_snowTiles[704];


extern const unsigned short bg_snowMap[1024];


extern const unsigned short bg_snowPal[256];
# 16 "main.c" 2
# 1 "bg_fall.h" 1
# 22 "bg_fall.h"
extern const unsigned short bg_fallTiles[1024];


extern const unsigned short bg_fallMap[1024];


extern const unsigned short bg_fallPal[256];
# 17 "main.c" 2
# 1 "bg_00_neutralscrn.h" 1
# 22 "bg_00_neutralscrn.h"
extern const unsigned short bg_00_neutralscrnTiles[1920];


extern const unsigned short bg_00_neutralscrnMap[2048];


extern const unsigned short bg_00_neutralscrnPal[256];
# 18 "main.c" 2
# 1 "bg_00_springscrn.h" 1
# 22 "bg_00_springscrn.h"
extern const unsigned short bg_00_springscrnTiles[2432];


extern const unsigned short bg_00_springscrnMap[2048];


extern const unsigned short bg_00_springscrnPal[256];
# 19 "main.c" 2
# 1 "bg_00_summerscrn.h" 1
# 22 "bg_00_summerscrn.h"
extern const unsigned short bg_00_summerscrnTiles[1792];


extern const unsigned short bg_00_summerscrnMap[2048];


extern const unsigned short bg_00_summerscrnPal[256];
# 20 "main.c" 2
# 1 "bg_00_fallscrn.h" 1
# 22 "bg_00_fallscrn.h"
extern const unsigned short bg_00_fallscrnTiles[1632];


extern const unsigned short bg_00_fallscrnMap[2048];


extern const unsigned short bg_00_fallscrnPal[256];
# 21 "main.c" 2
# 1 "bg_00_winterscrn.h" 1
# 22 "bg_00_winterscrn.h"
extern const unsigned short bg_00_winterscrnTiles[448];


extern const unsigned short bg_00_winterscrnMap[2048];


extern const unsigned short bg_00_winterscrnPal[256];
# 22 "main.c" 2
# 1 "bg_00_neutralscrn_collision.h" 1
# 20 "bg_00_neutralscrn_collision.h"
extern const unsigned short bg_00_neutralscrn_collisionBitmap[131072];
# 23 "main.c" 2
# 1 "bg_00_springscrn_collision.h" 1
# 20 "bg_00_springscrn_collision.h"
extern const unsigned short bg_00_springscrn_collisionBitmap[131072];
# 24 "main.c" 2
# 1 "bg_00_summerscrn_collision.h" 1
# 20 "bg_00_summerscrn_collision.h"
extern const unsigned short bg_00_summerscrn_collisionBitmap[131072];
# 25 "main.c" 2
# 1 "bg_00_fallscrn_collision.h" 1
# 20 "bg_00_fallscrn_collision.h"
extern const unsigned short bg_00_fallscrn_collisionBitmap[131072];
# 26 "main.c" 2
# 1 "bg_00_winterscrn_collision.h" 1
# 20 "bg_00_winterscrn_collision.h"
extern const unsigned short bg_00_winterscrn_collisionBitmap[131072];
# 27 "main.c" 2
# 1 "bg_02_neutralscrn.h" 1
# 22 "bg_02_neutralscrn.h"
extern const unsigned short bg_02_neutralscrnTiles[320];


extern const unsigned short bg_02_neutralscrnMap[2048];


extern const unsigned short bg_02_neutralscrnPal[256];
# 28 "main.c" 2
# 1 "bg_02_springscrn.h" 1
# 22 "bg_02_springscrn.h"
extern const unsigned short bg_02_springscrnTiles[736];


extern const unsigned short bg_02_springscrnMap[2048];


extern const unsigned short bg_02_springscrnPal[256];
# 29 "main.c" 2
# 1 "bg_02_summerscrn.h" 1
# 22 "bg_02_summerscrn.h"
extern const unsigned short bg_02_summerscrnTiles[480];


extern const unsigned short bg_02_summerscrnMap[2048];


extern const unsigned short bg_02_summerscrnPal[256];
# 30 "main.c" 2
# 1 "bg_02_fallscrn.h" 1
# 22 "bg_02_fallscrn.h"
extern const unsigned short bg_02_fallscrnTiles[480];


extern const unsigned short bg_02_fallscrnMap[2048];


extern const unsigned short bg_02_fallscrnPal[256];
# 31 "main.c" 2
# 1 "bg_02_winterscrn.h" 1
# 22 "bg_02_winterscrn.h"
extern const unsigned short bg_02_winterscrnTiles[352];


extern const unsigned short bg_02_winterscrnMap[2048];


extern const unsigned short bg_02_winterscrnPal[256];
# 32 "main.c" 2
# 1 "bg_02_neutralscrn_collision.h" 1
# 20 "bg_02_neutralscrn_collision.h"
extern const unsigned short bg_02_neutralscrn_collisionBitmap[131072];
# 33 "main.c" 2
# 1 "bg_02_springscrn_collision.h" 1
# 20 "bg_02_springscrn_collision.h"
extern const unsigned short bg_02_springscrn_collisionBitmap[131072];
# 34 "main.c" 2
# 1 "bg_02_summerscrn_collision.h" 1
# 20 "bg_02_summerscrn_collision.h"
extern const unsigned short bg_02_summerscrn_collisionBitmap[131072];
# 35 "main.c" 2
# 1 "bg_02_fallscrn_collision.h" 1
# 20 "bg_02_fallscrn_collision.h"
extern const unsigned short bg_02_fallscrn_collisionBitmap[131072];
# 36 "main.c" 2
# 1 "bg_02_winterscrn_collision.h" 1
# 20 "bg_02_winterscrn_collision.h"
extern const unsigned short bg_02_winterscrn_collisionBitmap[131072];
# 37 "main.c" 2
# 1 "bg_03_neutralscrn.h" 1
# 22 "bg_03_neutralscrn.h"
extern const unsigned short bg_03_neutralscrnTiles[320];


extern const unsigned short bg_03_neutralscrnMap[2048];


extern const unsigned short bg_03_neutralscrnPal[256];
# 38 "main.c" 2
# 1 "bg_03_springscrn.h" 1
# 22 "bg_03_springscrn.h"
extern const unsigned short bg_03_springscrnTiles[608];


extern const unsigned short bg_03_springscrnMap[2048];


extern const unsigned short bg_03_springscrnPal[256];
# 39 "main.c" 2
# 1 "bg_03_summerscrn.h" 1
# 22 "bg_03_summerscrn.h"
extern const unsigned short bg_03_summerscrnTiles[480];


extern const unsigned short bg_03_summerscrnMap[2048];


extern const unsigned short bg_03_summerscrnPal[256];
# 40 "main.c" 2
# 1 "bg_03_fallscrn.h" 1
# 22 "bg_03_fallscrn.h"
extern const unsigned short bg_03_fallscrnTiles[608];


extern const unsigned short bg_03_fallscrnMap[2048];


extern const unsigned short bg_03_fallscrnPal[256];
# 41 "main.c" 2
# 1 "bg_03_winterscrn.h" 1
# 22 "bg_03_winterscrn.h"
extern const unsigned short bg_03_winterscrnTiles[352];


extern const unsigned short bg_03_winterscrnMap[2048];


extern const unsigned short bg_03_winterscrnPal[256];
# 42 "main.c" 2
# 1 "bg_03_neutralscrn_collision.h" 1
# 20 "bg_03_neutralscrn_collision.h"
extern const unsigned short bg_03_neutralscrn_collisionBitmap[131072];
# 43 "main.c" 2
# 1 "bg_03_springscrn_collision.h" 1
# 20 "bg_03_springscrn_collision.h"
extern const unsigned short bg_03_springscrn_collisionBitmap[131072];
# 44 "main.c" 2
# 1 "bg_03_summerscrn_collision.h" 1
# 20 "bg_03_summerscrn_collision.h"
extern const unsigned short bg_03_summerscrn_collisionBitmap[131072];
# 45 "main.c" 2
# 1 "bg_03_fallscrn_collision.h" 1
# 20 "bg_03_fallscrn_collision.h"
extern const unsigned short bg_03_fallscrn_collisionBitmap[131072];
# 46 "main.c" 2
# 1 "bg_03_winterscrn_collision.h" 1
# 20 "bg_03_winterscrn_collision.h"
extern const unsigned short bg_03_winterscrn_collisionBitmap[131072];
# 47 "main.c" 2
# 1 "bg_04_neutralscrn.h" 1
# 22 "bg_04_neutralscrn.h"
extern const unsigned short bg_04_neutralscrnTiles[320];


extern const unsigned short bg_04_neutralscrnMap[2048];


extern const unsigned short bg_04_neutralscrnPal[256];
# 48 "main.c" 2
# 1 "bg_04_springscrn.h" 1
# 22 "bg_04_springscrn.h"
extern const unsigned short bg_04_springscrnTiles[224];


extern const unsigned short bg_04_springscrnMap[2048];


extern const unsigned short bg_04_springscrnPal[256];
# 49 "main.c" 2
# 1 "bg_04_summerscrn.h" 1
# 22 "bg_04_summerscrn.h"
extern const unsigned short bg_04_summerscrnTiles[480];


extern const unsigned short bg_04_summerscrnMap[2048];


extern const unsigned short bg_04_summerscrnPal[256];
# 50 "main.c" 2
# 1 "bg_04_fallscrn.h" 1
# 22 "bg_04_fallscrn.h"
extern const unsigned short bg_04_fallscrnTiles[480];


extern const unsigned short bg_04_fallscrnMap[2048];


extern const unsigned short bg_04_fallscrnPal[256];
# 51 "main.c" 2
# 1 "bg_04_winterscrn.h" 1
# 22 "bg_04_winterscrn.h"
extern const unsigned short bg_04_winterscrnTiles[352];


extern const unsigned short bg_04_winterscrnMap[2048];


extern const unsigned short bg_04_winterscrnPal[256];
# 52 "main.c" 2
# 1 "bg_04_neutralscrn_collision.h" 1
# 20 "bg_04_neutralscrn_collision.h"
extern const unsigned short bg_04_neutralscrn_collisionBitmap[131072];
# 53 "main.c" 2
# 1 "bg_04_springscrn_collision.h" 1
# 20 "bg_04_springscrn_collision.h"
extern const unsigned short bg_04_springscrn_collisionBitmap[131072];
# 54 "main.c" 2
# 1 "bg_04_summerscrn_collision.h" 1
# 20 "bg_04_summerscrn_collision.h"
extern const unsigned short bg_04_summerscrn_collisionBitmap[131072];
# 55 "main.c" 2
# 1 "bg_04_fallscrn_collision.h" 1
# 20 "bg_04_fallscrn_collision.h"
extern const unsigned short bg_04_fallscrn_collisionBitmap[131072];
# 56 "main.c" 2
# 1 "bg_04_winterscrn_collision.h" 1
# 20 "bg_04_winterscrn_collision.h"
extern const unsigned short bg_04_winterscrn_collisionBitmap[131072];
# 57 "main.c" 2
# 1 "bg_05_neutralscrn.h" 1
# 22 "bg_05_neutralscrn.h"
extern const unsigned short bg_05_neutralscrnTiles[320];


extern const unsigned short bg_05_neutralscrnMap[2048];


extern const unsigned short bg_05_neutralscrnPal[256];
# 58 "main.c" 2
# 1 "bg_05_springscrn.h" 1
# 22 "bg_05_springscrn.h"
extern const unsigned short bg_05_springscrnTiles[64];


extern const unsigned short bg_05_springscrnMap[2048];


extern const unsigned short bg_05_springscrnPal[256];
# 59 "main.c" 2
# 1 "bg_05_summerscrn.h" 1
# 22 "bg_05_summerscrn.h"
extern const unsigned short bg_05_summerscrnTiles[192];


extern const unsigned short bg_05_summerscrnMap[2048];


extern const unsigned short bg_05_summerscrnPal[256];
# 60 "main.c" 2
# 1 "bg_05_fallscrn.h" 1
# 22 "bg_05_fallscrn.h"
extern const unsigned short bg_05_fallscrnTiles[192];


extern const unsigned short bg_05_fallscrnMap[2048];


extern const unsigned short bg_05_fallscrnPal[256];
# 61 "main.c" 2
# 1 "bg_05_winterscrn.h" 1
# 22 "bg_05_winterscrn.h"
extern const unsigned short bg_05_winterscrnTiles[64];


extern const unsigned short bg_05_winterscrnMap[2048];


extern const unsigned short bg_05_winterscrnPal[256];
# 62 "main.c" 2
# 1 "bg_05_neutralscrn_collision.h" 1
# 20 "bg_05_neutralscrn_collision.h"
extern const unsigned short bg_05_neutralscrn_collisionBitmap[131072];
# 63 "main.c" 2
# 1 "bg_05_springscrn_collision.h" 1
# 20 "bg_05_springscrn_collision.h"
extern const unsigned short bg_05_springscrn_collisionBitmap[131072];
# 64 "main.c" 2
# 1 "bg_05_summerscrn_collision.h" 1
# 20 "bg_05_summerscrn_collision.h"
extern const unsigned short bg_05_summerscrn_collisionBitmap[131072];
# 65 "main.c" 2
# 1 "bg_05_fallscrn_collision.h" 1
# 20 "bg_05_fallscrn_collision.h"
extern const unsigned short bg_05_fallscrn_collisionBitmap[131072];
# 66 "main.c" 2
# 1 "bg_05_winterscrn_collision.h" 1
# 20 "bg_05_winterscrn_collision.h"
extern const unsigned short bg_05_winterscrn_collisionBitmap[131072];
# 67 "main.c" 2
# 1 "bg_06_neutralscrn.h" 1
# 22 "bg_06_neutralscrn.h"
extern const unsigned short bg_06_neutralscrnTiles[320];


extern const unsigned short bg_06_neutralscrnMap[2048];


extern const unsigned short bg_06_neutralscrnPal[256];
# 68 "main.c" 2
# 1 "bg_06_springscrn.h" 1
# 22 "bg_06_springscrn.h"
extern const unsigned short bg_06_springscrnTiles[576];


extern const unsigned short bg_06_springscrnMap[2048];


extern const unsigned short bg_06_springscrnPal[256];
# 69 "main.c" 2
# 1 "bg_06_summerscrn.h" 1
# 22 "bg_06_summerscrn.h"
extern const unsigned short bg_06_summerscrnTiles[96];


extern const unsigned short bg_06_summerscrnMap[2048];


extern const unsigned short bg_06_summerscrnPal[256];
# 70 "main.c" 2
# 1 "bg_06_fallscrn.h" 1
# 22 "bg_06_fallscrn.h"
extern const unsigned short bg_06_fallscrnTiles[224];


extern const unsigned short bg_06_fallscrnMap[2048];


extern const unsigned short bg_06_fallscrnPal[256];
# 71 "main.c" 2
# 1 "bg_06_winterscrn.h" 1
# 22 "bg_06_winterscrn.h"
extern const unsigned short bg_06_winterscrnTiles[352];


extern const unsigned short bg_06_winterscrnMap[2048];


extern const unsigned short bg_06_winterscrnPal[256];
# 72 "main.c" 2
# 1 "bg_06_neutralscrn_collision.h" 1
# 20 "bg_06_neutralscrn_collision.h"
extern const unsigned short bg_06_neutralscrn_collisionBitmap[131072];
# 73 "main.c" 2
# 1 "bg_06_springscrn_collision.h" 1
# 20 "bg_06_springscrn_collision.h"
extern const unsigned short bg_06_springscrn_collisionBitmap[131072];
# 74 "main.c" 2
# 1 "bg_06_summerscrn_collision.h" 1
# 20 "bg_06_summerscrn_collision.h"
extern const unsigned short bg_06_summerscrn_collisionBitmap[131072];
# 75 "main.c" 2
# 1 "bg_06_fallscrn_collision.h" 1
# 20 "bg_06_fallscrn_collision.h"
extern const unsigned short bg_06_fallscrn_collisionBitmap[131072];
# 76 "main.c" 2
# 1 "bg_06_winterscrn_collision.h" 1
# 20 "bg_06_winterscrn_collision.h"
extern const unsigned short bg_06_winterscrn_collisionBitmap[131072];
# 77 "main.c" 2
# 1 "bg_07_neutralscrn.h" 1
# 22 "bg_07_neutralscrn.h"
extern const unsigned short bg_07_neutralscrnTiles[320];


extern const unsigned short bg_07_neutralscrnMap[2048];


extern const unsigned short bg_07_neutralscrnPal[256];
# 78 "main.c" 2
# 1 "bg_07_springscrn.h" 1
# 22 "bg_07_springscrn.h"
extern const unsigned short bg_07_springscrnTiles[608];


extern const unsigned short bg_07_springscrnMap[2048];


extern const unsigned short bg_07_springscrnPal[256];
# 79 "main.c" 2
# 1 "bg_07_summerscrn.h" 1
# 22 "bg_07_summerscrn.h"
extern const unsigned short bg_07_summerscrnTiles[480];


extern const unsigned short bg_07_summerscrnMap[2048];


extern const unsigned short bg_07_summerscrnPal[256];
# 80 "main.c" 2
# 1 "bg_07_fallscrn.h" 1
# 22 "bg_07_fallscrn.h"
extern const unsigned short bg_07_fallscrnTiles[224];


extern const unsigned short bg_07_fallscrnMap[2048];


extern const unsigned short bg_07_fallscrnPal[256];
# 81 "main.c" 2
# 1 "bg_07_winterscrn.h" 1
# 22 "bg_07_winterscrn.h"
extern const unsigned short bg_07_winterscrnTiles[480];


extern const unsigned short bg_07_winterscrnMap[2048];


extern const unsigned short bg_07_winterscrnPal[256];
# 82 "main.c" 2
# 1 "bg_07_neutralscrn_collision.h" 1
# 20 "bg_07_neutralscrn_collision.h"
extern const unsigned short bg_07_neutralscrn_collisionBitmap[131072];
# 83 "main.c" 2
# 1 "bg_07_springscrn_collision.h" 1
# 20 "bg_07_springscrn_collision.h"
extern const unsigned short bg_07_springscrn_collisionBitmap[131072];
# 84 "main.c" 2
# 1 "bg_07_summerscrn_collision.h" 1
# 20 "bg_07_summerscrn_collision.h"
extern const unsigned short bg_07_summerscrn_collisionBitmap[131072];
# 85 "main.c" 2
# 1 "bg_07_fallscrn_collision.h" 1
# 20 "bg_07_fallscrn_collision.h"
extern const unsigned short bg_07_fallscrn_collisionBitmap[131072];
# 86 "main.c" 2
# 1 "bg_07_winterscrn_collision.h" 1
# 20 "bg_07_winterscrn_collision.h"
extern const unsigned short bg_07_winterscrn_collisionBitmap[131072];
# 87 "main.c" 2
# 1 "bg_08_neutralscrn.h" 1
# 22 "bg_08_neutralscrn.h"
extern const unsigned short bg_08_neutralscrnTiles[320];


extern const unsigned short bg_08_neutralscrnMap[2048];


extern const unsigned short bg_08_neutralscrnPal[256];
# 88 "main.c" 2
# 1 "bg_08_springscrn.h" 1
# 22 "bg_08_springscrn.h"
extern const unsigned short bg_08_springscrnTiles[224];


extern const unsigned short bg_08_springscrnMap[2048];


extern const unsigned short bg_08_springscrnPal[256];
# 89 "main.c" 2
# 1 "bg_08_summerscrn.h" 1
# 22 "bg_08_summerscrn.h"
extern const unsigned short bg_08_summerscrnTiles[320];


extern const unsigned short bg_08_summerscrnMap[2048];


extern const unsigned short bg_08_summerscrnPal[256];
# 90 "main.c" 2
# 1 "bg_08_fallscrn.h" 1
# 22 "bg_08_fallscrn.h"
extern const unsigned short bg_08_fallscrnTiles[224];


extern const unsigned short bg_08_fallscrnMap[2048];


extern const unsigned short bg_08_fallscrnPal[256];
# 91 "main.c" 2
# 1 "bg_08_winterscrn.h" 1
# 22 "bg_08_winterscrn.h"
extern const unsigned short bg_08_winterscrnTiles[320];


extern const unsigned short bg_08_winterscrnMap[2048];


extern const unsigned short bg_08_winterscrnPal[256];
# 92 "main.c" 2
# 1 "bg_08_neutralscrn_collision.h" 1
# 20 "bg_08_neutralscrn_collision.h"
extern const unsigned short bg_08_neutralscrn_collisionBitmap[131072];
# 93 "main.c" 2
# 1 "bg_08_springscrn_collision.h" 1
# 20 "bg_08_springscrn_collision.h"
extern const unsigned short bg_08_springscrn_collisionBitmap[131072];
# 94 "main.c" 2
# 1 "bg_08_summerscrn_collision.h" 1
# 20 "bg_08_summerscrn_collision.h"
extern const unsigned short bg_08_summerscrn_collisionBitmap[131072];
# 95 "main.c" 2
# 1 "bg_08_fallscrn_collision.h" 1
# 20 "bg_08_fallscrn_collision.h"
extern const unsigned short bg_08_fallscrn_collisionBitmap[131072];
# 96 "main.c" 2
# 1 "bg_08_winterscrn_collision.h" 1
# 20 "bg_08_winterscrn_collision.h"
extern const unsigned short bg_08_winterscrn_collisionBitmap[131072];
# 97 "main.c" 2
# 1 "bg_09_neutralscrn.h" 1
# 22 "bg_09_neutralscrn.h"
extern const unsigned short bg_09_neutralscrnTiles[320];


extern const unsigned short bg_09_neutralscrnMap[2048];


extern const unsigned short bg_09_neutralscrnPal[256];
# 98 "main.c" 2
# 1 "bg_09_springscrn.h" 1
# 22 "bg_09_springscrn.h"
extern const unsigned short bg_09_springscrnTiles[736];


extern const unsigned short bg_09_springscrnMap[2048];


extern const unsigned short bg_09_springscrnPal[256];
# 99 "main.c" 2
# 1 "bg_09_summerscrn.h" 1
# 22 "bg_09_summerscrn.h"
extern const unsigned short bg_09_summerscrnTiles[608];


extern const unsigned short bg_09_summerscrnMap[2048];


extern const unsigned short bg_09_summerscrnPal[256];
# 100 "main.c" 2
# 1 "bg_09_fallscrn.h" 1
# 22 "bg_09_fallscrn.h"
extern const unsigned short bg_09_fallscrnTiles[608];


extern const unsigned short bg_09_fallscrnMap[2048];


extern const unsigned short bg_09_fallscrnPal[256];
# 101 "main.c" 2
# 1 "bg_09_winterscrn.h" 1
# 22 "bg_09_winterscrn.h"
extern const unsigned short bg_09_winterscrnTiles[480];


extern const unsigned short bg_09_winterscrnMap[2048];


extern const unsigned short bg_09_winterscrnPal[256];
# 102 "main.c" 2
# 1 "bg_09_neutralscrn_collision.h" 1
# 20 "bg_09_neutralscrn_collision.h"
extern const unsigned short bg_09_neutralscrn_collisionBitmap[131072];
# 103 "main.c" 2
# 1 "bg_09_springscrn_collision.h" 1
# 20 "bg_09_springscrn_collision.h"
extern const unsigned short bg_09_springscrn_collisionBitmap[131072];
# 104 "main.c" 2
# 1 "bg_09_summerscrn_collision.h" 1
# 20 "bg_09_summerscrn_collision.h"
extern const unsigned short bg_09_summerscrn_collisionBitmap[131072];
# 105 "main.c" 2
# 1 "bg_09_fallscrn_collision.h" 1
# 20 "bg_09_fallscrn_collision.h"
extern const unsigned short bg_09_fallscrn_collisionBitmap[131072];
# 106 "main.c" 2
# 1 "bg_09_winterscrn_collision.h" 1
# 20 "bg_09_winterscrn_collision.h"
extern const unsigned short bg_09_winterscrn_collisionBitmap[131072];
# 107 "main.c" 2
# 1 "bg_10_neutralscrn.h" 1
# 22 "bg_10_neutralscrn.h"
extern const unsigned short bg_10_neutralscrnTiles[320];


extern const unsigned short bg_10_neutralscrnMap[2048];


extern const unsigned short bg_10_neutralscrnPal[256];
# 108 "main.c" 2
# 1 "bg_10_springscrn.h" 1
# 22 "bg_10_springscrn.h"
extern const unsigned short bg_10_springscrnTiles[224];


extern const unsigned short bg_10_springscrnMap[2048];


extern const unsigned short bg_10_springscrnPal[256];
# 109 "main.c" 2
# 1 "bg_10_summerscrn.h" 1
# 22 "bg_10_summerscrn.h"
extern const unsigned short bg_10_summerscrnTiles[224];


extern const unsigned short bg_10_summerscrnMap[2048];


extern const unsigned short bg_10_summerscrnPal[256];
# 110 "main.c" 2
# 1 "bg_10_fallscrn.h" 1
# 22 "bg_10_fallscrn.h"
extern const unsigned short bg_10_fallscrnTiles[224];


extern const unsigned short bg_10_fallscrnMap[2048];


extern const unsigned short bg_10_fallscrnPal[256];
# 111 "main.c" 2
# 1 "bg_10_winterscrn.h" 1
# 22 "bg_10_winterscrn.h"
extern const unsigned short bg_10_winterscrnTiles[448];


extern const unsigned short bg_10_winterscrnMap[2048];


extern const unsigned short bg_10_winterscrnPal[256];
# 112 "main.c" 2
# 1 "bg_10_neutralscrn_collision.h" 1
# 20 "bg_10_neutralscrn_collision.h"
extern const unsigned short bg_10_neutralscrn_collisionBitmap[131072];
# 113 "main.c" 2
# 1 "bg_10_springscrn_collision.h" 1
# 20 "bg_10_springscrn_collision.h"
extern const unsigned short bg_10_springscrn_collisionBitmap[131072];
# 114 "main.c" 2
# 1 "bg_10_summerscrn_collision.h" 1
# 20 "bg_10_summerscrn_collision.h"
extern const unsigned short bg_10_summerscrn_collisionBitmap[131072];
# 115 "main.c" 2
# 1 "bg_10_fallscrn_collision.h" 1
# 20 "bg_10_fallscrn_collision.h"
extern const unsigned short bg_10_fallscrn_collisionBitmap[131072];
# 116 "main.c" 2
# 1 "bg_10_winterscrn_collision.h" 1
# 20 "bg_10_winterscrn_collision.h"
extern const unsigned short bg_10_winterscrn_collisionBitmap[131072];
# 117 "main.c" 2
# 1 "bg_final_neutralscrn.h" 1
# 22 "bg_final_neutralscrn.h"
extern const unsigned short bg_final_neutralscrnTiles[320];


extern const unsigned short bg_final_neutralscrnMap[2048];


extern const unsigned short bg_final_neutralscrnPal[256];
# 118 "main.c" 2
# 1 "bg_final_springscrn.h" 1
# 22 "bg_final_springscrn.h"
extern const unsigned short bg_final_springscrnTiles[704];


extern const unsigned short bg_final_springscrnMap[2048];


extern const unsigned short bg_final_springscrnPal[256];
# 119 "main.c" 2
# 1 "bg_final_summerscrn.h" 1
# 22 "bg_final_summerscrn.h"
extern const unsigned short bg_final_summerscrnTiles[576];


extern const unsigned short bg_final_summerscrnMap[2048];


extern const unsigned short bg_final_summerscrnPal[256];
# 120 "main.c" 2
# 1 "bg_final_fallscrn.h" 1
# 22 "bg_final_fallscrn.h"
extern const unsigned short bg_final_fallscrnTiles[576];


extern const unsigned short bg_final_fallscrnMap[2048];


extern const unsigned short bg_final_fallscrnPal[256];
# 121 "main.c" 2
# 1 "bg_final_winterscrn.h" 1
# 22 "bg_final_winterscrn.h"
extern const unsigned short bg_final_winterscrnTiles[448];


extern const unsigned short bg_final_winterscrnMap[2048];


extern const unsigned short bg_final_winterscrnPal[256];
# 122 "main.c" 2
# 1 "bg_final_collision.h" 1
# 20 "bg_final_collision.h"
extern const unsigned short bg_final_collisionBitmap[131072];
# 123 "main.c" 2





enum {SPLASH, INSTRUCTIONS, GAME, SEASONCHANGE, PAUSE, LOSE, WINLEVEL, GAMEEND};
int state;


enum {NEUTRAL, SPRING, SUMMER, FALL, WINTER, CHEAT};
int season;
int prevSeason;


int currentLevel;


int vBlankCount;
int jumpFrameCounter;


int canJump;
int standing;


typedef struct {
 int row;
 int col;
 int deltaRow;
 int deltaCol;
 int bigRow;
 int bigCol;
 int isRunning;
 int isJumping;
 int frameCount;
 int width;
 int height;
 int facing;
 int currentFrame;
} PLAYER;

PLAYER player;


typedef struct {
 int row;
 int col;
} ICON;

ICON icon;


typedef struct {
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
} SOUND;

SOUND soundA;
SOUND soundB;
int vbCountA;
int vbCountB;

int hOff;
int vOff;
int bg1HOff;
int bg1VOff;

OBJ_ATTR shadowOAM[128];




unsigned int buttons;
unsigned int oldButtons;


void init();
void setupLevel();
void hideSprites();
void changeFrame();


void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int isLooping);
void playSoundB( const unsigned char* sound, int length, int frequency, int isLooping);
void pauseSound();
void unpauseSound();
void setupInterrupts();
void interruptHandler();


void splash();
void instructions();
void game();
void seasonChange();
void pause();
void lose();
void winLevel();
void gameEnd();


void incrementSeason();
void warpAnimation();
void jump();
int checkCollision();
int checkWinCollision();
# 243 "main.c"
int main() {

 setupInterrupts();
    setupSounds();

    playSoundA(titleSong, 679760, 11025, 1);


 splash();



 while (1) {

  oldButtons = buttons;
  buttons = *(volatile unsigned int *)0x04000130;


  player.bigRow = player.row + vOff;
  player.bigCol = player.col + hOff;


  switch(state) {

   case SPLASH:


    splash();

   break;

   case INSTRUCTIONS:

    instructions();

   break;

   case GAME:


    game();

   break;

   case SEASONCHANGE:


    warpAnimation();


    if (vBlankCount < 1) {
     seasonChange();
     state = GAME;
    }

   break;

   case PAUSE:

    pause();

   break;

   case LOSE:

    lose();

   break;

   case WINLEVEL:

    winLevel();

   break;

   case GAMEEND:

    gameEnd();

   break;

  }




  shadowOAM[0].attr0 = (0xFF & player.row) | (0 << 14);
  shadowOAM[0].attr1 = (0x1FF & player.col) | (1 << 14) | ((1 << 12) & (player.facing << 12));
  shadowOAM[0].attr2 = ((season * 2)*32+(player.currentFrame * 2)) | (2 << 10);


  shadowOAM[1].attr0 = (0xFF & icon.row) | (0 << 14);
  shadowOAM[1].attr1 = (0x1FF & icon.col) | (1 << 14);
  shadowOAM[1].attr2 = ((season * 2)*32+(6)) | (1 << 10);

  *(volatile unsigned short *)0x04000018 = hOff;
        *(volatile unsigned short *)0x0400001A = vOff;


  *(volatile unsigned short *)0x04000014 = bg1HOff;
  *(volatile unsigned short *)0x04000016 = bg1VOff;


        DMANow(3, &shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

  waitForVblank();

 }

 return 0;
}


void init() {

 *(unsigned short *)0x4000000 = 0 | (1 << 10) | (1 << 12);

 *(volatile unsigned short *)0x4000008 = 0 << 2 | 26 << 8 | 0<<14 | 1 << 7 | 0;
 *(volatile unsigned short *)0x400000A = 1 << 2 | 27 << 8 | 0<<14 | 1 << 7 | 1;
 *(volatile unsigned short *)0x400000C = 2 << 2 | 28 << 8 | 1<<14 | 1 << 7 | 2;


 loadSpritePalette(sprite_actorPal);
 DMANow(3, sprite_actorTiles, &((charblock *)0x6000000)[4], 32768 / 2);


 loadPalette(pause_screenPal);
 DMANow(3, pause_screenMap, &((screenblock *)0x6000000)[26], 2048 / 2);
 DMANow(3, pause_screenTiles, &((charblock *)0x6000000)[0], 4672 / 2);


 player.deltaRow = 1;
 player.deltaCol = 0;
 player.isRunning = 0;
 player.isJumping = 0;
 player.frameCount = 0;
 player.width = 16;
 player.height = 16;
 player.currentFrame = 0;
 player.facing = 0;

 canJump = 0;

 hideSprites();


 icon.row = 5;
 icon.col = 219;

}


void setupGame() {

 state = SPLASH;

 season = NEUTRAL;

 currentLevel = 1;

 setupLevel();

}


void setupLevel() {


 if (currentLevel <= 1) {
  season = NEUTRAL;
 }
 else if (currentLevel > (11 - 1)) {
  season = SPRING;
 }

 else {
  season = SPRING + (currentLevel % 4);
 }


 if (season >= FALL) {
  *(unsigned short *)0x4000000 |= (1 << 9);

  if (season == FALL) {
   loadPalette(bg_fallPal);
   DMANow(3, bg_fallMap, &((screenblock *)0x6000000)[27], 2048 / 2);
   DMANow(3, bg_fallTiles, &((charblock *)0x6000000)[1], 2048 / 2);
  }
  else {
   loadPalette(bg_snowPal);
   DMANow(3, bg_snowMap, &((screenblock *)0x6000000)[27], 2048 / 2);
   DMANow(3, bg_snowTiles, &((charblock *)0x6000000)[1], 1408 / 2);
  }
 }

 switch (currentLevel) {

  case 1:


   loadPalette(bg_00_neutralscrnPal);
     DMANow(3, bg_00_neutralscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
     DMANow(3, bg_00_neutralscrnTiles, &((charblock *)0x6000000)[2], 3840 / 2);


     player.row = 10;
   player.col = 112;

   vOff = 0;
   hOff = 0;

  break;

  case 2:

   loadPalette(bg_02_fallscrnPal);
   DMANow(3, bg_02_fallscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
   DMANow(3, bg_02_fallscrnTiles, &((charblock *)0x6000000)[2], 960 / 2);

   player.row = 50;
   player.col = 112;

   vOff = 0;
   hOff = 184;

  break;

  case 3:

   loadPalette(bg_03_winterscrnPal);
   DMANow(3, bg_03_winterscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
   DMANow(3, bg_03_winterscrnTiles, &((charblock *)0x6000000)[2], 704 / 2);

   player.row = 50;
   player.col = 112;

   vOff = 0;
   hOff = 120;

  break;

  case 4:

   loadPalette(bg_04_springscrnPal);
   DMANow(3, bg_04_springscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
   DMANow(3, bg_04_springscrnTiles, &((charblock *)0x6000000)[2], 448 / 2);

   player.row = 50;
   player.col = 40;

   vOff = 0;
   hOff = 0;

  break;

  case 5:

   loadPalette(bg_05_summerscrnPal);
   DMANow(3, bg_05_summerscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
   DMANow(3, bg_05_summerscrnTiles, &((charblock *)0x6000000)[2], 384 / 2);

   player.row = 30;
   player.col = 112;

   vOff = 0;
   hOff = 136;

  break;

  case 6:

   loadPalette(bg_06_fallscrnPal);
   DMANow(3, bg_06_fallscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
   DMANow(3, bg_06_fallscrnTiles, &((charblock *)0x6000000)[2], 448 / 2);

   player.row = 30;
   player.col = 8;

   vOff = 0;
   hOff = 0;

  break;

  case 7:

   loadPalette(bg_07_winterscrnPal);
   DMANow(3, bg_07_winterscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
   DMANow(3, bg_07_winterscrnTiles, &((charblock *)0x6000000)[2], 960 / 2);

   player.row = 30;
   player.col = 40;

   vOff = 0;
   hOff = 0;

  break;

  case 8:

   loadPalette(bg_08_springscrnPal);
   DMANow(3, bg_08_springscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
   DMANow(3, bg_08_springscrnTiles, &((charblock *)0x6000000)[2], 448 / 2);

   player.row = 30;
   player.col = 112;

   vOff = 0;
   hOff = 96;

  break;

  case 9:

   loadPalette(bg_09_summerscrnPal);
   DMANow(3, bg_09_summerscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
   DMANow(3, bg_09_summerscrnTiles, &((charblock *)0x6000000)[2], 1216 / 2);

   player.row = 30;
   player.col = 112;

   vOff = 0;
   hOff = 128;

  break;

  case 10:

   loadPalette(bg_10_fallscrnPal);
   DMANow(3, bg_10_fallscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
   DMANow(3, bg_10_fallscrnTiles, &((charblock *)0x6000000)[2], 448 / 2);

   player.row = 30;
   player.col = 112;

   vOff = 0;
   hOff = 128;

  break;

  case 11:

   loadPalette(bg_final_springscrnPal);
   DMANow(3, bg_final_springscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
   DMANow(3, bg_final_springscrnTiles, &((charblock *)0x6000000)[2], 1408 / 2);

   player.row = 30;
   player.col = 10;

   vOff = 0;
   hOff = 0;

  break;

 }



}


void incrementSeason() {

 if (season >= WINTER) {
  season = SPRING;
 }
 else {
  season++;
 }

}

void hideSprites() {

 for (int i = 0; i < 128; i++) {
  shadowOAM[i].attr0 |= (2 << 8);
 }

}

void splash() {

 *(unsigned short *)0x4000000 = 4 | (1 << 10);

 loadPalette(splash_screenPal);

 drawBackgroundImage4(splash_screenBitmap);

 while (1) {

  oldButtons = buttons;
  buttons = *(volatile unsigned int *)0x04000130;

  if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {

   init();
   setupGame();

   playSoundA(gameSong, 889378, 11025, 1);
   playSoundB(menuSound, 2102, 11025, 0);

   state = GAME;
   return;
  }

  if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {

   playSoundB(menuSound, 2102, 11025, 0);

   state = INSTRUCTIONS;
   return;
  }

 }

}

void instructions() {

 *(unsigned short *)0x4000000 = 4 | (1 << 10);

 loadPalette(instructionsPal);

 drawBackgroundImage4(instructionsBitmap);

 while(!(~(*(volatile unsigned int *)0x04000130) & ((1<<1))));

 playSoundB(menuSound, 2102, 11025, 0);

 state = SPLASH;

}

void game() {



 player.isRunning = 0;


 if (player.frameCount % 4 == 0) {
  changeFrame();
 }



 if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {


  if (canJump && checkCollision()) {
   canJump = 0;
   player.isJumping = 1;
   jumpFrameCounter = 30;

   playSoundB(jumpSound, 3118, 11025, 0);
   jump();
  }


 }

 if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))) {
  vBlankCount = 100;
  prevSeason = season;

  playSoundB(warpSound, 20244, 11025, 0);

  state = SEASONCHANGE;
 }

 if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
  *(unsigned short *)0x4000000 ^= (1 << 8);

  pauseSound();

  state = PAUSE;
 }


 if ((~(*(volatile unsigned int *)0x04000130) & ((1<<8))) && (~(*(volatile unsigned int *)0x04000130) & ((1<<9))) && (~(*(volatile unsigned int *)0x04000130) & ((1<<2)))) {
  vBlankCount = 100;
  prevSeason = -1;

  playSoundB(warpSound, 20244, 11025, 0);

  state = SEASONCHANGE;
 }

 if ((~(*(volatile unsigned int *)0x04000130) & ((1<<4)))) {
  player.isRunning = 1;
  player.facing = 0;
  player.deltaCol = 1;

  if (hOff < 272 && player.col >= 120 - player.height / 2) {
   hOff += player.deltaCol;
  }
  else if (player.col < 240 - player.width) {
   player.col += player.deltaCol;
  }


 }

 if ((~(*(volatile unsigned int *)0x04000130) & ((1<<5)))) {
  player.isRunning = 1;
  player.facing = 1;
  player.deltaCol = -1;

  if (hOff > 0 && player.col < 120 - player.width / 2) {
   hOff += player.deltaCol;
  }
  else if (player.col > 0) {
   player.col += player.deltaCol;
  }

 }




 if (player.isJumping) {
  jump();
 }
# 774 "main.c"
 if (!checkCollision() || player.isJumping) {


  player.isRunning = 0;


   vOff += player.deltaRow;

  if (player.row < 160) {
   player.row += player.deltaRow;
  }
  else {
   state = LOSE;
  }

 }
 else {
  canJump = 1;
  player.deltaCol = 0;
 }



 if (checkWinCollision()) {
  playSoundB(winLevelSound, 9156, 11025, 0);

  state = WINLEVEL;
 }



 if (!player.isRunning) {
  player.currentFrame = 0;
 }


 if (player.isRunning) {
  player.frameCount++;
 }


 switch (season) {
  case FALL:
   bg1VOff--;
  break;

  case WINTER:
   bg1HOff--;
   bg1VOff--;
  break;
 }

}

void changeFrame() {

 if (player.currentFrame >= 2) {
  player.currentFrame = 0;
 }

 else {
  player.currentFrame++;
 }
}

void setupSounds() {
    *(volatile u16 *)0x04000084 = (1<<7);

    *(volatile u16*)0x04000082 = (1<<1) |
                        (1<<2) |
                        (3<<8) |
                        0 |
                        (1<<11) |
                        (1<<3) |
                        (3<<12) |
                        (1<<14) |
                        (1<<15);

    *(u16*)0x04000080 = 0;
}

void playSoundA( const unsigned char* sound, int length, int frequency, int isLooping) {
    dma[1].cnt = 0;
        vbCountA = 0;

        int interval = 16777216/frequency;

        DMANow(1, sound, (volatile void *)0x040000A0, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

        *(volatile unsigned short *)0x4000102 = 0;

        *(volatile unsigned short *)0x4000100 = -interval;
        *(volatile unsigned short *)0x4000102 = (1<<7);

        soundA.data = sound;
        soundA.length = length;
        soundA.frequency = frequency;
        soundA.isPlaying = 1;
        soundA.loops = isLooping;
        soundA.duration = ((60*length)/frequency) - ((length/frequency)*3)-1;
        soundA.priority = 0;
}

void playSoundB( const unsigned char* sound, int length, int frequency, int isLooping) {
        dma[2].cnt = 0;
        vbCountB = 0;

        int interval = 16777216/frequency;

        DMANow(2, sound, (volatile void *)0x040000A4, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

        *(volatile unsigned short *)0x4000106 = 0;

        *(volatile unsigned short *)0x4000104 = -interval;
        *(volatile unsigned short *)0x4000106 = (1<<7);

        soundB.data = sound;
        soundB.length = length;
        soundB.frequency = frequency;
        soundB.isPlaying = 1;
        soundB.loops = isLooping;
        soundB.duration = ((60*length)/frequency) - ((length/frequency)*3)-1;
        soundB.priority = 0;
}

void pauseSound() {
    *(volatile u16*)0x04000082 = *(volatile u16*)0x04000082 & ~((3<<8));
    *(volatile u16*)0x04000082 = *(volatile u16*)0x04000082 & ~((3<<12));
}

void unpauseSound() {
    *(volatile u16*)0x04000082 = *(volatile u16*)0x04000082 | (3<<8);
    *(volatile u16*)0x04000082 = *(volatile u16*)0x04000082 | (3<<12);
}

void setupInterrupts() {
    *(unsigned short*)0x4000208 = 0;
    *(unsigned int*)0x3007FFC = (unsigned int)interruptHandler;
    *(unsigned short*)0x4000200 |= 1 << 0;
    *(unsigned short*)0x4000004 |= 1 << 3;
    *(unsigned short*)0x4000208 = 1;
}

void interruptHandler() {
    *(unsigned short*)0x4000208 = 0;
    if(*(volatile unsigned short*)0x4000202 & 1 << 0)
    {

                if (soundA.isPlaying && vbCountA < soundA.duration) {
                    vbCountA++;
                }

                else if (!soundA.isPlaying && soundA.loops) {
                    playSoundA(soundA.data, soundA.length, soundA.frequency, soundA.loops);
                }
                else {
                    soundA.isPlaying = 0;
                    vbCountA = 0;
                    *(volatile unsigned short *)0x4000102 = 0;
                    dma[1].cnt = 0;
                }

                if (soundB.isPlaying && vbCountB < soundB.duration) {
                    vbCountB++;
                }

                else if (!soundB.isPlaying && soundB.loops) {
                    playSoundB(soundB.data, soundB.length, soundB.frequency, soundB.loops);
                }
                else {
                    soundB.isPlaying = 0;
                    vbCountB = 0;
                    *(volatile unsigned short *)0x4000106 = 0;
                    dma[2].cnt = 0;
                }



        *(volatile unsigned short*)0x4000202 = 1 << 0;
    }

    *(unsigned short*)0x4000208 = 1;
}

void warpAnimation() {

 if (vBlankCount % 5) {
  incrementSeason();
 }

 vBlankCount--;

}

void seasonChange() {

 season = prevSeason;
 incrementSeason();


 if (season < FALL) {
  *(unsigned short *)0x4000000 &= ~((1 << 9));
 }

 switch (season) {

  case NEUTRAL:

   switch (currentLevel) {

    case 1:
     loadPalette(bg_00_neutralscrnPal);
       DMANow(3, bg_00_neutralscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_00_neutralscrnTiles, &((charblock *)0x6000000)[2], 3840 / 2);
    break;

    case 2:
     loadPalette(bg_02_neutralscrnPal);
       DMANow(3, bg_02_neutralscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_02_neutralscrnTiles, &((charblock *)0x6000000)[2], 640 / 2);
    break;

    case 3:
     loadPalette(bg_03_neutralscrnPal);
       DMANow(3, bg_03_neutralscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_03_neutralscrnTiles, &((charblock *)0x6000000)[2], 640 / 2);
    break;

    case 4:
     loadPalette(bg_04_springscrnPal);
       DMANow(3, bg_04_neutralscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_04_neutralscrnTiles, &((charblock *)0x6000000)[2], 640 / 2);
    break;

    case 5:
     loadPalette(bg_05_neutralscrnPal);
       DMANow(3, bg_05_neutralscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_05_neutralscrnTiles, &((charblock *)0x6000000)[2], 640 / 2);
    break;

    case 6:
     loadPalette(bg_06_neutralscrnPal);
       DMANow(3, bg_06_neutralscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_06_neutralscrnTiles, &((charblock *)0x6000000)[2], 640 / 2);
    break;

    case 7:
     loadPalette(bg_07_neutralscrnPal);
       DMANow(3, bg_07_neutralscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_07_neutralscrnTiles, &((charblock *)0x6000000)[2], 640 / 2);
    break;

    case 8:
     loadPalette(bg_08_neutralscrnPal);
       DMANow(3, bg_08_neutralscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_08_neutralscrnTiles, &((charblock *)0x6000000)[2], 640 / 2);
    break;

    case 9:
     loadPalette(bg_09_neutralscrnPal);
       DMANow(3, bg_09_neutralscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_09_neutralscrnTiles, &((charblock *)0x6000000)[2], 640 / 2);
    break;

    case 10:
     loadPalette(bg_10_neutralscrnPal);
       DMANow(3, bg_10_neutralscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_10_neutralscrnTiles, &((charblock *)0x6000000)[2], 640 / 2);
    break;

    case 11:
     loadPalette(bg_final_neutralscrnPal);
       DMANow(3, bg_final_neutralscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_final_neutralscrnTiles, &((charblock *)0x6000000)[2], 640 / 2);
    break;

   }

  break;

  case SPRING:

   switch (currentLevel) {

    case 1:
     loadPalette(bg_00_springscrnPal);
       DMANow(3, bg_00_springscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_00_springscrnTiles, &((charblock *)0x6000000)[2], 4864 / 2);
    break;

    case 2:
     loadPalette(bg_02_springscrnPal);
       DMANow(3, bg_02_springscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_02_springscrnTiles, &((charblock *)0x6000000)[2], 1472 / 2);
    break;

    case 3:
     loadPalette(bg_03_springscrnPal);
       DMANow(3, bg_03_springscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_03_springscrnTiles, &((charblock *)0x6000000)[2], 1216 / 2);
    break;

    case 4:
     loadPalette(bg_04_springscrnPal);
       DMANow(3, bg_04_springscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_04_springscrnTiles, &((charblock *)0x6000000)[2], 448 / 2);
    break;

    case 5:
     loadPalette(bg_05_springscrnPal);
       DMANow(3, bg_05_springscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_05_springscrnTiles, &((charblock *)0x6000000)[2], 128 / 2);
    break;

    case 6:
     loadPalette(bg_06_springscrnPal);
       DMANow(3, bg_06_springscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_06_springscrnTiles, &((charblock *)0x6000000)[2], 1152 / 2);
    break;

    case 7:
     loadPalette(bg_07_springscrnPal);
       DMANow(3, bg_07_springscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_07_springscrnTiles, &((charblock *)0x6000000)[2], 1216 / 2);
    break;

    case 8:
     loadPalette(bg_08_springscrnPal);
       DMANow(3, bg_08_springscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_08_springscrnTiles, &((charblock *)0x6000000)[2], 448 / 2);
    break;

    case 9:
     loadPalette(bg_09_springscrnPal);
       DMANow(3, bg_09_springscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_09_springscrnTiles, &((charblock *)0x6000000)[2], 1472 / 2);
    break;

    case 10:
     loadPalette(bg_10_springscrnPal);
       DMANow(3, bg_10_springscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_10_springscrnTiles, &((charblock *)0x6000000)[2], 448 / 2);
    break;

    case 11:
     loadPalette(bg_final_springscrnPal);
       DMANow(3, bg_final_springscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_final_springscrnTiles, &((charblock *)0x6000000)[2], 1408 / 2);
    break;


   }

  break;

  case SUMMER:

   switch (currentLevel) {

    case 1:
     loadPalette(bg_00_summerscrnPal);
       DMANow(3, bg_00_summerscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_00_summerscrnTiles, &((charblock *)0x6000000)[2], 3584 / 2);
    break;

    case 2:
     loadPalette(bg_02_summerscrnPal);
       DMANow(3, bg_02_summerscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_02_summerscrnTiles, &((charblock *)0x6000000)[2], 960 / 2);
    break;

    case 3:
     loadPalette(bg_03_summerscrnPal);
       DMANow(3, bg_03_summerscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_03_summerscrnTiles, &((charblock *)0x6000000)[2], 960 / 2);
    break;

    case 4:
     loadPalette(bg_04_summerscrnPal);
       DMANow(3, bg_04_summerscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_04_summerscrnTiles, &((charblock *)0x6000000)[2], 960 / 2);
    break;

    case 5:
     loadPalette(bg_05_summerscrnPal);
       DMANow(3, bg_05_summerscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_05_summerscrnTiles, &((charblock *)0x6000000)[2], 384 / 2);
    break;

    case 6:
     loadPalette(bg_06_summerscrnPal);
       DMANow(3, bg_06_summerscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_06_summerscrnTiles, &((charblock *)0x6000000)[2], 192 / 2);
    break;

    case 7:
     loadPalette(bg_07_summerscrnPal);
       DMANow(3, bg_07_summerscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_07_summerscrnTiles, &((charblock *)0x6000000)[2], 960 / 2);
    break;

    case 8:
     loadPalette(bg_08_summerscrnPal);
       DMANow(3, bg_08_summerscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_08_summerscrnTiles, &((charblock *)0x6000000)[2], 640 / 2);
    break;

    case 9:
     loadPalette(bg_09_summerscrnPal);
       DMANow(3, bg_09_summerscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_09_summerscrnTiles, &((charblock *)0x6000000)[2], 1216 / 2);
    break;

    case 10:
     loadPalette(bg_10_summerscrnPal);
       DMANow(3, bg_10_summerscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_10_summerscrnTiles, &((charblock *)0x6000000)[2], 448 / 2);
    break;

    case 11:
     loadPalette(bg_final_summerscrnPal);
       DMANow(3, bg_final_summerscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_final_summerscrnTiles, &((charblock *)0x6000000)[2], 1152 / 2);
    break;

   }

  break;

  case FALL:


   *(unsigned short *)0x4000000 |= (1 << 9);

   loadPalette(bg_fallPal);
   DMANow(3, bg_fallMap, &((screenblock *)0x6000000)[27], 2048 / 2);
   DMANow(3, bg_fallTiles, &((charblock *)0x6000000)[1], 2048 / 2);

   switch (currentLevel) {

    case 1:
     loadPalette(bg_00_fallscrnPal);
       DMANow(3, bg_00_fallscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_00_fallscrnTiles, &((charblock *)0x6000000)[2], 3264 / 2);
    break;

    case 2:
     loadPalette(bg_02_fallscrnPal);
     DMANow(3, bg_02_fallscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_02_fallscrnTiles, &((charblock *)0x6000000)[2], 960 / 2);
    break;

    case 3:
     loadPalette(bg_03_fallscrnPal);
     DMANow(3, bg_03_fallscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_03_fallscrnTiles, &((charblock *)0x6000000)[2], 1216 / 2);
    break;

    case 4:
     loadPalette(bg_04_fallscrnPal);
     DMANow(3, bg_04_fallscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_04_fallscrnTiles, &((charblock *)0x6000000)[2], 960 / 2);
    break;

    case 5:
     loadPalette(bg_05_fallscrnPal);
     DMANow(3, bg_05_fallscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_05_fallscrnTiles, &((charblock *)0x6000000)[2], 384 / 2);
    break;

    case 6:
     loadPalette(bg_06_fallscrnPal);
     DMANow(3, bg_06_fallscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_06_fallscrnTiles, &((charblock *)0x6000000)[2], 448 / 2);
    break;

    case 7:
     loadPalette(bg_07_fallscrnPal);
     DMANow(3, bg_07_fallscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_07_fallscrnTiles, &((charblock *)0x6000000)[2], 448 / 2);
    break;

    case 8:
     loadPalette(bg_08_fallscrnPal);
     DMANow(3, bg_08_fallscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_08_fallscrnTiles, &((charblock *)0x6000000)[2], 448 / 2);
    break;

    case 9:
     loadPalette(bg_09_fallscrnPal);
     DMANow(3, bg_09_fallscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_09_fallscrnTiles, &((charblock *)0x6000000)[2], 1216 / 2);
    break;

    case 10:
     loadPalette(bg_10_fallscrnPal);
     DMANow(3, bg_10_fallscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_10_fallscrnTiles, &((charblock *)0x6000000)[2], 448 / 2);
    break;

    case 11:
     loadPalette(bg_final_fallscrnPal);
     DMANow(3, bg_final_fallscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_final_fallscrnTiles, &((charblock *)0x6000000)[2], 1152 / 2);
    break;

   }

  break;

  case WINTER:


   *(unsigned short *)0x4000000 |= (1 << 9);

   loadPalette(bg_snowPal);
   DMANow(3, bg_snowMap, &((screenblock *)0x6000000)[27], 2048 / 2);
   DMANow(3, bg_snowTiles, &((charblock *)0x6000000)[1], 1408 / 2);

   switch (currentLevel) {

    case 1:
     loadPalette(bg_00_winterscrnPal);
       DMANow(3, bg_00_winterscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_00_winterscrnTiles, &((charblock *)0x6000000)[2], 896 / 2);
    break;

    case 2:
     loadPalette(bg_02_winterscrnPal);
     DMANow(3, bg_02_winterscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_02_winterscrnTiles, &((charblock *)0x6000000)[2], 704 / 2);
    break;

    case 3:
     loadPalette(bg_03_winterscrnPal);
     DMANow(3, bg_03_winterscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_03_winterscrnTiles, &((charblock *)0x6000000)[2], 704 / 2);
    break;

    case 4:
     loadPalette(bg_04_winterscrnPal);
     DMANow(3, bg_04_winterscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_04_winterscrnTiles, &((charblock *)0x6000000)[2], 704 / 2);
    break;

    case 5:
     loadPalette(bg_05_winterscrnPal);
     DMANow(3, bg_05_winterscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_05_winterscrnTiles, &((charblock *)0x6000000)[2], 128 / 2);
    break;

    case 6:
     loadPalette(bg_06_winterscrnPal);
     DMANow(3, bg_06_winterscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_06_winterscrnTiles, &((charblock *)0x6000000)[2], 704 / 2);
    break;

    case 7:
     loadPalette(bg_07_winterscrnPal);
     DMANow(3, bg_07_winterscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_07_winterscrnTiles, &((charblock *)0x6000000)[2], 960 / 2);
    break;

    case 8:
     loadPalette(bg_08_winterscrnPal);
     DMANow(3, bg_08_winterscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_08_winterscrnTiles, &((charblock *)0x6000000)[2], 640 / 2);
    break;

    case 9:
     loadPalette(bg_09_winterscrnPal);
     DMANow(3, bg_09_winterscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_09_winterscrnTiles, &((charblock *)0x6000000)[2], 960 / 2);
    break;

    case 10:
     loadPalette(bg_10_winterscrnPal);
     DMANow(3, bg_10_winterscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_10_winterscrnTiles, &((charblock *)0x6000000)[2], 896 / 2);
    break;

    case 11:
     loadPalette(bg_final_winterscrnPal);
     DMANow(3, bg_final_winterscrnMap, &((screenblock *)0x6000000)[28], 4096 / 2);
       DMANow(3, bg_final_winterscrnTiles, &((charblock *)0x6000000)[2], 896 / 2);
    break;

   }

  break;

 }

}

void pause() {



 while (1) {

  oldButtons = buttons;
  buttons = *(volatile unsigned int *)0x04000130;

  if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {

   *(unsigned short *)0x4000000 ^= (1 << 8);
   unpauseSound();
   state = GAME;
   return;
  }

  if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {

   *(unsigned short *)0x4000000 ^= (1 << 8);

   unpauseSound();

   playSoundA(titleSong, 679760, 11025, 1);

   state = SPLASH;
   return;
  }

 }

}

void jump() {

 if (jumpFrameCounter > 0) {
  player.isJumping = 1;
  player.deltaRow = -1;
  jumpFrameCounter--;
 }
 else {
  player.isJumping = 0;
  player.deltaRow = 1;
 }

}

int checkCollision() {

 switch (season) {

  case NEUTRAL:

   switch (currentLevel) {

    case 1:

     if (bg_00_neutralscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 2:

     if (bg_02_neutralscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 3:

     if (bg_03_neutralscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 4:

     if (bg_04_neutralscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 5:

     if (bg_05_neutralscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 6:

     if (bg_06_neutralscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 7:

     if (bg_07_neutralscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 8:

     if (bg_08_neutralscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 9:

     if (bg_09_neutralscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 10:

     if (bg_10_neutralscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 11:

     if (bg_final_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

   }

  break;

  case SPRING:

   switch (currentLevel) {

    case 1:

     if (bg_00_springscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 2:

     if (bg_02_springscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 3:

     if (bg_03_springscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 4:

     if (bg_04_springscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 6:

     if (bg_06_springscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 7:

     if (bg_07_springscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 8:

     if (bg_08_springscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 9:

     if (bg_09_springscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 10:

     if (bg_10_springscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 11:

     if (bg_final_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

   }

  break;

  case SUMMER:

   switch (currentLevel) {

    case 1:

     if (bg_00_summerscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 2:

     if (bg_02_summerscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 3:

     if (bg_03_summerscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 4:

     if (bg_04_summerscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 5:

     if (bg_05_summerscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 7:

     if (bg_07_summerscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 8:

     if (bg_08_summerscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 9:

     if (bg_09_summerscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 10:

     if (bg_10_summerscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 11:

     if (bg_final_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

   }

  break;

  case FALL:

   switch (currentLevel) {

    case 1:

     if (bg_00_fallscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }


    break;

    case 2:

     if (bg_02_fallscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 3:

     if (bg_03_fallscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 4:

     if (bg_04_fallscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 6:

     if (bg_06_fallscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 7:

     if (bg_07_fallscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 8:

     if (bg_08_fallscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 9:

     if (bg_09_fallscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 10:

     if (bg_10_fallscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 11:

     if (bg_final_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;


   }

  break;

  case WINTER:

   switch (currentLevel) {

    case 1:

     if (bg_00_winterscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 2:

     if (bg_02_winterscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 3:

     if (bg_03_winterscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 4:

     if (bg_04_winterscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 6:

     if (bg_06_winterscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 7:

     if (bg_07_winterscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 8:

     if (bg_08_winterscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 9:

     if (bg_09_winterscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 10:

     if (bg_10_winterscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

    case 11:

     if (bg_final_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == 0) {
      return 1;
     }

    break;

   }

  break;

 }


 return 0;

}

int checkWinCollision() {

 switch (season) {

  case NEUTRAL:

   switch (currentLevel) {

    case 2:

     if (bg_02_neutralscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

    case 3:

     if (bg_03_neutralscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

    case 4:

     if (bg_04_neutralscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

    case 5:

     if (bg_05_neutralscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

    case 6:

     if (bg_06_neutralscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

    case 7:

     if (bg_07_neutralscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

    case 8:

     if (bg_08_neutralscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

    case 9:

     if (bg_09_neutralscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

    case 10:

     if (bg_10_neutralscrn_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

    case 11:

     if (bg_final_collisionBitmap[((player.bigRow + player.height + 1) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

   }

  break;

  case SPRING:

   switch (currentLevel) {

    case 2:

     if (bg_02_springscrn_collisionBitmap[((player.bigRow + 8) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

    case 6:

     if (bg_06_springscrn_collisionBitmap[((player.bigRow + 8) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

    case 11:

     if (bg_final_collisionBitmap[((player.bigRow + 8) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

   }

  break;

  case SUMMER:

   switch (currentLevel) {

    case 11:

     if (bg_final_collisionBitmap[((player.bigRow + 8) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

   }

  break;

  case FALL:

   switch (currentLevel) {

    case 3:

     if (bg_03_fallscrn_collisionBitmap[((player.bigRow + 8) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

    case 4:

     if (bg_04_fallscrn_collisionBitmap[((player.bigRow + 8) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

    case 5:

     if (bg_05_fallscrn_collisionBitmap[((player.bigRow + 8) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

    case 8:

     if (bg_08_fallscrn_collisionBitmap[((player.bigRow + 8) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

    case 11:

     if (bg_final_collisionBitmap[((player.bigRow + 8) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

   }

  break;

  case WINTER:

   switch (currentLevel) {

    case 1:

     if (bg_00_winterscrn_collisionBitmap[((player.bigRow + 8) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

    case 7:

     if (bg_07_winterscrn_collisionBitmap[((player.bigRow + 8) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

    case 9:

     if (bg_09_winterscrn_collisionBitmap[((player.bigRow + 8) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

    case 10:

     if (bg_10_winterscrn_collisionBitmap[((player.bigRow + 8) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

    case 11:

     if (bg_final_collisionBitmap[((player.bigRow + 8) * (512) + (player.bigCol + 8))] == ((31) | (0 << 5) | (0 << 10))) {
      return 1;
     }

    break;

   }

  break;

 }

 return 0;

}

void winLevel() {

 *(unsigned short *)0x4000000 = 4 | (1 << 10);

 loadPalette(win_level_screenPal);

 drawBackgroundImage4(win_level_screenBitmap);

 while (1) {

  oldButtons = buttons;
  buttons = *(volatile unsigned int *)0x04000130;

  if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {

   if (currentLevel + 1 <= 11) {

    currentLevel++;
    init();
    setupLevel();

    state = GAME;
   }
   else {
    state = GAMEEND;
   }

   return;
  }

  if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {

   playSoundB(menuSound, 2102, 11025, 0);

   playSoundA(titleSong, 679760, 11025, 1);

   state = SPLASH;
   return;
  }

 }

}

void gameEnd() {

 *(unsigned short *)0x4000000 = 4 | (1 << 10);

 loadPalette(game_end_screenPal);

 drawBackgroundImage4(game_end_screenBitmap);

 while(1) {

  oldButtons = buttons;
  buttons = *(volatile unsigned int *)0x04000130;

  if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {

   playSoundB(menuSound, 2102, 11025, 0);

   playSoundA(titleSong, 679760, 11025, 1);

   state = SPLASH;
   return;
  }

 }

}

void lose() {

 *(unsigned short *)0x4000000 = 4 | (1 << 10);

 loadPalette(gameover_screenPal);

 drawBackgroundImage4(gameover_screenBitmap);

 while (1) {

  oldButtons = buttons;
  buttons = *(volatile unsigned int *)0x04000130;

  if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {

   init();
   setupLevel();

   state = GAME;
   return;
  }

  if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {

   playSoundB(menuSound, 2102, 11025, 0);

   playSoundA(titleSong, 679760, 11025, 1);

   state = SPLASH;
   return;
  }

 }

}
