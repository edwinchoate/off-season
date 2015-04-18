#include "lib.h"
#include "sprite_actor.h"
#include "splash_screen.h"
#include "instructions.h"
#include "pause_screen.h"
#include "win_level_screen.h"
#include "game_end_screen.h"
#include "gameover_screen.h"
#include "titleSong.h"
#include "gameSong.h"
#include "jumpSound.h"
#include "warpSound.h"
#include "winLevelSound.h"
#include "menuSound.h"
#include "bg_snow.h"
#include "bg_fall.h"
#include "bg_00_neutralscrn.h"
#include "bg_00_springscrn.h"
#include "bg_00_summerscrn.h"
#include "bg_00_fallscrn.h"
#include "bg_00_winterscrn.h"
#include "bg_00_neutralscrn_collision.h"
#include "bg_00_springscrn_collision.h"
#include "bg_00_summerscrn_collision.h"
#include "bg_00_fallscrn_collision.h"
#include "bg_00_winterscrn_collision.h"
#include "bg_01_neutralscrn.h"
#include "bg_01_springscrn.h"
#include "bg_01_summerscrn.h"
#include "bg_01_fallscrn.h"
#include "bg_01_winterscrn.h"
#include "bg_01_neutralscrn_collision.h"
#include "bg_01_springscrn_collision.h"
#include "bg_01_summerscrn_collision.h"
#include "bg_01_fallscrn_collision.h"
#include "bg_01_winterscrn_collision.h"
#include "bg_02_neutralscrn.h"
#include "bg_02_springscrn.h"
#include "bg_02_summerscrn.h"
#include "bg_02_fallscrn.h"
#include "bg_02_winterscrn.h"
#include "bg_02_neutralscrn_collision.h"
#include "bg_02_springscrn_collision.h"
#include "bg_02_summerscrn_collision.h"
#include "bg_02_fallscrn_collision.h"
#include "bg_02_winterscrn_collision.h"
#include "bg_03_neutralscrn.h"
#include "bg_03_springscrn.h"
#include "bg_03_summerscrn.h"
#include "bg_03_fallscrn.h"
#include "bg_03_winterscrn.h"
#include "bg_03_neutralscrn_collision.h"
#include "bg_03_springscrn_collision.h"
#include "bg_03_summerscrn_collision.h"
#include "bg_03_fallscrn_collision.h"
#include "bg_03_winterscrn_collision.h"
#include "bg_04_neutralscrn.h"
#include "bg_04_springscrn.h"
#include "bg_04_summerscrn.h"
#include "bg_04_fallscrn.h"
#include "bg_04_winterscrn.h"
#include "bg_04_neutralscrn_collision.h"
#include "bg_04_springscrn_collision.h"
#include "bg_04_summerscrn_collision.h"
#include "bg_04_fallscrn_collision.h"
#include "bg_04_winterscrn_collision.h"
#include "bg_05_neutralscrn.h"
#include "bg_05_springscrn.h"
#include "bg_05_summerscrn.h"
#include "bg_05_fallscrn.h"
#include "bg_05_winterscrn.h"
#include "bg_05_neutralscrn_collision.h"
#include "bg_05_springscrn_collision.h"
#include "bg_05_summerscrn_collision.h"
#include "bg_05_fallscrn_collision.h"
#include "bg_05_winterscrn_collision.h"
#include "bg_06_neutralscrn.h"
#include "bg_06_springscrn.h"
#include "bg_06_summerscrn.h"
#include "bg_06_fallscrn.h"
#include "bg_06_winterscrn.h"
#include "bg_06_neutralscrn_collision.h"
#include "bg_06_springscrn_collision.h"
#include "bg_06_summerscrn_collision.h"
#include "bg_06_fallscrn_collision.h"
#include "bg_06_winterscrn_collision.h"
#include "bg_07_neutralscrn.h"
#include "bg_07_springscrn.h"
#include "bg_07_summerscrn.h"
#include "bg_07_fallscrn.h"
#include "bg_07_winterscrn.h"
#include "bg_07_neutralscrn_collision.h"
#include "bg_07_springscrn_collision.h"
#include "bg_07_summerscrn_collision.h"
#include "bg_07_fallscrn_collision.h"
#include "bg_07_winterscrn_collision.h"
#include "bg_08_neutralscrn.h"
#include "bg_08_springscrn.h"
#include "bg_08_summerscrn.h"
#include "bg_08_fallscrn.h"
#include "bg_08_winterscrn.h"
#include "bg_08_neutralscrn_collision.h"
#include "bg_08_springscrn_collision.h"
#include "bg_08_summerscrn_collision.h"
#include "bg_08_fallscrn_collision.h"
#include "bg_08_winterscrn_collision.h"
#include "bg_09_neutralscrn.h"
#include "bg_09_springscrn.h"
#include "bg_09_summerscrn.h"
#include "bg_09_fallscrn.h"
#include "bg_09_winterscrn.h"
#include "bg_09_neutralscrn_collision.h"
#include "bg_09_springscrn_collision.h"
#include "bg_09_summerscrn_collision.h"
#include "bg_09_fallscrn_collision.h"
#include "bg_09_winterscrn_collision.h"
#include "bg_10_neutralscrn.h"
#include "bg_10_springscrn.h"
#include "bg_10_summerscrn.h"
#include "bg_10_fallscrn.h"
#include "bg_10_winterscrn.h"
#include "bg_10_neutralscrn_collision.h"
#include "bg_10_springscrn_collision.h"
#include "bg_10_summerscrn_collision.h"
#include "bg_10_fallscrn_collision.h"
#include "bg_10_winterscrn_collision.h"
#include "bg_final_neutralscrn.h"
#include "bg_final_springscrn.h"
#include "bg_final_summerscrn.h"
#include "bg_final_fallscrn.h"
#include "bg_final_winterscrn.h"
#include "bg_final_collision.h"


#define NUMLEVELS 12

// Game States
enum {SPLASH, INSTRUCTIONS, GAME, SEASONCHANGE, PAUSE, LOSE, WINLEVEL, GAMEEND};
int state;

// Seasons
enum {NEUTRAL, SPRING, SUMMER, FALL, WINTER, CHEAT};
int season;
int prevSeason;

// Level Variables
int currentLevel;

// Vertical Blank Counter - used for animations
int vBlankCount;
int jumpFrameCounter;

// Mechanics Variables
int canJump;
int standing;

// Main Character
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

// Icon Sprite - HUD-like indicator of current season
typedef struct {
	int row;
	int col;
} ICON;

ICON icon;

// Sound channel object
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

#define ROWMASK 0xFF
#define COLMASK 0x1FF

unsigned int buttons;
unsigned int oldButtons;

// Game Logic Helper Functions
void init();
void setupLevel();
void hideSprites();
void changeFrame();

// Sound-related Helper Functions
void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int isLooping);
void playSoundB( const unsigned char* sound, int length, int frequency, int isLooping);
void pauseSound();
void unpauseSound();
void setupInterrupts();
void interruptHandler();

