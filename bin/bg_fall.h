
//{{BLOCK(bg_fall)

//======================================================================
//
//	bg_fall, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 32 tiles (t reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2048 + 2048 = 4608
//
//	Time-stamp: 2015-04-14, 14:44:28
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG_FALL_H
#define GRIT_BG_FALL_H

#define bg_fallTilesLen 2048
extern const unsigned short bg_fallTiles[1024];

#define bg_fallMapLen 2048
extern const unsigned short bg_fallMap[1024];

#define bg_fallPalLen 512
extern const unsigned short bg_fallPal[256];

#endif // GRIT_BG_FALL_H

//}}BLOCK(bg_fall)
