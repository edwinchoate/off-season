#include "lib.h"
#include "sprite_actor.h"
#include "splash_screen.h"
#include "instructions.h"
#include "pause_screen.h"
#include "gameover_screen.h"
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


#define NUMLEVELS 1

// Game States
enum {SPLASH, INSTRUCTIONS, GAME, SEASONCHANGE, PAUSE, LOSE, WIN, CHEAT};
int state;

// Seasons
enum {NEUTRAL, SPRING, SUMMER, FALL, WINTER};
int season;
int prevSeason;

// Level Variables
int currentLevel;

// Vertical Blank Counter - used for animations
int vBlankCount;
int jumpFrameCounter;
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

// Gem Object
typedef struct {
	int row;
	int col;
	int bigRow;
	int bigCol;
	int season;
} GEM;

// Gem array
GEM gems[NUMLEVELS];

int hOff=0;
int vOff=0;

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

// State Functions 
void splash();
void instructions();
void game();
void seasonChange();
void pause();
void lose();
void win();
void cheat();

// Game-specific Helper Functions
void incrementSeason();
void warpAnimation();
void jump();
int checkCollision();	// 0 is falling (not collided), 1 is standing (collided)


/***************************************

Milestone 04

***************************************/

int main() {

	// Start game with splash screen
	splash();


	// Main Game Loop
	while (1) {

		oldButtons = buttons;
		buttons = BUTTONS;

		// Update player row and column
		player.bigRow = player.row + vOff;
		player.bigCol = player.col + hOff;

		/* 
		player.row = player.bigRow - vOff;
		player.col = player.bigCol - hOff;
		*/

		// Update gem row and column
		gems[currentLevel].row = gems[currentLevel].bigRow - vOff;
		gems[currentLevel].col = gems[currentLevel].bigCol - hOff;

		/*
		gems[currentLevel].bigRow = gems[currentLevel].row + vOff;
		gems[currentLevel].bigCol = gems[currentLevel].col + hOff;
		*/

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

			case WIN:

			break;

			case CHEAT:

			break;
		}

		

		// Shadow OAM Handling
		// Player Sprite
		shadowOAM[0].attr0 = (ROWMASK & player.row) | ATTR0_SQUARE;
		shadowOAM[0].attr1 = (COLMASK & player.col) | ATTR1_SIZE16 | (ATTR1_HFLIP & (player.facing << 12));
		shadowOAM[0].attr2 = (SPRITEOFFSET16(season * 2, player.currentFrame * 2)) | (1 << 10);	// Priority 1


		REG_BG2HOFS = hOff;
        REG_BG2VOFS = vOff;
        
        //Copy the shadowOAM into the OAM
        DMANow(3, &shadowOAM, OAM, 512);

		waitForVblank();

	}

	return 0;
}

// Sets registers, initializes sprites and background
void init() {

	REG_DISPCTL = MODE0 | BG2_ENABLE | SPRITE_ENABLE;

	REG_BG0CNT = CBB(0) | SBB(27) | BG_SIZE0 | COLOR256 | 0; 	// Priority 0
	REG_BG2CNT = CBB(2) | SBB(28) | BG_SIZE1 | COLOR256 | 2;	// Priority 2 

	// Put Sprite on Screen
	loadSpritePalette(sprite_actorPal);
	DMANow(3, sprite_actorTiles, &CHARBLOCKBASE[4], sprite_actorTilesLen);

	// DMA background 0
	loadPalette(pause_screenPal);
	DMANow(3, pause_screenMap, &SCREENBLOCKBASE[27], pause_screenMapLen / 2);
	DMANow(3, pause_screenTiles, &CHARBLOCKBASE[0], pause_screenTilesLen / 2);

	// Initialize level-independant player values
	player.deltaRow = 2;
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

	vOff = 0;
	hOff = 0;

}

// Setting up the game from the beginning (level 0)
void setupGame() {

	state = SPLASH;

	season = NEUTRAL;

	currentLevel = 0;

	setupLevel();

}

