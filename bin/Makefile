PRODUCT_NAME       = OffSeason
SOURCES            = main.c lib.c sprite_actor.c splash_screen.c instructions.c pause_screen.c win_level_screen.c game_end_screen.c gameover_screen.c titleSong.c gameSong.c jumpSound.c warpSound.c winLevelSound.c menuSound.c bg_snow.c bg_fall.c bg_00_neutralscrn.c bg_00_springscrn.c bg_00_summerscrn.c bg_00_fallscrn.c bg_00_winterscrn.c bg_00_neutralscrn_collision.c bg_00_springscrn_collision.c bg_00_summerscrn_collision.c bg_00_fallscrn_collision.c bg_00_winterscrn_collision.c bg_01_neutralscrn.c bg_01_springscrn.c bg_01_summerscrn.c bg_01_fallscrn.c bg_01_winterscrn.c bg_01_neutralscrn_collision.c bg_01_springscrn_collision.c bg_01_summerscrn_collision.c bg_01_fallscrn_collision.c bg_01_winterscrn_collision.c bg_02_neutralscrn.c bg_02_springscrn.c bg_02_summerscrn.c bg_02_fallscrn.c bg_02_winterscrn.c bg_02_neutralscrn_collision.c bg_02_springscrn_collision.c bg_02_summerscrn_collision.c bg_02_fallscrn_collision.c bg_02_winterscrn_collision.c bg_03_neutralscrn.c bg_03_springscrn.c bg_03_summerscrn.c bg_03_fallscrn.c bg_03_winterscrn.c bg_03_neutralscrn_collision.c bg_03_springscrn_collision.c bg_03_summerscrn_collision.c bg_03_fallscrn_collision.c bg_03_winterscrn_collision.c bg_04_neutralscrn.c bg_04_springscrn.c bg_04_summerscrn.c bg_04_fallscrn.c bg_04_winterscrn.c bg_04_neutralscrn_collision.c bg_04_springscrn_collision.c bg_04_summerscrn_collision.c bg_04_fallscrn_collision.c bg_04_winterscrn_collision.c bg_05_neutralscrn.c bg_05_springscrn.c bg_05_summerscrn.c bg_05_fallscrn.c bg_05_winterscrn.c bg_05_neutralscrn_collision.c bg_05_springscrn_collision.c bg_05_summerscrn_collision.c bg_05_fallscrn_collision.c bg_05_winterscrn_collision.c bg_06_neutralscrn.c bg_06_springscrn.c bg_06_summerscrn.c bg_06_fallscrn.c bg_06_winterscrn.c bg_06_neutralscrn_collision.c bg_06_springscrn_collision.c bg_06_summerscrn_collision.c bg_06_fallscrn_collision.c bg_06_winterscrn_collision.c bg_07_neutralscrn.c bg_07_springscrn.c bg_07_summerscrn.c bg_07_fallscrn.c bg_07_winterscrn.c bg_07_neutralscrn_collision.c bg_07_springscrn_collision.c bg_07_summerscrn_collision.c bg_07_fallscrn_collision.c bg_07_winterscrn_collision.c bg_08_neutralscrn.c bg_08_springscrn.c bg_08_summerscrn.c bg_08_fallscrn.c bg_08_winterscrn.c bg_08_neutralscrn_collision.c bg_08_springscrn_collision.c bg_08_summerscrn_collision.c bg_08_fallscrn_collision.c bg_08_winterscrn_collision.c bg_09_neutralscrn.c bg_09_springscrn.c bg_09_summerscrn.c bg_09_fallscrn.c bg_09_winterscrn.c bg_09_neutralscrn_collision.c bg_09_springscrn_collision.c bg_09_summerscrn_collision.c bg_09_fallscrn_collision.c bg_09_winterscrn_collision.c bg_10_neutralscrn.c bg_10_springscrn.c bg_10_summerscrn.c bg_10_fallscrn.c bg_10_winterscrn.c bg_10_neutralscrn_collision.c bg_10_springscrn_collision.c bg_10_summerscrn_collision.c bg_10_fallscrn_collision.c bg_10_winterscrn_collision.c bg_final_neutralscrn.c bg_final_springscrn.c bg_final_summerscrn.c bg_final_fallscrn.c bg_final_winterscrn.c bg_final_collision.c
DKPATH             = C:/devkitARM/bin
CCPATH             = C:/cygwin64/bin
VBASIM             = C:/vba/VisualBoyAdvance.exe
FIND               = find
COPY               = cp -r

# --- File Names
ELF_NAME           = $(PRODUCT_NAME).elf
ROM_NAME           = $(PRODUCT_NAME).gba
BIN_NAME           = $(PRODUCT_NAME)

#MODEL              = -mthumb-interwork -mthumb
MODEL              = -mthumb-interwork -marm -mlong-calls #This makes interrupts work
SPECS              = -specs=gba.specs

# --- Archiver
AS                 = $(DKPATH)/arm-eabi-as
ASFLAGS            = -mthumb-interwork

# --- Compiler
CC                 = $(DKPATH)/arm-eabi-gcc
CFLAGS             = $(MODEL) -O2 -Wall -pedantic -Wextra -std=c99 -save-temps -D_ROM=$(ROM_NAME) -D_VBA=$(VBASIM) 


# --- Linker
LD                 = $(DKPATH)/arm-eabi-gcc
LDFLAGS            = $(SPECS) $(MODEL) -lm

# --- Object/Executable Packager
OBJCOPY            = $(DKPATH)/arm-eabi-objcopy
OBJCOPYFLAGS       = -O binary

# --- ROM Fixer
GBAFIX             = $(DKPATH)/gbafix

# --- Delete
RM                 = rm -f

OBJECTS = $(SOURCES:.c=.o)


# --- Main build target

all : clean build 

run : $(ROM_NAME)
	$(VBASIM) $(ROM_NAME)


build : $(ROM_NAME)

# --- Build .elf file into .gba ROM file
$(ROM_NAME) : $(ELF_NAME)
	$(OBJCOPY) $(OBJCOPYFLAGS) $(ELF_NAME) $(ROM_NAME)
	$(GBAFIX) $(ROM_NAME)

# --- Build .o files into .elf file
$(ELF_NAME) : $(OBJECTS)
	$(LD) $(OBJECTS) $(LDFLAGS) -o $@

# -- Build .c files into .o files
$(OBJECTS) : %.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@



clean:
	$(RM) $(ROM_NAME)
	$(RM) $(ELF_NAME)
	$(RM) $(BIN_NAME)
	$(RM) *.o