// State Functions 
void splash();
void instructions();
void game();
void seasonChange();
void pause();
void lose();
void winLevel();
void gameEnd();

// Game-specific Helper Functions
void incrementSeason();
void warpAnimation();
void jump();
int checkCollision();	// 0 is falling (not collided), 1 is standing (collided)
int checkWinCollision(); // This checks is the player runs into a gem


/***************************************

Off Season by Edwin Choate


***************************************/

int main() {

	setupInterrupts();
    setupSounds();

    playSoundA(titleSong, TITLESONGLEN, TITLESONGFREQ, 1);

	// Start game with splash screen
	splash();


	// Main Game Loop
	while (1) {

		oldButtons = buttons;
		buttons = BUTTONS;

		// Update player row and column
		player.bigRow = player.row + vOff;
		player.bigCol = player.col + hOff;


		switch(state) {

			case SPLASH:

				// Displays splash screen
				splash();

			break;

			case INSTRUCTIONS:

				instructions();

			break;

			case GAME:

				// Game Function holds all game logic
				game();

			break;

			case SEASONCHANGE:
				
				// Warp-like animation as player changes between seasons
				warpAnimation();

				// Change game to correct season, based on prevSeason and return to gameplay
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

		
		// Shadow OAM Handling
		// Player Sprite
		shadowOAM[0].attr0 = (ROWMASK & player.row) | ATTR0_SQUARE;
		shadowOAM[0].attr1 = (COLMASK & player.col) | ATTR1_SIZE16 | (ATTR1_HFLIP & (player.facing << 12));
		shadowOAM[0].attr2 = (SPRITEOFFSET16(season * 2, player.currentFrame * 2)) | (1 << 10);	// Priority 1

		// Season Icon Sprite
		shadowOAM[1].attr0 = (ROWMASK & icon.row) | ATTR0_SQUARE;
		shadowOAM[1].attr1 = (COLMASK & icon.col) | ATTR1_SIZE16;
		shadowOAM[1].attr2 = (SPRITEOFFSET16(season * 2, 6)) | (1 << 10); // Priority 1

		REG_BG2HOFS = hOff;
        REG_BG2VOFS = vOff;

       	// Set BG1 offsets - used for snow and falling leaves
		REG_BG1HOFS = bg1HOff;
		REG_BG1VOFS = bg1VOff;
        
        //Copy the shadowOAM into the OAM
        DMANow(3, &shadowOAM, OAM, 512);

		waitForVblank();

	}

	return 0;
}

// Level-independant setup logic
void init() {

	REG_DISPCTL = MODE0 | BG2_ENABLE | SPRITE_ENABLE;

	REG_BG0CNT = CBB(0) | SBB(26) | BG_SIZE0 | COLOR256 | 0; 	// Priority 0
	REG_BG1CNT = CBB(1) | SBB(27) | BG_SIZE0 | COLOR256 | 1;	// Priority 1
	REG_BG2CNT = CBB(2) | SBB(28) | BG_SIZE1 | COLOR256 | 2;	// Priority 2 

	// Put Sprite on Screen
	loadSpritePalette(sprite_actorPal);
	DMANow(3, sprite_actorTiles, &CHARBLOCKBASE[4], sprite_actorTilesLen);

	// DMA background 0
	loadPalette(pause_screenPal);
	DMANow(3, pause_screenMap, &SCREENBLOCKBASE[26], pause_screenMapLen / 2);
	DMANow(3, pause_screenTiles, &CHARBLOCKBASE[0], pause_screenTilesLen / 2);

	// Initialize level-independant player values
	player.deltaRow = 1;
	player.deltaCol = 0;
	player.isRunning = 0;
	player.isJumping = 0;
	player.frameCount = 0;
	player.width = 16;
	player.height = 16;
	player.currentFrame = 0;
	player.facing = 0; 	// Facing to the right (1 is facing to the left)

	canJump = 0; // subject to change depending how beginning is designed

	hideSprites();

	// Season-indicator icon position for all levels
	icon.row = 5;
	icon.col = 219;

}

// Setting up the game from the beginning (splash screen -> level 0)
void setupGame() {

	state = SPLASH;

	season = NEUTRAL;

	currentLevel = 0;

	setupLevel();

}

// Level-dependent setup logic
void setupLevel() {

	// Level 0 is the only one that starts in NEUTRAL season
	if (currentLevel < 1 || (currentLevel > (NUMLEVELS - 2))) {
		season = NEUTRAL;
	}
	// Each level starts at an incrementally different season
	else {
		season = SPRING + (currentLevel % 4);
	}

	// Turn on snow or leaves when appropriate
	if (season >= FALL) {
		REG_DISPCTL |= BG1_ENABLE;

		if (season == FALL) {
			loadPalette(bg_fallPal);
			DMANow(3, bg_fallMap, &SCREENBLOCKBASE[27], bg_fallMapLen / 2);
			DMANow(3, bg_fallTiles, &CHARBLOCKBASE[1], bg_fallTilesLen / 2);
		}
		else { // season is WINTER
			loadPalette(bg_snowPal);
			DMANow(3, bg_snowMap, &SCREENBLOCKBASE[27], bg_snowMapLen / 2);
			DMANow(3, bg_snowTiles, &CHARBLOCKBASE[1], bg_snowTilesLen / 2);
		}
	}

	switch (currentLevel) {

		case 0:

			// DMA background 2 
			loadPalette(bg_00_neutralscrnPal);
		  	DMANow(3, bg_00_neutralscrnMap, &SCREENBLOCKBASE[28], bg_00_neutralscrnMapLen / 2);
		  	DMANow(3, bg_00_neutralscrnTiles, &CHARBLOCKBASE[2], bg_00_neutralscrnTilesLen / 2);

		  	// Spawn loction for this level
		  	player.row = 10;
			player.col = 112;

			vOff = 0;
			hOff = 0;

		break;

		case 1:

			loadPalette(bg_01_summerscrnPal);
			DMANow(3, bg_01_summerscrnMap, &SCREENBLOCKBASE[28], bg_00_summerscrnMapLen / 2);
		  	DMANow(3, bg_01_summerscrnTiles, &CHARBLOCKBASE[2], bg_00_summerscrnTilesLen / 2);

		  	player.row = 5;
		  	player.col = 112;

		  	vOff = 0;
		  	hOff = 104;

		break;

		case 2:

			loadPalette(bg_02_fallscrnPal);
			DMANow(3, bg_02_fallscrnMap, &SCREENBLOCKBASE[28], bg_02_fallscrnMapLen / 2);
			DMANow(3, bg_02_fallscrnTiles, &CHARBLOCKBASE[2], bg_02_fallscrnTilesLen / 2);

			player.row = 50;
			player.col = 112;

			vOff = 0;
			hOff = 184;

		break;

		case 3:

			loadPalette(bg_03_winterscrnPal);
			DMANow(3, bg_03_winterscrnMap, &SCREENBLOCKBASE[28], bg_03_winterscrnMapLen / 2);
			DMANow(3, bg_03_winterscrnTiles, &CHARBLOCKBASE[2], bg_03_winterscrnTilesLen / 2);

			player.row = 50;
			player.col = 112;

			vOff = 0;
			hOff = 120;

		break;

		case 4:

			loadPalette(bg_04_springscrnPal);
			DMANow(3, bg_04_springscrnMap, &SCREENBLOCKBASE[28], bg_04_springscrnMapLen / 2);
			DMANow(3, bg_04_springscrnTiles, &CHARBLOCKBASE[2], bg_04_springscrnTilesLen / 2);

			player.row = 50;
			player.col = 40;

			vOff = 0;
			hOff = 0;

		break;

		case 5:

			loadPalette(bg_05_summerscrnPal);
			DMANow(3, bg_05_summerscrnMap, &SCREENBLOCKBASE[28], bg_05_summerscrnMapLen / 2);
			DMANow(3, bg_05_summerscrnTiles, &CHARBLOCKBASE[2], bg_05_summerscrnTilesLen / 2);

			player.row = 30;
			player.col = 112;

			vOff = 0;
			hOff = 136;

		break;

		case 6:

			loadPalette(bg_06_fallscrnPal);
			DMANow(3, bg_06_fallscrnMap, &SCREENBLOCKBASE[28], bg_06_fallscrnMapLen / 2);
			DMANow(3, bg_06_fallscrnTiles, &CHARBLOCKBASE[2], bg_06_fallscrnTilesLen / 2);

			player.row = 30;
			player.col = 8;

			vOff = 0;
			hOff = 0;

		break;

		case 7:

			loadPalette(bg_07_winterscrnPal);
			DMANow(3, bg_07_winterscrnMap, &SCREENBLOCKBASE[28], bg_07_winterscrnMapLen / 2);
			DMANow(3, bg_07_winterscrnTiles, &CHARBLOCKBASE[2], bg_07_winterscrnTilesLen / 2);

			player.row = 30;
			player.col = 40;

			vOff = 0;
			hOff = 0;

		break;

		case 8:

			loadPalette(bg_08_springscrnPal);
			DMANow(3, bg_08_springscrnMap, &SCREENBLOCKBASE[28], bg_08_springscrnMapLen / 2);
			DMANow(3, bg_08_springscrnTiles, &CHARBLOCKBASE[2], bg_08_springscrnTilesLen / 2);

			player.row = 30;
			player.col = 112;

			vOff = 0;
			hOff = 96;

		break;

		case 9:

			loadPalette(bg_09_summerscrnPal);
			DMANow(3, bg_09_summerscrnMap, &SCREENBLOCKBASE[28], bg_09_summerscrnMapLen / 2);
			DMANow(3, bg_09_summerscrnTiles, &CHARBLOCKBASE[2], bg_09_summerscrnTilesLen / 2);

			player.row = 30;
			player.col = 112;

			vOff = 0;
			hOff = 128;

		break;

		case 10:

			loadPalette(bg_10_fallscrnPal);
			DMANow(3, bg_10_fallscrnMap, &SCREENBLOCKBASE[28], bg_10_fallscrnMapLen / 2);
			DMANow(3, bg_10_fallscrnTiles, &CHARBLOCKBASE[2], bg_10_fallscrnTilesLen / 2);

			player.row = 30;
			player.col = 112;

			vOff = 0;
			hOff = 128;

		break;

		case 11:

			loadPalette(bg_final_neutralscrnPal);
			DMANow(3, bg_final_neutralscrnMap, &SCREENBLOCKBASE[28], bg_final_neutralscrnMapLen / 2);
			DMANow(3, bg_final_neutralscrnTiles, &CHARBLOCKBASE[2], bg_final_neutralscrnTilesLen / 2);

			player.row = 30;
			player.col = 10;

			vOff = 0;
			hOff = 0;

		break;

	}



}

// Changes season based on real order of seasons
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
		shadowOAM[i].attr0 |= ATTR0_HIDE;
	}

}