// Level-dependent logic
void setupLevel() {

	// Level 0 is the only one that starts in NEUTRAL season
	if (currentLevel < 1) {
		season = NEUTRAL;
	}
	// Each level starts at a different season
	else {
		season = SPRING + (currentLevel % 4);
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

			gems[0].bigRow = 1120;
			gems[0].bigCol = 112;
			gems[0].season = WINTER;

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

			state = GAME;
			return;
		}

		if (BUTTON_PRESSED(BUTTON_SELECT)) {

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
			jump();
		}
		

	}

	if (BUTTON_PRESSED(BUTTON_B)) {
		vBlankCount = 200;
		prevSeason = season;

		state = SEASONCHANGE;
	}

	if (BUTTON_PRESSED(BUTTON_START)) {
		REG_DISPCTL ^= BG0_ENABLE;
		state = PAUSE;
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

	if (!canJump && hOff < 272) {
		player.col += player.deltaCol;
	}


	// Gravity and Collision
	if (!checkCollision() || player.isJumping) {

		player.isRunning = 0; // Stop running animation

		if (!player.isJumping && vOff <= 96 && player.row >= 80 - player.height / 2) {
			vOff += player.deltaRow;
		}
		else if (player.row < 160) {
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
	
	

	// Standing still animation
	if (!player.isRunning) {
		player.currentFrame = 0;
	}

	// Running animation
	if (player.isRunning) {
		player.frameCount++;
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

void warpAnimation() {

	if (vBlankCount % 10) {
		incrementSeason();
	}

	vBlankCount--;

}	

void seasonChange() {

	season = prevSeason;
	incrementSeason();

	// Current level GEM Sprite
	if (season == gems[currentLevel].season) {
		shadowOAM[1].attr0 = (ROWMASK & gems[currentLevel].row) | ATTR0_SQUARE;
		shadowOAM[1].attr1 = (COLMASK & gems[currentLevel].col) | ATTR1_SIZE16; 
		shadowOAM[1].attr2 = ((SPRITEOFFSET16(0, 6)) | (1 << 10));
	}
	else {
		hideSprites();
	}

	switch (season) {

		case SPRING:

			switch (currentLevel) {

				case 0:
					loadPalette(bg_00_springscrnPal);
				  	DMANow(3, bg_00_springscrnMap, &SCREENBLOCKBASE[28], bg_00_springscrnMapLen / 2);
				  	DMANow(3, bg_00_springscrnTiles, &CHARBLOCKBASE[2], bg_00_springscrnTilesLen / 2);
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

			}

		break;

		case FALL:

			switch (currentLevel) {

				case 0:
					loadPalette(bg_00_fallscrnPal);
				  	DMANow(3, bg_00_fallscrnMap, &SCREENBLOCKBASE[28], bg_00_fallscrnMapLen / 2);
				  	DMANow(3, bg_00_fallscrnTiles, &CHARBLOCKBASE[2], bg_00_fallscrnTilesLen / 2);
				break;

			}

		break;

		case WINTER:

			switch (currentLevel) {

				case 0:
					loadPalette(bg_00_winterscrnPal);
				  	DMANow(3, bg_00_winterscrnMap, &SCREENBLOCKBASE[28], bg_00_winterscrnMapLen / 2);
				  	DMANow(3, bg_00_winterscrnTiles, &CHARBLOCKBASE[2], bg_00_winterscrnTilesLen / 2);
				break;

			}

		break;

		case NEUTRAL:

			switch (currentLevel) {

				case 0:
					loadPalette(bg_00_neutralscrnPal);
				  	DMANow(3, bg_00_neutralscrnMap, &SCREENBLOCKBASE[28], bg_00_neutralscrnMapLen / 2);
				  	DMANow(3, bg_00_neutralscrnTiles, &CHARBLOCKBASE[2], bg_00_neutralscrnTilesLen / 2);
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
			state = GAME;
			return;
		}

		if (BUTTON_PRESSED(BUTTON_SELECT)) {

			REG_DISPCTL ^= BG0_ENABLE;
			state = SPLASH;
			return;
		}

	}

}

void jump() {

	if (jumpFrameCounter > 0) {
		player.isJumping = 1;
		player.deltaRow = -2;
		jumpFrameCounter--;
	}
	else {
		player.isJumping = 0;
		player.deltaRow = 2;
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
					else {
						return 0;
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
					else {
						return 0;
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
					else {
						return 0;
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
					else {
						return 0;
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
					else {
						return 0;
					}

				break;

			}

		break;

	}


	return 0;

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

		if (BUTTON_PRESSED(BUTTON_B)) {

			state = SPLASH;
			return;
		}

	}

}