
//{{BLOCK(pause_screen)

//======================================================================
//
//	pause_screen, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 73 tiles (t reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4672 + 2048 = 7232
//
//	Time-stamp: 2015-04-08, 22:42:31
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSE_SCREEN_H
#define GRIT_PAUSE_SCREEN_H

#define pause_screenTilesLen 4672
extern const unsigned short pause_screenTiles[2336];

#define pause_screenMapLen 2048
extern const unsigned short pause_screenMap[1024];

#define pause_screenPalLen 512
extern const unsigned short pause_screenPal[256];

#endif // GRIT_PAUSE_SCREEN_H

//}}BLOCK(pause_screen)