void splash() {

	REG_DISPCTL = MODE4 | BG2_ENABLE;

	loadPalette(splash_screenPal);

	drawBackgroundImage4(splash_screenBitmap);

	while (1) {

		oldButtons = buttons;
		buttons = BUTTONS;

		if (BUTTON_PRESSED(BUTTON_START)) {

			init();
			setupGame();

			playSoundA(gameSong, GAMESONGLEN, GAMESONGFREQ, 1);
			playSoundB(menuSound, MENUSOUNDLEN, MENUSOUNDFREQ, 0);

			state = GAME;
			return;
		}

		if (BUTTON_PRESSED(BUTTON_SELECT)) {

			playSoundB(menuSound, MENUSOUNDLEN, MENUSOUNDFREQ, 0);

			state = INSTRUCTIONS;
			return;
		}

	}

}

void instructions() {

	REG_DISPCTL = MODE4 | BG2_ENABLE;

	loadPalette(instructionsPal);

	drawBackgroundImage4(instructionsBitmap);

	while(!BUTTON_HELD(BUTTON_B));

	playSoundB(menuSound, MENUSOUNDLEN, MENUSOUNDFREQ, 0);

	state = SPLASH;

}

void game() {


	// Reset running motion in case user stops pressing arrow key 
	player.isRunning = 0;

	// Running/moving speed
	if (player.frameCount % 4 == 0) {
		changeFrame();
	}


	// Button Handling
	if (BUTTON_PRESSED(BUTTON_A)) {

		// Only jump if player is not already jumping
		if (canJump && checkCollision()) {
			canJump = 0;	
			player.isJumping = 1;
			jumpFrameCounter = 30;

			playSoundB(jumpSound, JUMPSOUNDLEN, JUMPSOUNDFREQ, 0);
			jump();
		}
		

	}

	if (BUTTON_PRESSED(BUTTON_B)) {
		vBlankCount = 100;
		prevSeason = season;

		playSoundB(warpSound, WARPSOUNDLEN, WARPSOUNDFREQ, 0);

		state = SEASONCHANGE;
	}

	if (BUTTON_PRESSED(BUTTON_START)) {
		REG_DISPCTL ^= BG0_ENABLE;

		pauseSound();

		state = PAUSE;
	}

	// Change to neutral season - CHEAT MODE
	if (BUTTON_HELD(BUTTON_R) && BUTTON_HELD(BUTTON_L) && BUTTON_HELD(BUTTON_SELECT)) {
		vBlankCount = 100;
		prevSeason = -1;

		playSoundB(warpSound, WARPSOUNDLEN, WARPSOUNDFREQ, 0);

		state = SEASONCHANGE;
	}

	if (BUTTON_HELD(BUTTON_RIGHT)) {
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

	if (BUTTON_HELD(BUTTON_LEFT)) {
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
	// End of button handling


	// Jump handling
	if (player.isJumping) {
		jump();
	}

	/*
	if (!canJump && hOff < 272) {
		player.col += player.deltaCol;
	} 
	*/


	// Gravity and Collision
	if (!checkCollision() || player.isJumping) {


		player.isRunning = 0; // Stop running animation

		/*if (vOff <= 96 && player.row >= 80 - player.height / 2) { */
			vOff += player.deltaRow;
		//}
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


	// Gem collision detection - player wins current level
	if (checkWinCollision()) {
		playSoundB(winLevelSound, WINLEVELSOUNDLEN, WINLEVELSOUNDFREQ, 0);

		state = WINLEVEL;
	}
	

	// Standing still animation
	if (!player.isRunning) {
		player.currentFrame = 0;
	}

	// Running animation
	if (player.isRunning) {
		player.frameCount++;
	}

	// Seasonal BG1 Animations
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
    REG_SOUNDCNT_X = SND_ENABLED;

    REG_SOUNDCNT_H = SND_OUTPUT_RATIO_100 | 
                        DSA_OUTPUT_RATIO_100 | 
                        DSA_OUTPUT_TO_BOTH | 
                        DSA_TIMER0 | 
                        DSA_FIFO_RESET |
                        DSB_OUTPUT_RATIO_100 | 
                        DSB_OUTPUT_TO_BOTH | 
                        DSB_TIMER1 | 
                        DSB_FIFO_RESET;

    REG_SOUNDCNT_L = 0;
}

void playSoundA( const unsigned char* sound, int length, int frequency, int isLooping) {
    dma[1].cnt = 0;
        vbCountA = 0;
    
        int interval = 16777216/frequency;
    
        DMANow(1, sound, REG_FIFO_A, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);
    
        REG_TM0CNT = 0;
    
        REG_TM0D = -interval;
        REG_TM0CNT = TIMER_ON;
    
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

        DMANow(2, sound, REG_FIFO_B, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

        REG_TM1CNT = 0;
    
        REG_TM1D = -interval;
        REG_TM1CNT = TIMER_ON;
    
        soundB.data = sound;
        soundB.length = length;
        soundB.frequency = frequency;
        soundB.isPlaying = 1;
        soundB.loops = isLooping;
        soundB.duration = ((60*length)/frequency) - ((length/frequency)*3)-1;
        soundB.priority = 0;
}

void pauseSound() {
    REG_SOUNDCNT_H = REG_SOUNDCNT_H & ~(DSA_OUTPUT_TO_BOTH); 
    REG_SOUNDCNT_H = REG_SOUNDCNT_H & ~(DSB_OUTPUT_TO_BOTH);
}

void unpauseSound() {
    REG_SOUNDCNT_H = REG_SOUNDCNT_H | DSA_OUTPUT_TO_BOTH;
    REG_SOUNDCNT_H = REG_SOUNDCNT_H | DSB_OUTPUT_TO_BOTH;
}

void setupInterrupts() {
    REG_IME = 0;
    REG_INTERRUPT = (unsigned int)interruptHandler;
    REG_IE |= INT_VBLANK;
    REG_DISPSTAT |= INT_VBLANK_ENABLE;
    REG_IME = 1;
}

void interruptHandler() {
    REG_IME = 0;
    if(REG_IF & INT_VBLANK)
    {

                if (soundA.isPlaying && vbCountA < soundA.duration) { // Continue vbCount until duration is reached
                    vbCountA++;
                }
                // loop soundA
                else if (!soundA.isPlaying && soundA.loops) {
                    playSoundA(soundA.data, soundA.length, soundA.frequency, soundA.loops);
                }
                else { // stop soundA
                    soundA.isPlaying = 0;
                    vbCountA = 0;
                    REG_TM0CNT = 0;
                    dma[1].cnt = 0;
                }

                if (soundB.isPlaying && vbCountB < soundB.duration) {
                    vbCountB++;
                }
                // loop soundB
                else if (!soundB.isPlaying && soundB.loops) {
                    playSoundB(soundB.data, soundB.length, soundB.frequency, soundB.loops);
                }
                else { // stop soundB
                    soundB.isPlaying = 0;
                    vbCountB = 0;
                    REG_TM1CNT = 0;
                    dma[2].cnt = 0;
                }

                

        REG_IF = INT_VBLANK; 
    }

    REG_IME = 1;
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

	// Turn snow and falling leaves off
	if (season < FALL) {
		REG_DISPCTL &= ~(BG1_ENABLE);
	}

	switch (season) {

		case NEUTRAL:

			switch (currentLevel) {

				case 0:
					loadPalette(bg_00_neutralscrnPal);
				  	DMANow(3, bg_00_neutralscrnMap, &SCREENBLOCKBASE[28], bg_00_neutralscrnMapLen / 2);
				  	DMANow(3, bg_00_neutralscrnTiles, &CHARBLOCKBASE[2], bg_00_neutralscrnTilesLen / 2);
				break;

				case 1:
					loadPalette(bg_01_neutralscrnPal);
				  	DMANow(3, bg_01_neutralscrnMap, &SCREENBLOCKBASE[28], bg_01_neutralscrnMapLen / 2);
				  	DMANow(3, bg_01_neutralscrnTiles, &CHARBLOCKBASE[2], bg_01_neutralscrnTilesLen / 2);
				break;

				case 2:
					loadPalette(bg_02_neutralscrnPal);
				  	DMANow(3, bg_02_neutralscrnMap, &SCREENBLOCKBASE[28], bg_02_neutralscrnMapLen / 2);
				  	DMANow(3, bg_02_neutralscrnTiles, &CHARBLOCKBASE[2], bg_02_neutralscrnTilesLen / 2);
				break;

				case 3:
					loadPalette(bg_03_neutralscrnPal);
				  	DMANow(3, bg_03_neutralscrnMap, &SCREENBLOCKBASE[28], bg_03_neutralscrnMapLen / 2);
				  	DMANow(3, bg_03_neutralscrnTiles, &CHARBLOCKBASE[2], bg_03_neutralscrnTilesLen / 2);
				break;

				case 4:
					loadPalette(bg_04_springscrnPal);
				  	DMANow(3, bg_04_neutralscrnMap, &SCREENBLOCKBASE[28], bg_04_neutralscrnMapLen / 2);
				  	DMANow(3, bg_04_neutralscrnTiles, &CHARBLOCKBASE[2], bg_04_neutralscrnTilesLen / 2);
				break;

				case 5:
					loadPalette(bg_05_neutralscrnPal);
				  	DMANow(3, bg_05_neutralscrnMap, &SCREENBLOCKBASE[28], bg_05_neutralscrnMapLen / 2);
				  	DMANow(3, bg_05_neutralscrnTiles, &CHARBLOCKBASE[2], bg_05_neutralscrnTilesLen / 2);
				break;

				case 6:
					loadPalette(bg_06_neutralscrnPal);
				  	DMANow(3, bg_06_neutralscrnMap, &SCREENBLOCKBASE[28], bg_06_neutralscrnMapLen / 2);
				  	DMANow(3, bg_06_neutralscrnTiles, &CHARBLOCKBASE[2], bg_06_neutralscrnTilesLen / 2);
				break;

				case 7:
					loadPalette(bg_07_neutralscrnPal);
				  	DMANow(3, bg_07_neutralscrnMap, &SCREENBLOCKBASE[28], bg_07_neutralscrnMapLen / 2);
				  	DMANow(3, bg_07_neutralscrnTiles, &CHARBLOCKBASE[2], bg_07_neutralscrnTilesLen / 2);
				break;

				case 8:
					loadPalette(bg_08_neutralscrnPal);
				  	DMANow(3, bg_08_neutralscrnMap, &SCREENBLOCKBASE[28], bg_08_neutralscrnMapLen / 2);
				  	DMANow(3, bg_08_neutralscrnTiles, &CHARBLOCKBASE[2], bg_08_neutralscrnTilesLen / 2);
				break;

				case 9:
					loadPalette(bg_09_neutralscrnPal);
				  	DMANow(3, bg_09_neutralscrnMap, &SCREENBLOCKBASE[28], bg_09_neutralscrnMapLen / 2);
				  	DMANow(3, bg_09_neutralscrnTiles, &CHARBLOCKBASE[2], bg_09_neutralscrnTilesLen / 2);
				break;

				case 10:
					loadPalette(bg_10_neutralscrnPal);
				  	DMANow(3, bg_10_neutralscrnMap, &SCREENBLOCKBASE[28], bg_10_neutralscrnMapLen / 2);
				  	DMANow(3, bg_10_neutralscrnTiles, &CHARBLOCKBASE[2], bg_10_neutralscrnTilesLen / 2);
				break;

				case 11:
					loadPalette(bg_final_neutralscrnPal);
				  	DMANow(3, bg_final_neutralscrnMap, &SCREENBLOCKBASE[28], bg_final_neutralscrnMapLen / 2);
				  	DMANow(3, bg_final_neutralscrnTiles, &CHARBLOCKBASE[2], bg_final_neutralscrnTilesLen / 2);
				break;

			}

		break;

		case SPRING:

			switch (currentLevel) {

				case 0:
					loadPalette(bg_00_springscrnPal);
				  	DMANow(3, bg_00_springscrnMap, &SCREENBLOCKBASE[28], bg_00_springscrnMapLen / 2);
				  	DMANow(3, bg_00_springscrnTiles, &CHARBLOCKBASE[2], bg_00_springscrnTilesLen / 2);
				break;

				case 1:
					loadPalette(bg_01_springscrnPal);
				  	DMANow(3, bg_01_springscrnMap, &SCREENBLOCKBASE[28], bg_01_springscrnMapLen / 2);
				  	DMANow(3, bg_01_springscrnTiles, &CHARBLOCKBASE[2], bg_01_springscrnTilesLen / 2);
				break;

				case 2:
					loadPalette(bg_02_springscrnPal);
				  	DMANow(3, bg_02_springscrnMap, &SCREENBLOCKBASE[28], bg_02_springscrnMapLen / 2);
				  	DMANow(3, bg_02_springscrnTiles, &CHARBLOCKBASE[2], bg_02_springscrnTilesLen / 2);
				break;

				case 3:
					loadPalette(bg_03_springscrnPal);
				  	DMANow(3, bg_03_springscrnMap, &SCREENBLOCKBASE[28], bg_03_springscrnMapLen / 2);
				  	DMANow(3, bg_03_springscrnTiles, &CHARBLOCKBASE[2], bg_03_springscrnTilesLen / 2);
				break;

				case 4:
					loadPalette(bg_04_springscrnPal);
				  	DMANow(3, bg_04_springscrnMap, &SCREENBLOCKBASE[28], bg_04_springscrnMapLen / 2);
				  	DMANow(3, bg_04_springscrnTiles, &CHARBLOCKBASE[2], bg_04_springscrnTilesLen / 2);
				break;

				case 5:
					loadPalette(bg_05_springscrnPal);
				  	DMANow(3, bg_05_springscrnMap, &SCREENBLOCKBASE[28], bg_05_springscrnMapLen / 2);
				  	DMANow(3, bg_05_springscrnTiles, &CHARBLOCKBASE[2], bg_05_springscrnTilesLen / 2);
				break;

				case 6:
					loadPalette(bg_06_springscrnPal);
				  	DMANow(3, bg_06_springscrnMap, &SCREENBLOCKBASE[28], bg_06_springscrnMapLen / 2);
				  	DMANow(3, bg_06_springscrnTiles, &CHARBLOCKBASE[2], bg_06_springscrnTilesLen / 2);
				break;

				case 7:
					loadPalette(bg_07_springscrnPal);
				  	DMANow(3, bg_07_springscrnMap, &SCREENBLOCKBASE[28], bg_07_springscrnMapLen / 2);
				  	DMANow(3, bg_07_springscrnTiles, &CHARBLOCKBASE[2], bg_07_springscrnTilesLen / 2);
				break;

				case 8:
					loadPalette(bg_08_springscrnPal);
				  	DMANow(3, bg_08_springscrnMap, &SCREENBLOCKBASE[28], bg_08_springscrnMapLen / 2);
				  	DMANow(3, bg_08_springscrnTiles, &CHARBLOCKBASE[2], bg_08_springscrnTilesLen / 2);
				break;

				case 9:
					loadPalette(bg_09_springscrnPal);
				  	DMANow(3, bg_09_springscrnMap, &SCREENBLOCKBASE[28], bg_09_springscrnMapLen / 2);
				  	DMANow(3, bg_09_springscrnTiles, &CHARBLOCKBASE[2], bg_09_springscrnTilesLen / 2);
				break;

				case 10:
					loadPalette(bg_10_springscrnPal);
				  	DMANow(3, bg_10_springscrnMap, &SCREENBLOCKBASE[28], bg_10_springscrnMapLen / 2);
				  	DMANow(3, bg_10_springscrnTiles, &CHARBLOCKBASE[2], bg_10_springscrnTilesLen / 2);
				break;

				case 11:
					loadPalette(bg_final_springscrnPal);
				  	DMANow(3, bg_final_springscrnMap, &SCREENBLOCKBASE[28], bg_final_springscrnMapLen / 2);
				  	DMANow(3, bg_final_springscrnTiles, &CHARBLOCKBASE[2], bg_final_springscrnTilesLen / 2);
				break;


			}

		break;

		case SUMMER:

			switch (currentLevel) {

				case 0:
					loadPalette(bg_00_summerscrnPal);
				  	DMANow(3, bg_00_summerscrnMap, &SCREENBLOCKBASE[28], bg_00_summerscrnMapLen / 2);
				  	DMANow(3, bg_00_summerscrnTiles, &CHARBLOCKBASE[2], bg_00_summerscrnTilesLen / 2);
				break;

				case 1:
					loadPalette(bg_01_summerscrnPal);
				  	DMANow(3, bg_01_summerscrnMap, &SCREENBLOCKBASE[28], bg_01_summerscrnMapLen / 2);
				  	DMANow(3, bg_01_summerscrnTiles, &CHARBLOCKBASE[2], bg_01_summerscrnTilesLen / 2);
				break;

				case 2:
					loadPalette(bg_02_summerscrnPal);
				  	DMANow(3, bg_02_summerscrnMap, &SCREENBLOCKBASE[28], bg_02_summerscrnMapLen / 2);
				  	DMANow(3, bg_02_summerscrnTiles, &CHARBLOCKBASE[2], bg_02_summerscrnTilesLen / 2);
				break;

				case 3:
					loadPalette(bg_03_summerscrnPal);
				  	DMANow(3, bg_03_summerscrnMap, &SCREENBLOCKBASE[28], bg_03_summerscrnMapLen / 2);
				  	DMANow(3, bg_03_summerscrnTiles, &CHARBLOCKBASE[2], bg_03_summerscrnTilesLen / 2);
				break;

				case 4:
					loadPalette(bg_04_summerscrnPal);
				  	DMANow(3, bg_04_summerscrnMap, &SCREENBLOCKBASE[28], bg_04_summerscrnMapLen / 2);
				  	DMANow(3, bg_04_summerscrnTiles, &CHARBLOCKBASE[2], bg_04_summerscrnTilesLen / 2);
				break;

				case 5:
					loadPalette(bg_05_summerscrnPal);
				  	DMANow(3, bg_05_summerscrnMap, &SCREENBLOCKBASE[28], bg_05_summerscrnMapLen / 2);
				  	DMANow(3, bg_05_summerscrnTiles, &CHARBLOCKBASE[2], bg_05_summerscrnTilesLen / 2);
				break;

				case 6:
					loadPalette(bg_06_summerscrnPal);
				  	DMANow(3, bg_06_summerscrnMap, &SCREENBLOCKBASE[28], bg_06_summerscrnMapLen / 2);
				  	DMANow(3, bg_06_summerscrnTiles, &CHARBLOCKBASE[2], bg_06_summerscrnTilesLen / 2);
				break;

				case 7:
					loadPalette(bg_07_summerscrnPal);
				  	DMANow(3, bg_07_summerscrnMap, &SCREENBLOCKBASE[28], bg_07_summerscrnMapLen / 2);
				  	DMANow(3, bg_07_summerscrnTiles, &CHARBLOCKBASE[2], bg_07_summerscrnTilesLen / 2);
				break;

				case 8:
					loadPalette(bg_08_summerscrnPal);
				  	DMANow(3, bg_08_summerscrnMap, &SCREENBLOCKBASE[28], bg_08_summerscrnMapLen / 2);
				  	DMANow(3, bg_08_summerscrnTiles, &CHARBLOCKBASE[2], bg_08_summerscrnTilesLen / 2);
				break;

				case 9:
					loadPalette(bg_09_summerscrnPal);
				  	DMANow(3, bg_09_summerscrnMap, &SCREENBLOCKBASE[28], bg_09_summerscrnMapLen / 2);
				  	DMANow(3, bg_09_summerscrnTiles, &CHARBLOCKBASE[2], bg_09_summerscrnTilesLen / 2);
				break;

				case 10:
					loadPalette(bg_10_summerscrnPal);
				  	DMANow(3, bg_10_summerscrnMap, &SCREENBLOCKBASE[28], bg_10_summerscrnMapLen / 2);
				  	DMANow(3, bg_10_summerscrnTiles, &CHARBLOCKBASE[2], bg_10_summerscrnTilesLen / 2);
				break;

				case 11:
					loadPalette(bg_final_summerscrnPal);
				  	DMANow(3, bg_final_summerscrnMap, &SCREENBLOCKBASE[28], bg_final_summerscrnMapLen / 2);
				  	DMANow(3, bg_final_summerscrnTiles, &CHARBLOCKBASE[2], bg_final_summerscrnTilesLen / 2);
				break;

			}

		break;

		case FALL:

			// Turn on falling leaves
			REG_DISPCTL |= BG1_ENABLE;

			loadPalette(bg_fallPal);
			DMANow(3, bg_fallMap, &SCREENBLOCKBASE[27], bg_fallMapLen / 2);
			DMANow(3, bg_fallTiles, &CHARBLOCKBASE[1], bg_fallTilesLen / 2);

			switch (currentLevel) {

				case 0:
					loadPalette(bg_00_fallscrnPal);
				  	DMANow(3, bg_00_fallscrnMap, &SCREENBLOCKBASE[28], bg_00_fallscrnMapLen / 2);
				  	DMANow(3, bg_00_fallscrnTiles, &CHARBLOCKBASE[2], bg_00_fallscrnTilesLen / 2);
				break;

				case 1:
					loadPalette(bg_01_fallscrnPal);
					DMANow(3, bg_01_fallscrnMap, &SCREENBLOCKBASE[28], bg_01_fallscrnMapLen / 2);
				  	DMANow(3, bg_01_fallscrnTiles, &CHARBLOCKBASE[2], bg_01_fallscrnTilesLen / 2);
				break;

				case 2:
					loadPalette(bg_02_fallscrnPal);
					DMANow(3, bg_02_fallscrnMap, &SCREENBLOCKBASE[28], bg_02_fallscrnMapLen / 2);
				  	DMANow(3, bg_02_fallscrnTiles, &CHARBLOCKBASE[2], bg_02_fallscrnTilesLen / 2);
				break;

				case 3:
					loadPalette(bg_03_fallscrnPal);
					DMANow(3, bg_03_fallscrnMap, &SCREENBLOCKBASE[28], bg_03_fallscrnMapLen / 2);
				  	DMANow(3, bg_03_fallscrnTiles, &CHARBLOCKBASE[2], bg_03_fallscrnTilesLen / 2);
				break;

				case 4:
					loadPalette(bg_04_fallscrnPal);
					DMANow(3, bg_04_fallscrnMap, &SCREENBLOCKBASE[28], bg_04_fallscrnMapLen / 2);
				  	DMANow(3, bg_04_fallscrnTiles, &CHARBLOCKBASE[2], bg_04_fallscrnTilesLen / 2);
				break;

				case 5:
					loadPalette(bg_05_fallscrnPal);
					DMANow(3, bg_05_fallscrnMap, &SCREENBLOCKBASE[28], bg_05_fallscrnMapLen / 2);
				  	DMANow(3, bg_05_fallscrnTiles, &CHARBLOCKBASE[2], bg_05_fallscrnTilesLen / 2);
				break;

				case 6:
					loadPalette(bg_06_fallscrnPal);
					DMANow(3, bg_06_fallscrnMap, &SCREENBLOCKBASE[28], bg_06_fallscrnMapLen / 2);
				  	DMANow(3, bg_06_fallscrnTiles, &CHARBLOCKBASE[2], bg_06_fallscrnTilesLen / 2);
				break;

				case 7:
					loadPalette(bg_07_fallscrnPal);
					DMANow(3, bg_07_fallscrnMap, &SCREENBLOCKBASE[28], bg_07_fallscrnMapLen / 2);
				  	DMANow(3, bg_07_fallscrnTiles, &CHARBLOCKBASE[2], bg_07_fallscrnTilesLen / 2);
				break;

				case 8:
					loadPalette(bg_08_fallscrnPal);
					DMANow(3, bg_08_fallscrnMap, &SCREENBLOCKBASE[28], bg_08_fallscrnMapLen / 2);
				  	DMANow(3, bg_08_fallscrnTiles, &CHARBLOCKBASE[2], bg_08_fallscrnTilesLen / 2);
				break;

				case 9:
					loadPalette(bg_09_fallscrnPal);
					DMANow(3, bg_09_fallscrnMap, &SCREENBLOCKBASE[28], bg_09_fallscrnMapLen / 2);
				  	DMANow(3, bg_09_fallscrnTiles, &CHARBLOCKBASE[2], bg_09_fallscrnTilesLen / 2);
				break;

				case 10:
					loadPalette(bg_10_fallscrnPal);
					DMANow(3, bg_10_fallscrnMap, &SCREENBLOCKBASE[28], bg_10_fallscrnMapLen / 2);
				  	DMANow(3, bg_10_fallscrnTiles, &CHARBLOCKBASE[2], bg_10_fallscrnTilesLen / 2);
				break;

				case 11:
					loadPalette(bg_final_fallscrnPal);
					DMANow(3, bg_final_fallscrnMap, &SCREENBLOCKBASE[28], bg_final_fallscrnMapLen / 2);
				  	DMANow(3, bg_final_fallscrnTiles, &CHARBLOCKBASE[2], bg_final_fallscrnTilesLen / 2);
				break;

			}

		break;

		case WINTER:

			// Turn on snow
			REG_DISPCTL |= BG1_ENABLE;

			loadPalette(bg_snowPal);
			DMANow(3, bg_snowMap, &SCREENBLOCKBASE[27], bg_snowMapLen / 2);
			DMANow(3, bg_snowTiles, &CHARBLOCKBASE[1], bg_snowTilesLen / 2);

			switch (currentLevel) {

				case 0:
					loadPalette(bg_00_winterscrnPal);
				  	DMANow(3, bg_00_winterscrnMap, &SCREENBLOCKBASE[28], bg_00_winterscrnMapLen / 2);
				  	DMANow(3, bg_00_winterscrnTiles, &CHARBLOCKBASE[2], bg_00_winterscrnTilesLen / 2);
				break;

				case 1:
					loadPalette(bg_01_winterscrnPal);
					DMANow(3, bg_01_winterscrnMap, &SCREENBLOCKBASE[28], bg_01_winterscrnMapLen / 2);
				  	DMANow(3, bg_01_winterscrnTiles, &CHARBLOCKBASE[2], bg_01_winterscrnTilesLen / 2);
				break;

				case 2:
					loadPalette(bg_02_winterscrnPal);
					DMANow(3, bg_02_winterscrnMap, &SCREENBLOCKBASE[28], bg_02_winterscrnMapLen / 2);
				  	DMANow(3, bg_02_winterscrnTiles, &CHARBLOCKBASE[2], bg_02_winterscrnTilesLen / 2);
				break;

				case 3:
					loadPalette(bg_03_winterscrnPal);
					DMANow(3, bg_03_winterscrnMap, &SCREENBLOCKBASE[28], bg_03_winterscrnMapLen / 2);
				  	DMANow(3, bg_03_winterscrnTiles, &CHARBLOCKBASE[2], bg_03_winterscrnTilesLen / 2);
				break;

				case 4:
					loadPalette(bg_04_winterscrnPal);
					DMANow(3, bg_04_winterscrnMap, &SCREENBLOCKBASE[28], bg_04_winterscrnMapLen / 2);
				  	DMANow(3, bg_04_winterscrnTiles, &CHARBLOCKBASE[2], bg_04_winterscrnTilesLen / 2);
				break;

				case 5:
					loadPalette(bg_05_winterscrnPal);
					DMANow(3, bg_05_winterscrnMap, &SCREENBLOCKBASE[28], bg_05_winterscrnMapLen / 2);
				  	DMANow(3, bg_05_winterscrnTiles, &CHARBLOCKBASE[2], bg_05_winterscrnTilesLen / 2);
				break;

				case 6:
					loadPalette(bg_06_winterscrnPal);
					DMANow(3, bg_06_winterscrnMap, &SCREENBLOCKBASE[28], bg_06_winterscrnMapLen / 2);
				  	DMANow(3, bg_06_winterscrnTiles, &CHARBLOCKBASE[2], bg_06_winterscrnTilesLen / 2);
				break;

				case 7:
					loadPalette(bg_07_winterscrnPal);
					DMANow(3, bg_07_winterscrnMap, &SCREENBLOCKBASE[28], bg_07_winterscrnMapLen / 2);
				  	DMANow(3, bg_07_winterscrnTiles, &CHARBLOCKBASE[2], bg_07_winterscrnTilesLen / 2);
				break;

				case 8:
					loadPalette(bg_08_winterscrnPal);
					DMANow(3, bg_08_winterscrnMap, &SCREENBLOCKBASE[28], bg_08_winterscrnMapLen / 2);
				  	DMANow(3, bg_08_winterscrnTiles, &CHARBLOCKBASE[2], bg_08_winterscrnTilesLen / 2);
				break;

				case 9:
					loadPalette(bg_09_winterscrnPal);
					DMANow(3, bg_09_winterscrnMap, &SCREENBLOCKBASE[28], bg_09_winterscrnMapLen / 2);
				  	DMANow(3, bg_09_winterscrnTiles, &CHARBLOCKBASE[2], bg_09_winterscrnTilesLen / 2);
				break;

				case 10:
					loadPalette(bg_10_winterscrnPal);
					DMANow(3, bg_10_winterscrnMap, &SCREENBLOCKBASE[28], bg_10_winterscrnMapLen / 2);
				  	DMANow(3, bg_10_winterscrnTiles, &CHARBLOCKBASE[2], bg_10_winterscrnTilesLen / 2);
				break;

				case 11:
					loadPalette(bg_final_winterscrnPal);
					DMANow(3, bg_final_winterscrnMap, &SCREENBLOCKBASE[28], bg_final_winterscrnMapLen / 2);
				  	DMANow(3, bg_final_winterscrnTiles, &CHARBLOCKBASE[2], bg_final_winterscrnTilesLen / 2);
				break;

			}

		break;

	}

}

void pause() {



	while (1) {

		oldButtons = buttons;
		buttons = BUTTONS;

		if (BUTTON_PRESSED(BUTTON_START)) {

			REG_DISPCTL ^= BG0_ENABLE;
			unpauseSound();
			state = GAME;
			return;
		}

		if (BUTTON_PRESSED(BUTTON_SELECT)) {

			REG_DISPCTL ^= BG0_ENABLE;

			unpauseSound();

			playSoundA(titleSong, TITLESONGLEN, TITLESONGFREQ, 1);

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

				case 0:

					if (bg_00_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 1:

					if (bg_01_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 2:

					if (bg_02_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 3:

					if (bg_03_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 4:

					if (bg_04_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 5:

					if (bg_05_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 6:

					if (bg_06_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 7:

					if (bg_07_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 8:

					if (bg_08_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 9:

					if (bg_09_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 10:

					if (bg_10_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 11:

					if (bg_final_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

			}

		break;

		case SPRING:

			switch (currentLevel) {

				case 0:

					if (bg_00_springscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 1:

					if (bg_01_springscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 2:

					if (bg_02_springscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 3:

					if (bg_03_springscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 4:

					if (bg_04_springscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 6:

					if (bg_06_springscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 7:

					if (bg_07_springscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 8:

					if (bg_08_springscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 9:

					if (bg_09_springscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 10:

					if (bg_10_springscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 11:

					if (bg_final_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

			}

		break;

		case SUMMER:

			switch (currentLevel) {

				case 0:

					if (bg_00_summerscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 1:

					if (bg_01_summerscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 2:

					if (bg_02_summerscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 3:

					if (bg_03_summerscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 4:

					if (bg_04_summerscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 5:

					if (bg_05_summerscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 7:

					if (bg_07_summerscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 8:

					if (bg_08_summerscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 9:

					if (bg_09_summerscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 10:

					if (bg_10_summerscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 11:

					if (bg_final_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

			}

		break;

		case FALL:

			switch (currentLevel) {

				case 0:

					if (bg_00_fallscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 1:

					if (bg_01_fallscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 2:

					if (bg_02_fallscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 3:

					if (bg_03_fallscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 4:

					if (bg_04_fallscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 6:

					if (bg_06_fallscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 7:

					if (bg_07_fallscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 8:

					if (bg_08_fallscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 9:

					if (bg_09_fallscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 10:

					if (bg_10_fallscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 11:

					if (bg_final_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;


			}

		break;

		case WINTER:

			switch (currentLevel) {

				case 0:

					if (bg_00_winterscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 1:

					if (bg_01_winterscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;	

				case 2:

					if (bg_02_winterscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;	

				case 3:

					if (bg_03_winterscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;	

				case 4:

					if (bg_04_winterscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 6:

					if (bg_06_winterscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 7:

					if (bg_07_winterscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 8:

					if (bg_08_winterscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 9:

					if (bg_09_winterscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 10:

					if (bg_10_winterscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
						return 1;
					}

				break;

				case 11:

					if (bg_final_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == BLACK) {
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

				case 1:

					if (bg_01_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 2:

					if (bg_02_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 3:

					if (bg_03_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 4:

					if (bg_04_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 5:

					if (bg_05_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 6:

					if (bg_06_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 7:

					if (bg_07_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 8:

					if (bg_08_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 9:

					if (bg_09_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 10:

					if (bg_10_neutralscrn_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 11:

					if (bg_final_collisionBitmap[OFFSET(player.bigRow + player.height + 1, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

			}

		break;

		case SPRING:

			switch (currentLevel) {

				case 2:

					if (bg_02_springscrn_collisionBitmap[OFFSET(player.bigRow + 8, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 6:

					if (bg_06_springscrn_collisionBitmap[OFFSET(player.bigRow + 8, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 11:

					if (bg_final_collisionBitmap[OFFSET(player.bigRow + 8, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

			}

		break;

		case SUMMER:

			switch (currentLevel) {

				case 1:

					if (bg_01_summerscrn_collisionBitmap[OFFSET(player.bigRow + 8, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 11:

					if (bg_final_collisionBitmap[OFFSET(player.bigRow + 8, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

			}

		break;

		case FALL:

			switch (currentLevel) {

				case 3:

					if (bg_03_fallscrn_collisionBitmap[OFFSET(player.bigRow + 8, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 4:

					if (bg_04_fallscrn_collisionBitmap[OFFSET(player.bigRow + 8, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 5:

					if (bg_05_fallscrn_collisionBitmap[OFFSET(player.bigRow + 8, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 8:

					if (bg_08_fallscrn_collisionBitmap[OFFSET(player.bigRow + 8, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 11:

					if (bg_final_collisionBitmap[OFFSET(player.bigRow + 8, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

			}

		break;

		case WINTER:

			switch (currentLevel) {

				case 0:

					if (bg_00_winterscrn_collisionBitmap[OFFSET(player.bigRow + 8, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 7:

					if (bg_07_winterscrn_collisionBitmap[OFFSET(player.bigRow + 8, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 9:

					if (bg_09_winterscrn_collisionBitmap[OFFSET(player.bigRow + 8, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 10:

					if (bg_10_winterscrn_collisionBitmap[OFFSET(player.bigRow + 8, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

				case 11:

					if (bg_final_collisionBitmap[OFFSET(player.bigRow + 8, player.bigCol + 8, 512)] == RED) {
						return 1;
					}

				break;

			}

		break;

	}

	return 0;

}

void winLevel() {

	REG_DISPCTL = MODE4 | BG2_ENABLE;

	loadPalette(win_level_screenPal);

	drawBackgroundImage4(win_level_screenBitmap);

	while (1) {

		oldButtons = buttons;
		buttons = BUTTONS;

		if (BUTTON_PRESSED(BUTTON_A)) {

			if (currentLevel + 1 < NUMLEVELS) {

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

		if (BUTTON_PRESSED(BUTTON_SELECT)) {

			playSoundB(menuSound, MENUSOUNDLEN, MENUSOUNDFREQ, 0);

			playSoundA(titleSong, TITLESONGLEN, TITLESONGFREQ, 1);

			state = SPLASH;
			return;
		}

	}

}

void gameEnd() {

	REG_DISPCTL = MODE4 | BG2_ENABLE;

	loadPalette(game_end_screenPal);

	drawBackgroundImage4(game_end_screenBitmap);

	while(1) {

		oldButtons = buttons;
		buttons = BUTTONS;

		if (BUTTON_PRESSED(BUTTON_A)) {

			playSoundB(menuSound, MENUSOUNDLEN, MENUSOUNDFREQ, 0);

			playSoundA(titleSong, TITLESONGLEN, TITLESONGFREQ, 1);

			state = SPLASH;
			return;
		}

	}

}

void lose() {

	REG_DISPCTL = MODE4 | BG2_ENABLE;

	loadPalette(gameover_screenPal);

	drawBackgroundImage4(gameover_screenBitmap);

	while (1) {

		oldButtons = buttons;
		buttons = BUTTONS;

		if (BUTTON_PRESSED(BUTTON_A)) {

			init();
			setupLevel();

			state = GAME;
			return;
		}

		if (BUTTON_PRESSED(BUTTON_SELECT)) {

			playSoundB(menuSound, MENUSOUNDLEN, MENUSOUNDFREQ, 0);

			playSoundA(titleSong, TITLESONGLEN, TITLESONGFREQ, 1);

			state = SPLASH;
			return;
		}

	}

}