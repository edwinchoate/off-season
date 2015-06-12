	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	init
	.type	init, %function
init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	ip, #6784	@ movhi
	mov	r1, #7040
	mov	r2, #23552
	stmfd	sp!, {r4, lr}
	add	r1, r1, #5
	strh	ip, [r3, #8]	@ movhi
	add	r2, r2, #138
	mov	ip, #5120	@ movhi
	strh	ip, [r3, #0]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	ldr	r0, .L5
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, .L5+4
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	ldr	r4, .L5+8
	ldr	r1, .L5+12
	add	r2, r2, #65536
	mov	r3, #32768
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r0, .L5+16
	ldr	r3, .L5+20
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L5+24
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L5+28
	mov	r2, #100663296
	mov	r3, #2336
	mov	lr, pc
	bx	r4
	ldr	r2, .L5+32
	mov	r3, #0
	mov	r1, #16
	mov	r0, #1
	str	r0, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #24]
	str	r3, [r2, #28]
	str	r3, [r2, #32]
	str	r1, [r2, #36]
	str	r1, [r2, #40]
	str	r3, [r2, #48]
	str	r3, [r2, #44]
	ldr	r2, .L5+36
	str	r3, [r2, #0]
	ldr	r2, .L5+40
.L2:
	ldrh	r1, [r2, r3]
	orr	r1, r1, #512
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L2
	ldr	r3, .L5+44
	mov	r2, #5
	str	r2, [r3, #0]
	mov	r2, #219
	str	r2, [r3, #4]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L6:
	.align	2
.L5:
	.word	sprite_actorPal
	.word	loadSpritePalette
	.word	DMANow
	.word	sprite_actorTiles
	.word	pause_screenPal
	.word	loadPalette
	.word	pause_screenMap
	.word	pause_screenTiles
	.word	player
	.word	canJump
	.word	shadowOAM
	.word	icon
	.size	init, .-init
	.align	2
	.global	setupLevel
	.type	setupLevel, %function
setupLevel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L31
	ldr	r3, [r4, #0]
	cmp	r3, #1
	ble	.L28
	cmp	r3, #10
	bgt	.L29
	and	r5, r3, #3
	add	r5, r5, #1
	ldr	r2, .L31+4
	cmp	r5, #2
	str	r5, [r2, #0]
	ble	.L11
	mov	r3, #67108864
	ldrh	r2, [r3, #0]
	cmp	r5, #3
	orr	r2, r2, #512
	strh	r2, [r3, #0]	@ movhi
	beq	.L30
	ldr	r0, .L31+8
	ldr	r3, .L31+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L31+16
	add	r2, r2, #55296
	mov	r3, #1024
	ldr	r5, .L31+20
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r3, #704
	mov	r0, #3
	ldr	r1, .L31+24
	add	r2, r2, #16384
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #0]
.L11:
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L7
.L25:
	.word	.L14
	.word	.L15
	.word	.L16
	.word	.L17
	.word	.L18
	.word	.L19
	.word	.L20
	.word	.L21
	.word	.L22
	.word	.L23
	.word	.L24
.L29:
	ldr	r2, .L31+4
	mov	r1, #1
	str	r1, [r2, #0]
	b	.L11
.L24:
	ldr	r0, .L31+28
	ldr	r3, .L31+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L31+32
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L31+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	ldr	r1, .L31+36
	add	r2, r2, #32768
	mov	r3, #704
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L31+40
	mov	r1, #30
	str	r1, [r2, #0]
	mov	r3, #0
	mov	r1, #10
.L27:
	str	r1, [r2, #4]
	ldr	r2, .L31+44
	str	r3, [r2, #0]
	ldr	r2, .L31+48
	str	r3, [r2, #0]
.L7:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L28:
	ldr	r2, .L31+4
	mov	r1, #0
	str	r1, [r2, #0]
	b	.L11
.L23:
	ldr	r0, .L31+52
	ldr	r3, .L31+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L31+56
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L31+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	ldr	r1, .L31+60
	mov	r0, #3
	add	r2, r2, #32768
	mov	r3, #224
.L26:
	mov	lr, pc
	bx	r4
	ldr	r3, .L31+40
	mov	r2, #30
	str	r2, [r3, #0]
	mov	r2, #112
	str	r2, [r3, #4]
	ldr	r3, .L31+44
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L31+48
	mov	r2, #128
	str	r2, [r3, #0]
	b	.L7
.L22:
	ldr	r0, .L31+64
	ldr	r3, .L31+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L31+68
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L31+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L31+72
	add	r2, r2, #32768
	mov	r3, #608
	b	.L26
.L21:
	ldr	r0, .L31+76
	ldr	r3, .L31+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L31+80
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L31+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	add	r2, r2, #32768
	mov	r3, #224
	mov	r0, #3
	ldr	r1, .L31+84
	mov	lr, pc
	bx	r4
	ldr	r3, .L31+40
	mov	r2, #30
	str	r2, [r3, #0]
	mov	r2, #112
	str	r2, [r3, #4]
	ldr	r3, .L31+44
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L31+48
	mov	r2, #96
	str	r2, [r3, #0]
	b	.L7
.L20:
	ldr	r0, .L31+88
	ldr	r3, .L31+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L31+92
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L31+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	ldr	r1, .L31+96
	add	r2, r2, #32768
	mov	r3, #480
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L31+40
	mov	r1, #30
	str	r1, [r2, #0]
	mov	r3, #0
	mov	r1, #40
	b	.L27
.L19:
	ldr	r0, .L31+100
	ldr	r3, .L31+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L31+104
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L31+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	ldr	r1, .L31+108
	add	r2, r2, #32768
	mov	r3, #224
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L31+40
	mov	r1, #30
	str	r1, [r2, #0]
	mov	r3, #0
	mov	r1, #8
	b	.L27
.L18:
	ldr	r0, .L31+112
	ldr	r3, .L31+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L31+116
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L31+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	add	r2, r2, #32768
	mov	r3, #192
	mov	r0, #3
	ldr	r1, .L31+120
	mov	lr, pc
	bx	r4
	ldr	r3, .L31+40
	mov	r2, #30
	str	r2, [r3, #0]
	mov	r2, #112
	str	r2, [r3, #4]
	ldr	r3, .L31+44
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L31+48
	mov	r2, #136
	str	r2, [r3, #0]
	b	.L7
.L17:
	ldr	r0, .L31+124
	ldr	r3, .L31+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L31+128
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L31+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	ldr	r1, .L31+132
	add	r2, r2, #32768
	mov	r3, #224
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L31+40
	mov	r1, #50
	str	r1, [r2, #0]
	mov	r3, #0
	mov	r1, #40
	b	.L27
.L16:
	ldr	r0, .L31+136
	ldr	r3, .L31+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L31+140
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L31+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	add	r2, r2, #32768
	mov	r3, #352
	mov	r0, #3
	ldr	r1, .L31+144
	mov	lr, pc
	bx	r4
	ldr	r3, .L31+40
	mov	r2, #50
	str	r2, [r3, #0]
	mov	r2, #112
	str	r2, [r3, #4]
	ldr	r3, .L31+44
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L31+48
	mov	r2, #120
	str	r2, [r3, #0]
	b	.L7
.L15:
	ldr	r0, .L31+148
	ldr	r3, .L31+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L31+152
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L31+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	add	r2, r2, #32768
	mov	r3, #480
	mov	r0, #3
	ldr	r1, .L31+156
	mov	lr, pc
	bx	r4
	ldr	r3, .L31+40
	mov	r2, #50
	str	r2, [r3, #0]
	mov	r2, #112
	str	r2, [r3, #4]
	ldr	r3, .L31+44
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L31+48
	mov	r2, #184
	str	r2, [r3, #0]
	b	.L7
.L14:
	ldr	r0, .L31+160
	ldr	r3, .L31+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L31+164
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L31+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	ldr	r1, .L31+168
	add	r2, r2, #32768
	mov	r3, #1920
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L31+40
	mov	r1, #10
	str	r1, [r2, #0]
	mov	r3, #0
	mov	r1, #112
	b	.L27
.L30:
	ldr	r0, .L31+172
	ldr	r3, .L31+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, r5
	ldr	r1, .L31+176
	add	r2, r2, #55296
	mov	r3, #1024
	ldr	r6, .L31+20
	mov	lr, pc
	bx	r6
	mov	r2, #100663296
	mov	r3, #1024
	mov	r0, r5
	ldr	r1, .L31+180
	add	r2, r2, #16384
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #0]
	b	.L11
.L32:
	.align	2
.L31:
	.word	currentLevel
	.word	season
	.word	bg_snowPal
	.word	loadPalette
	.word	bg_snowMap
	.word	DMANow
	.word	bg_snowTiles
	.word	bg_final_springscrnPal
	.word	bg_final_springscrnMap
	.word	bg_final_springscrnTiles
	.word	player
	.word	vOff
	.word	hOff
	.word	bg_10_fallscrnPal
	.word	bg_10_fallscrnMap
	.word	bg_10_fallscrnTiles
	.word	bg_09_summerscrnPal
	.word	bg_09_summerscrnMap
	.word	bg_09_summerscrnTiles
	.word	bg_08_springscrnPal
	.word	bg_08_springscrnMap
	.word	bg_08_springscrnTiles
	.word	bg_07_winterscrnPal
	.word	bg_07_winterscrnMap
	.word	bg_07_winterscrnTiles
	.word	bg_06_fallscrnPal
	.word	bg_06_fallscrnMap
	.word	bg_06_fallscrnTiles
	.word	bg_05_summerscrnPal
	.word	bg_05_summerscrnMap
	.word	bg_05_summerscrnTiles
	.word	bg_04_springscrnPal
	.word	bg_04_springscrnMap
	.word	bg_04_springscrnTiles
	.word	bg_03_winterscrnPal
	.word	bg_03_winterscrnMap
	.word	bg_03_winterscrnTiles
	.word	bg_02_fallscrnPal
	.word	bg_02_fallscrnMap
	.word	bg_02_fallscrnTiles
	.word	bg_00_neutralscrnPal
	.word	bg_00_neutralscrnMap
	.word	bg_00_neutralscrnTiles
	.word	bg_fallPal
	.word	bg_fallMap
	.word	bg_fallTiles
	.size	setupLevel, .-setupLevel
	.align	2
	.global	setupGame
	.type	setupGame, %function
setupGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L34
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, .L34+4
	str	r3, [r2, #0]
	ldr	r3, .L34+8
	mov	r2, #1
	str	r2, [r3, #0]
	b	setupLevel
.L35:
	.align	2
.L34:
	.word	state
	.word	season
	.word	currentLevel
	.size	setupGame, .-setupGame
	.align	2
	.global	incrementSeason
	.type	incrementSeason, %function
incrementSeason:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L39
	ldr	r2, [r3, #0]
	cmp	r2, #3
	movgt	r2, #1
	addle	r2, r2, #1
	strgt	r2, [r3, #0]
	strle	r2, [r3, #0]
	bx	lr
.L40:
	.align	2
.L39:
	.word	season
	.size	incrementSeason, .-incrementSeason
	.align	2
	.global	hideSprites
	.type	hideSprites, %function
hideSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L44
	mov	r3, #0
.L42:
	ldrh	r1, [r2, r3]
	orr	r1, r1, #512
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L42
	bx	lr
.L45:
	.align	2
.L44:
	.word	shadowOAM
	.size	hideSprites, .-hideSprites
	.align	2
	.global	changeFrame
	.type	changeFrame, %function
changeFrame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L49
	ldr	r2, [r3, #48]
	cmp	r2, #1
	movgt	r2, #0
	addle	r2, r2, #1
	strgt	r2, [r3, #48]
	strle	r2, [r3, #48]
	bx	lr
.L50:
	.align	2
.L49:
	.word	player
	.size	changeFrame, .-changeFrame
	.align	2
	.global	setupSounds
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r2, #1264
	mov	r3, #67108864
	sub	r2, r2, #1
	mov	r1, #128	@ movhi
	strh	r1, [r3, #132]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	mov	r2, #0	@ movhi
	strh	r2, [r3, #128]	@ movhi
	bx	lr
	.size	setupSounds, .-setupSounds
	.global	__aeabi_idiv
	.align	2
	.global	playSoundA
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L53
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	ip, [ip, #0]
	mov	r4, #0
	add	ip, ip, #12
	str	r4, [ip, #8]
	ldr	ip, .L53+4
	mov	sl, r0
	mov	r7, #67108864
	mov	r6, r2
	mov	r5, r1
	add	r2, r7, #160
	mov	r9, r3
	add	r7, r7, #256
	mov	r3, #910163968
	mov	r0, #1
	mov	r1, sl
	str	r4, [ip, #0]
	ldr	ip, .L53+8
	mov	lr, pc
	bx	ip
	ldr	r8, .L53+12
	mov	r1, r6
	mov	r0, #16777216
	strh	r4, [r7, #2]	@ movhi
	mov	lr, pc
	bx	r8
	rsb	r3, r0, #0
	mov	r3, r3, asl #16
	ldr	fp, .L53+16
	mov	r3, r3, lsr #16
	strh	r3, [r7, #0]	@ movhi
	mov	r3, #128	@ movhi
	str	sl, [fp, #0]
	rsb	r0, r5, r5, asl #4
	strh	r3, [r7, #2]	@ movhi
	mov	r3, #1
	mov	r1, r6
	str	r6, [fp, #8]
	str	r3, [fp, #12]
	mov	r0, r0, asl #2
	str	r5, [fp, #4]
	str	r9, [fp, #16]
	mov	lr, pc
	bx	r8
	mov	r1, r6
	sub	r6, r0, #1
	mov	r0, r5
	mov	lr, pc
	bx	r8
	sub	r0, r0, r0, asl #2
	add	r6, r6, r0
	str	r6, [fp, #20]
	str	r4, [fp, #24]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L54:
	.align	2
.L53:
	.word	dma
	.word	vbCountA
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundA
	.size	playSoundA, .-playSoundA
	.align	2
	.global	playSoundB
	.type	playSoundB, %function
playSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L56
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	ip, [ip, #0]
	mov	r4, #0
	add	ip, ip, #24
	str	r4, [ip, #8]
	ldr	ip, .L56+4
	mov	sl, r0
	mov	r7, #67108864
	mov	r6, r2
	mov	r5, r1
	add	r2, r7, #164
	mov	r9, r3
	add	r7, r7, #256
	mov	r3, #910163968
	mov	r0, #2
	mov	r1, sl
	str	r4, [ip, #0]
	ldr	ip, .L56+8
	mov	lr, pc
	bx	ip
	ldr	r8, .L56+12
	mov	r1, r6
	mov	r0, #16777216
	strh	r4, [r7, #6]	@ movhi
	mov	lr, pc
	bx	r8
	rsb	r3, r0, #0
	mov	r3, r3, asl #16
	ldr	fp, .L56+16
	mov	r3, r3, lsr #16
	strh	r3, [r7, #4]	@ movhi
	mov	r3, #128	@ movhi
	str	sl, [fp, #0]
	rsb	r0, r5, r5, asl #4
	strh	r3, [r7, #6]	@ movhi
	mov	r3, #1
	mov	r1, r6
	str	r6, [fp, #8]
	str	r3, [fp, #12]
	mov	r0, r0, asl #2
	str	r5, [fp, #4]
	str	r9, [fp, #16]
	mov	lr, pc
	bx	r8
	mov	r1, r6
	sub	r6, r0, #1
	mov	r0, r5
	mov	lr, pc
	bx	r8
	sub	r0, r0, r0, asl #2
	add	r6, r6, r0
	str	r6, [fp, #20]
	str	r4, [fp, #24]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L57:
	.align	2
.L56:
	.word	dma
	.word	vbCountB
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundB
	.size	playSoundB, .-playSoundB
	.align	2
	.global	interruptHandler
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	mov	r3, #67108864
	add	r3, r3, #512
	ldrh	r2, [r3, #2]
	tst	r2, #1
	mov	r2, #0	@ movhi
	strh	r2, [r3, #8]	@ movhi
	beq	.L59
	ldr	r2, .L72
	ldr	r3, [r2, #12]
	cmp	r3, #0
	beq	.L60
	ldr	r0, .L72+4
	ldr	r1, [r2, #20]
	ldr	r3, [r0, #0]
	cmp	r1, r3
	addgt	r3, r3, #1
	strgt	r3, [r0, #0]
	bgt	.L62
.L61:
	ldr	r3, .L72+8
	ldr	ip, [r3, #0]
	mov	r1, #67108864
	mov	r3, #0
	add	r1, r1, #256
	add	ip, ip, #12
	str	r3, [r2, #12]
	str	r3, [r0, #0]
	strh	r3, [r1, #2]	@ movhi
	str	r3, [ip, #8]
.L62:
	ldr	r2, .L72+12
	ldr	r3, [r2, #12]
	cmp	r3, #0
	bne	.L70
	ldr	r3, [r2, #16]
	cmp	r3, #0
	ldreq	r0, .L72+16
	bne	.L71
.L64:
	ldr	r3, .L72+8
	ldr	ip, [r3, #0]
	mov	r1, #67108864
	mov	r3, #0
	add	r1, r1, #256
	add	ip, ip, #24
	str	r3, [r2, #12]
	str	r3, [r0, #0]
	strh	r3, [r1, #6]	@ movhi
	str	r3, [ip, #8]
.L65:
	mov	r3, #67108864
	add	r3, r3, #512
	mov	r2, #1	@ movhi
	strh	r2, [r3, #2]	@ movhi
.L59:
	mov	r3, #67108864
	add	r3, r3, #512
	mov	r2, #1	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldmfd	sp!, {r3, lr}
	bx	lr
.L60:
	ldr	r3, [r2, #16]
	cmp	r3, #0
	ldreq	r0, .L72+4
	beq	.L61
	ldmia	r2, {r0, r1, r2}	@ phole ldm
	bl	playSoundA
	b	.L62
.L70:
	ldr	r0, .L72+16
	ldr	r1, [r2, #20]
	ldr	r3, [r0, #0]
	cmp	r1, r3
	addgt	r3, r3, #1
	strgt	r3, [r0, #0]
	bgt	.L65
	b	.L64
.L71:
	ldmia	r2, {r0, r1, r2}	@ phole ldm
	bl	playSoundB
	b	.L65
.L73:
	.align	2
.L72:
	.word	soundA
	.word	vbCountA
	.word	dma
	.word	soundB
	.word	vbCountB
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	instructions
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #1024
	stmfd	sp!, {r4, lr}
	add	r3, r3, #4
	mov	r4, #67108864
	ldr	r0, .L77
	strh	r3, [r4, #0]	@ movhi
	ldr	r3, .L77+4
	mov	lr, pc
	bx	r3
	ldr	r0, .L77+8
	ldr	r3, .L77+12
	mov	lr, pc
	bx	r3
.L75:
	ldr	r3, [r4, #304]
	tst	r3, #2
	bne	.L75
	mov	r1, #2096
	mov	r2, #11008
	add	r2, r2, #17
	mov	r3, #0
	ldr	r0, .L77+16
	add	r1, r1, #6
	bl	playSoundB
	ldr	r3, .L77+20
	mov	r2, #0
	str	r2, [r3, #0]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L78:
	.align	2
.L77:
	.word	instructionsPal
	.word	loadPalette
	.word	instructionsBitmap
	.word	drawBackgroundImage4
	.word	menuSound
	.word	state
	.size	instructions, .-instructions
	.align	2
	.global	splash
	.type	splash, %function
splash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #1024
	stmfd	sp!, {r4, lr}
	add	r3, r3, #4
	mov	r4, #67108864
	ldr	r0, .L86
	strh	r3, [r4, #0]	@ movhi
	ldr	r3, .L86+4
	mov	lr, pc
	bx	r3
	ldr	r0, .L86+8
	ldr	r3, .L86+12
	mov	lr, pc
	bx	r3
	ldr	r1, .L86+16
	ldr	ip, .L86+20
	ldr	r3, [r1, #0]
	mov	r0, r4
.L80:
	ldr	r2, [r0, #304]
	tst	r3, #8
	str	r3, [ip, #0]
	str	r2, [r1, #0]
	beq	.L81
	ands	r4, r2, #8
	beq	.L84
.L81:
	tst	r3, #4
	beq	.L83
	ands	r3, r2, #4
	beq	.L85
.L83:
	mov	r3, r2
	b	.L80
.L84:
	bl	init
	bl	setupGame
	mov	r1, #888832
	add	r1, r1, #544
	mov	r2, #11008
	ldr	r0, .L86+24
	add	r1, r1, #2
	add	r2, r2, #17
	mov	r3, #1
	bl	playSoundA
	mov	r1, #2096
	mov	r2, #11008
	add	r2, r2, #17
	mov	r3, r4
	ldr	r0, .L86+28
	add	r1, r1, #6
	bl	playSoundB
	ldr	r3, .L86+32
	mov	r2, #2
	str	r2, [r3, #0]
.L79:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L85:
	mov	r1, #2096
	mov	r2, #11008
	add	r2, r2, #17
	ldr	r0, .L86+28
	add	r1, r1, #6
	bl	playSoundB
	ldr	r3, .L86+32
	mov	r2, #1
	str	r2, [r3, #0]
	b	.L79
.L87:
	.align	2
.L86:
	.word	splash_screenPal
	.word	loadPalette
	.word	splash_screenBitmap
	.word	drawBackgroundImage4
	.word	buttons
	.word	oldButtons
	.word	gameSong
	.word	menuSound
	.word	state
	.size	splash, .-splash
	.align	2
	.global	pauseSound
	.type	pauseSound, %function
pauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
	ldrh	r3, [r2, #130]
	bic	r3, r3, #768
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [r2, #130]	@ movhi
	ldrh	r3, [r2, #130]
	bic	r3, r3, #12288
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [r2, #130]	@ movhi
	bx	lr
	.size	pauseSound, .-pauseSound
	.align	2
	.global	unpauseSound
	.type	unpauseSound, %function
unpauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldrh	r2, [r3, #130]
	orr	r2, r2, #768
	strh	r2, [r3, #130]	@ movhi
	ldrh	r2, [r3, #130]
	orr	r2, r2, #12288
	strh	r2, [r3, #130]	@ movhi
	bx	lr
	.size	unpauseSound, .-unpauseSound
	.align	2
	.global	setupInterrupts
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
	add	r3, r2, #512
	str	r4, [sp, #-4]!
	ldrh	r0, [r2, #4]
	ldrh	ip, [r3, #0]
	mov	r1, #50331648
	ldr	r4, .L91
	add	r1, r1, #28672
	orr	ip, ip, #1
	orr	r0, r0, #8
	str	r4, [r1, #4092]
	strh	ip, [r3, #0]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	mov	r2, #1	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldmfd	sp!, {r4}
	bx	lr
.L92:
	.align	2
.L91:
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.align	2
	.global	warpAnimation
	.type	warpAnimation, %function
warpAnimation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L96
	ldr	r1, .L96+4
	ldr	r3, [r2, #0]
	smull	r0, r1, r3, r1
	mov	r0, r3, asr #31
	rsb	r1, r0, r1, asr #1
	add	r1, r1, r1, asl #2
	cmp	r3, r1
	beq	.L94
	ldr	r1, .L96+8
	ldr	r0, [r1, #0]
	cmp	r0, #3
	movgt	r0, #1
	addle	r0, r0, #1
	strgt	r0, [r1, #0]
	strle	r0, [r1, #0]
.L94:
	sub	r3, r3, #1
	str	r3, [r2, #0]
	bx	lr
.L97:
	.align	2
.L96:
	.word	vBlankCount
	.word	1717986919
	.word	season
	.size	warpAnimation, .-warpAnimation
	.align	2
	.global	seasonChange
	.type	seasonChange, %function
seasonChange:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r3, .L169
	ldr	r3, [r3, #0]
	ldr	r2, .L169+4
	cmp	r3, #3
	movgt	r3, #1
	strgt	r3, [r2, #0]
	bgt	.L100
	add	r3, r3, #1
	cmp	r3, #2
	str	r3, [r2, #0]
	ble	.L100
.L101:
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L98
.L108:
	.word	.L103
	.word	.L104
	.word	.L105
	.word	.L106
	.word	.L107
.L167:
	ldr	r0, .L169+8
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+12
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+16
	add	r2, r2, #32768
	mov	r3, #448
	mov	lr, pc
	bx	r4
.L98:
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L100:
	mov	r2, #67108864
	ldrh	r1, [r2, #0]
	bic	r1, r1, #512
	strh	r1, [r2, #0]	@ movhi
	b	.L101
.L107:
	mov	r3, #67108864
	ldrh	r2, [r3, #0]
	orr	r2, r2, #512
	strh	r2, [r3, #0]	@ movhi
	ldr	r0, .L169+20
	ldr	r5, .L169+24
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+28
	add	r2, r2, #55296
	mov	r3, #1024
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r3, #704
	mov	r0, #3
	ldr	r1, .L169+36
	add	r2, r2, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L169+40
	ldr	r3, [r3, #0]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L98
.L168:
	.word	.L157
	.word	.L158
	.word	.L159
	.word	.L160
	.word	.L161
	.word	.L162
	.word	.L163
	.word	.L164
	.word	.L165
	.word	.L166
	.word	.L167
.L103:
	ldr	r3, .L169+40
	ldr	r3, [r3, #0]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L98
.L120:
	.word	.L109
	.word	.L110
	.word	.L111
	.word	.L112
	.word	.L113
	.word	.L114
	.word	.L115
	.word	.L116
	.word	.L117
	.word	.L118
	.word	.L119
.L104:
	ldr	r3, .L169+40
	ldr	r3, [r3, #0]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L98
.L132:
	.word	.L121
	.word	.L122
	.word	.L123
	.word	.L124
	.word	.L125
	.word	.L126
	.word	.L127
	.word	.L128
	.word	.L129
	.word	.L130
	.word	.L131
.L105:
	ldr	r3, .L169+40
	ldr	r3, [r3, #0]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L98
.L144:
	.word	.L133
	.word	.L134
	.word	.L135
	.word	.L136
	.word	.L137
	.word	.L138
	.word	.L139
	.word	.L140
	.word	.L141
	.word	.L142
	.word	.L143
.L106:
	mov	r3, #67108864
	ldrh	r2, [r3, #0]
	orr	r2, r2, #512
	strh	r2, [r3, #0]	@ movhi
	ldr	r0, .L169+44
	ldr	r5, .L169+24
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+48
	add	r2, r2, #55296
	mov	r3, #1024
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L169+52
	add	r2, r2, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L169+40
	ldr	r3, [r3, #0]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L98
.L156:
	.word	.L145
	.word	.L146
	.word	.L147
	.word	.L148
	.word	.L149
	.word	.L150
	.word	.L151
	.word	.L152
	.word	.L153
	.word	.L154
	.word	.L155
.L155:
	ldr	r0, .L169+56
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+60
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+64
	add	r2, r2, #32768
	mov	r3, #576
	mov	lr, pc
	bx	r4
	b	.L98
.L154:
	ldr	r0, .L169+68
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+72
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+76
	add	r2, r2, #32768
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L98
.L153:
	ldr	r0, .L169+80
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+84
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+88
	add	r2, r2, #32768
	mov	r3, #608
	mov	lr, pc
	bx	r4
	b	.L98
.L152:
	ldr	r0, .L169+92
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+96
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+100
	add	r2, r2, #32768
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L98
.L151:
	ldr	r0, .L169+104
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+108
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+112
	add	r2, r2, #32768
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L98
.L150:
	ldr	r0, .L169+116
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+120
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+124
	add	r2, r2, #32768
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L98
.L149:
	ldr	r0, .L169+128
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+132
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+136
	add	r2, r2, #32768
	mov	r3, #192
	mov	lr, pc
	bx	r4
	b	.L98
.L148:
	ldr	r0, .L169+140
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+144
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+148
	add	r2, r2, #32768
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L98
.L147:
	ldr	r0, .L169+152
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+156
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+160
	add	r2, r2, #32768
	mov	r3, #608
	mov	lr, pc
	bx	r4
	b	.L98
.L146:
	ldr	r0, .L169+164
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+168
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+172
	add	r2, r2, #32768
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L98
.L145:
	ldr	r0, .L169+176
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+180
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+184
	add	r2, r2, #32768
	mov	r3, #1632
	mov	lr, pc
	bx	r4
	b	.L98
.L143:
	ldr	r0, .L169+188
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+192
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+196
	add	r2, r2, #32768
	mov	r3, #576
	mov	lr, pc
	bx	r4
	b	.L98
.L142:
	ldr	r0, .L169+200
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+204
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+208
	add	r2, r2, #32768
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L98
.L141:
	ldr	r0, .L169+212
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+216
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+220
	add	r2, r2, #32768
	mov	r3, #608
	mov	lr, pc
	bx	r4
	b	.L98
.L140:
	ldr	r0, .L169+224
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+228
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+232
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L98
.L139:
	ldr	r0, .L169+236
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+240
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+244
	add	r2, r2, #32768
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L98
.L138:
	ldr	r0, .L169+248
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+252
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+256
	add	r2, r2, #32768
	mov	r3, #96
	mov	lr, pc
	bx	r4
	b	.L98
.L137:
	ldr	r0, .L169+260
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+264
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+268
	add	r2, r2, #32768
	mov	r3, #192
	mov	lr, pc
	bx	r4
	b	.L98
.L136:
	ldr	r0, .L169+272
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+276
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+280
	add	r2, r2, #32768
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L98
.L135:
	ldr	r0, .L169+284
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+288
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+292
	add	r2, r2, #32768
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L98
.L134:
	ldr	r0, .L169+296
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+300
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+304
	add	r2, r2, #32768
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L98
.L133:
	ldr	r0, .L169+308
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+312
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+316
	add	r2, r2, #32768
	mov	r3, #1792
	mov	lr, pc
	bx	r4
	b	.L98
.L131:
	ldr	r0, .L169+320
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+324
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+328
	add	r2, r2, #32768
	mov	r3, #704
	mov	lr, pc
	bx	r4
	b	.L98
.L130:
	ldr	r0, .L169+332
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+336
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+340
	add	r2, r2, #32768
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L98
.L129:
	ldr	r0, .L169+344
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+348
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+352
	add	r2, r2, #32768
	mov	r3, #736
	mov	lr, pc
	bx	r4
	b	.L98
.L128:
	ldr	r0, .L169+356
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+360
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+364
	add	r2, r2, #32768
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L98
.L127:
	ldr	r0, .L169+368
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+372
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+376
	add	r2, r2, #32768
	mov	r3, #608
	mov	lr, pc
	bx	r4
	b	.L98
.L126:
	ldr	r0, .L169+380
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+384
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+388
	add	r2, r2, #32768
	mov	r3, #576
	mov	lr, pc
	bx	r4
	b	.L98
.L125:
	ldr	r0, .L169+392
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+396
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+400
	add	r2, r2, #32768
	mov	r3, #64
	mov	lr, pc
	bx	r4
	b	.L98
.L124:
	ldr	r0, .L169+532
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+404
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+408
	add	r2, r2, #32768
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L98
.L123:
	ldr	r0, .L169+412
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+416
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+420
	add	r2, r2, #32768
	mov	r3, #608
	mov	lr, pc
	bx	r4
	b	.L98
.L122:
	ldr	r0, .L169+424
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+428
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+432
	add	r2, r2, #32768
	mov	r3, #736
	mov	lr, pc
	bx	r4
	b	.L98
.L121:
	ldr	r0, .L169+436
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+440
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+444
	add	r2, r2, #32768
	mov	r3, #2432
	mov	lr, pc
	bx	r4
	b	.L98
.L119:
	ldr	r0, .L169+448
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+452
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+456
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L98
.L118:
	ldr	r0, .L169+460
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+464
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+468
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L98
.L117:
	ldr	r0, .L169+472
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+476
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+480
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L98
.L116:
	ldr	r0, .L169+484
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+488
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+492
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L98
.L170:
	.align	2
.L169:
	.word	prevSeason
	.word	season
	.word	bg_final_winterscrnPal
	.word	bg_final_winterscrnMap
	.word	bg_final_winterscrnTiles
	.word	bg_snowPal
	.word	loadPalette
	.word	bg_snowMap
	.word	DMANow
	.word	bg_snowTiles
	.word	currentLevel
	.word	bg_fallPal
	.word	bg_fallMap
	.word	bg_fallTiles
	.word	bg_final_fallscrnPal
	.word	bg_final_fallscrnMap
	.word	bg_final_fallscrnTiles
	.word	bg_10_fallscrnPal
	.word	bg_10_fallscrnMap
	.word	bg_10_fallscrnTiles
	.word	bg_09_fallscrnPal
	.word	bg_09_fallscrnMap
	.word	bg_09_fallscrnTiles
	.word	bg_08_fallscrnPal
	.word	bg_08_fallscrnMap
	.word	bg_08_fallscrnTiles
	.word	bg_07_fallscrnPal
	.word	bg_07_fallscrnMap
	.word	bg_07_fallscrnTiles
	.word	bg_06_fallscrnPal
	.word	bg_06_fallscrnMap
	.word	bg_06_fallscrnTiles
	.word	bg_05_fallscrnPal
	.word	bg_05_fallscrnMap
	.word	bg_05_fallscrnTiles
	.word	bg_04_fallscrnPal
	.word	bg_04_fallscrnMap
	.word	bg_04_fallscrnTiles
	.word	bg_03_fallscrnPal
	.word	bg_03_fallscrnMap
	.word	bg_03_fallscrnTiles
	.word	bg_02_fallscrnPal
	.word	bg_02_fallscrnMap
	.word	bg_02_fallscrnTiles
	.word	bg_00_fallscrnPal
	.word	bg_00_fallscrnMap
	.word	bg_00_fallscrnTiles
	.word	bg_final_summerscrnPal
	.word	bg_final_summerscrnMap
	.word	bg_final_summerscrnTiles
	.word	bg_10_summerscrnPal
	.word	bg_10_summerscrnMap
	.word	bg_10_summerscrnTiles
	.word	bg_09_summerscrnPal
	.word	bg_09_summerscrnMap
	.word	bg_09_summerscrnTiles
	.word	bg_08_summerscrnPal
	.word	bg_08_summerscrnMap
	.word	bg_08_summerscrnTiles
	.word	bg_07_summerscrnPal
	.word	bg_07_summerscrnMap
	.word	bg_07_summerscrnTiles
	.word	bg_06_summerscrnPal
	.word	bg_06_summerscrnMap
	.word	bg_06_summerscrnTiles
	.word	bg_05_summerscrnPal
	.word	bg_05_summerscrnMap
	.word	bg_05_summerscrnTiles
	.word	bg_04_summerscrnPal
	.word	bg_04_summerscrnMap
	.word	bg_04_summerscrnTiles
	.word	bg_03_summerscrnPal
	.word	bg_03_summerscrnMap
	.word	bg_03_summerscrnTiles
	.word	bg_02_summerscrnPal
	.word	bg_02_summerscrnMap
	.word	bg_02_summerscrnTiles
	.word	bg_00_summerscrnPal
	.word	bg_00_summerscrnMap
	.word	bg_00_summerscrnTiles
	.word	bg_final_springscrnPal
	.word	bg_final_springscrnMap
	.word	bg_final_springscrnTiles
	.word	bg_10_springscrnPal
	.word	bg_10_springscrnMap
	.word	bg_10_springscrnTiles
	.word	bg_09_springscrnPal
	.word	bg_09_springscrnMap
	.word	bg_09_springscrnTiles
	.word	bg_08_springscrnPal
	.word	bg_08_springscrnMap
	.word	bg_08_springscrnTiles
	.word	bg_07_springscrnPal
	.word	bg_07_springscrnMap
	.word	bg_07_springscrnTiles
	.word	bg_06_springscrnPal
	.word	bg_06_springscrnMap
	.word	bg_06_springscrnTiles
	.word	bg_05_springscrnPal
	.word	bg_05_springscrnMap
	.word	bg_05_springscrnTiles
	.word	bg_04_springscrnMap
	.word	bg_04_springscrnTiles
	.word	bg_03_springscrnPal
	.word	bg_03_springscrnMap
	.word	bg_03_springscrnTiles
	.word	bg_02_springscrnPal
	.word	bg_02_springscrnMap
	.word	bg_02_springscrnTiles
	.word	bg_00_springscrnPal
	.word	bg_00_springscrnMap
	.word	bg_00_springscrnTiles
	.word	bg_final_neutralscrnPal
	.word	bg_final_neutralscrnMap
	.word	bg_final_neutralscrnTiles
	.word	bg_10_neutralscrnPal
	.word	bg_10_neutralscrnMap
	.word	bg_10_neutralscrnTiles
	.word	bg_09_neutralscrnPal
	.word	bg_09_neutralscrnMap
	.word	bg_09_neutralscrnTiles
	.word	bg_08_neutralscrnPal
	.word	bg_08_neutralscrnMap
	.word	bg_08_neutralscrnTiles
	.word	bg_07_neutralscrnPal
	.word	bg_07_neutralscrnMap
	.word	bg_07_neutralscrnTiles
	.word	bg_06_neutralscrnPal
	.word	bg_06_neutralscrnMap
	.word	bg_06_neutralscrnTiles
	.word	bg_05_neutralscrnPal
	.word	bg_05_neutralscrnMap
	.word	bg_05_neutralscrnTiles
	.word	bg_04_springscrnPal
	.word	bg_04_neutralscrnMap
	.word	bg_04_neutralscrnTiles
	.word	bg_03_neutralscrnPal
	.word	bg_03_neutralscrnMap
	.word	bg_03_neutralscrnTiles
	.word	bg_02_neutralscrnPal
	.word	bg_02_neutralscrnMap
	.word	bg_02_neutralscrnTiles
	.word	bg_00_neutralscrnPal
	.word	loadPalette
	.word	bg_00_neutralscrnMap
	.word	DMANow
	.word	bg_00_neutralscrnTiles
	.word	bg_10_winterscrnPal
	.word	bg_10_winterscrnMap
	.word	bg_10_winterscrnTiles
	.word	bg_09_winterscrnPal
	.word	bg_09_winterscrnMap
	.word	bg_09_winterscrnTiles
	.word	bg_08_winterscrnPal
	.word	bg_08_winterscrnMap
	.word	bg_08_winterscrnTiles
	.word	bg_07_winterscrnPal
	.word	bg_07_winterscrnMap
	.word	bg_07_winterscrnTiles
	.word	bg_06_winterscrnPal
	.word	bg_06_winterscrnMap
	.word	bg_06_winterscrnTiles
	.word	bg_05_winterscrnPal
	.word	bg_05_winterscrnMap
	.word	bg_05_winterscrnTiles
	.word	bg_04_winterscrnPal
	.word	bg_04_winterscrnMap
	.word	bg_04_winterscrnTiles
	.word	bg_03_winterscrnPal
	.word	bg_03_winterscrnMap
	.word	bg_03_winterscrnTiles
	.word	bg_02_winterscrnPal
	.word	bg_02_winterscrnMap
	.word	bg_02_winterscrnTiles
	.word	bg_00_winterscrnPal
	.word	bg_00_winterscrnMap
	.word	bg_00_winterscrnTiles
.L115:
	ldr	r0, .L169+496
	ldr	r3, .L169+572
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+500
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+580
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+504
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L98
.L114:
	ldr	r0, .L169+508
	ldr	r3, .L169+572
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+512
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+580
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+516
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L98
.L113:
	ldr	r0, .L169+520
	ldr	r3, .L169+572
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+524
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+580
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+528
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L98
.L112:
	ldr	r0, .L169+532
	ldr	r3, .L169+572
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+536
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+580
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+540
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L98
.L111:
	ldr	r0, .L169+544
	ldr	r3, .L169+572
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+548
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+580
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+552
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L98
.L110:
	ldr	r0, .L169+556
	ldr	r3, .L169+572
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+560
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+580
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+564
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L98
.L109:
	ldr	r0, .L169+568
	ldr	r3, .L169+572
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+576
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L169+580
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+584
	add	r2, r2, #32768
	mov	r3, #1920
	mov	lr, pc
	bx	r4
	b	.L98
.L166:
	ldr	r0, .L169+588
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+592
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+596
	add	r2, r2, #32768
	mov	r3, #448
	mov	lr, pc
	bx	r4
	b	.L98
.L165:
	ldr	r0, .L169+600
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+604
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+608
	add	r2, r2, #32768
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L98
.L164:
	ldr	r0, .L169+612
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+616
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+620
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L98
.L163:
	ldr	r0, .L169+624
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+628
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+632
	add	r2, r2, #32768
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L98
.L162:
	ldr	r0, .L169+636
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+640
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+644
	add	r2, r2, #32768
	mov	r3, #352
	mov	lr, pc
	bx	r4
	b	.L98
.L161:
	ldr	r0, .L169+648
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+652
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+656
	add	r2, r2, #32768
	mov	r3, #64
	mov	lr, pc
	bx	r4
	b	.L98
.L160:
	ldr	r0, .L169+660
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+664
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+668
	add	r2, r2, #32768
	mov	r3, #352
	mov	lr, pc
	bx	r4
	b	.L98
.L159:
	ldr	r0, .L169+672
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+676
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+680
	add	r2, r2, #32768
	mov	r3, #352
	mov	lr, pc
	bx	r4
	b	.L98
.L158:
	ldr	r0, .L169+684
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+688
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+692
	add	r2, r2, #32768
	mov	r3, #352
	mov	lr, pc
	bx	r4
	b	.L98
.L157:
	ldr	r0, .L169+696
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+700
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L169+704
	add	r2, r2, #32768
	mov	r3, #448
	mov	lr, pc
	bx	r4
	b	.L98
	.size	seasonChange, .-seasonChange
	.align	2
	.global	pause
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L178
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, .L178+4
	ldr	r2, [r0, #0]
	mov	ip, #67108864
.L172:
	ldr	r3, [ip, #304]
	tst	r2, #8
	str	r2, [r5, #0]
	str	r3, [r0, #0]
	mov	r1, #67108864
	beq	.L173
	tst	r3, #8
	beq	.L176
.L173:
	tst	r2, #4
	beq	.L175
	ands	r4, r3, #4
	beq	.L177
.L175:
	mov	r2, r3
	b	.L172
.L176:
	ldrh	r3, [r1, #130]
	orr	r3, r3, #768
	strh	r3, [r1, #130]	@ movhi
	ldrh	r3, [r1, #130]
	ldrh	r2, [r1, #0]
	orr	r3, r3, #12288
	eor	r2, r2, #256
	strh	r3, [r1, #130]	@ movhi
	ldr	r3, .L178+8
	strh	r2, [r1, #0]	@ movhi
	mov	r2, #2
	str	r2, [r3, #0]
.L171:
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L177:
	mov	ip, #67108864
	ldrh	r3, [ip, #130]
	orr	r3, r3, #768
	strh	r3, [ip, #130]	@ movhi
	ldrh	r5, [ip, #0]
	ldrh	lr, [ip, #130]
	mov	r1, #679936
	orr	lr, lr, #12288
	mov	r2, #11008
	eor	r5, r5, #256
	mov	r3, #1
	ldr	r0, .L178+12
	sub	r1, r1, #176
	add	r2, r2, #17
	strh	r5, [ip, #0]	@ movhi
	strh	lr, [ip, #130]	@ movhi
	bl	playSoundA
	ldr	r3, .L178+8
	str	r4, [r3, #0]
	b	.L171
.L179:
	.align	2
.L178:
	.word	buttons
	.word	oldButtons
	.word	state
	.word	titleSong
	.size	pause, .-pause
	.align	2
	.global	jump
	.type	jump, %function
jump:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L183
	ldr	r2, [r3, #0]
	cmp	r2, #0
	ble	.L181
	ldr	r1, .L183+4
	mov	r0, #1
	sub	r2, r2, #1
	str	r0, [r1, #28]
	mvn	r0, #0
	str	r0, [r1, #8]
	str	r2, [r3, #0]
	bx	lr
.L181:
	ldr	r3, .L183+4
	mov	r2, #0
	str	r2, [r3, #28]
	mov	r2, #1
	str	r2, [r3, #8]
	bx	lr
.L184:
	.align	2
.L183:
	.word	jumpFrameCounter
	.word	player
	.size	jump, .-jump
	.align	2
	.global	checkCollision
	.type	checkCollision, %function
checkCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L255
	ldr	r3, [r3, #0]
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L253
.L192:
	.word	.L187
	.word	.L188
	.word	.L189
	.word	.L190
	.word	.L191
.L253:
	mov	r0, #0
	bx	lr
.L191:
	ldr	r3, .L255+4
	ldr	r3, [r3, #0]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L254
.L248:
	.word	.L238
	.word	.L239
	.word	.L240
	.word	.L241
	.word	.L254
	.word	.L242
	.word	.L243
	.word	.L244
	.word	.L245
	.word	.L246
	.word	.L247
.L187:
	ldr	r3, .L255+4
	ldr	r3, [r3, #0]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L253
.L204:
	.word	.L193
	.word	.L194
	.word	.L195
	.word	.L196
	.word	.L197
	.word	.L198
	.word	.L199
	.word	.L200
	.word	.L201
	.word	.L202
	.word	.L247
.L189:
	ldr	r3, .L255+4
	ldr	r3, [r3, #0]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L253
.L226:
	.word	.L216
	.word	.L217
	.word	.L218
	.word	.L219
	.word	.L220
	.word	.L253
	.word	.L221
	.word	.L222
	.word	.L223
	.word	.L224
	.word	.L247
.L190:
	ldr	r3, .L255+4
	ldr	r3, [r3, #0]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L253
.L237:
	.word	.L227
	.word	.L228
	.word	.L229
	.word	.L230
	.word	.L253
	.word	.L231
	.word	.L232
	.word	.L233
	.word	.L234
	.word	.L235
	.word	.L247
.L188:
	ldr	r3, .L255+4
	ldr	r3, [r3, #0]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L253
.L215:
	.word	.L205
	.word	.L206
	.word	.L207
	.word	.L208
	.word	.L253
	.word	.L209
	.word	.L210
	.word	.L211
	.word	.L212
	.word	.L213
	.word	.L247
.L247:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+12
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L213:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+16
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L212:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+20
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L211:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+24
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L210:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+28
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L209:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+32
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L208:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+36
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L207:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+40
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L206:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+44
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L205:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+48
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L235:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+52
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L234:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+56
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L233:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+60
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L232:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+64
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L231:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+68
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L230:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+72
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L229:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+76
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L228:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+80
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L227:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+84
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L224:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+88
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L223:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+92
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L222:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+96
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L221:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+100
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L220:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+104
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L219:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+108
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L218:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+112
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L217:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+116
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L216:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+120
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L246:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+124
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L245:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+128
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L244:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+132
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L243:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+136
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L242:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+140
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L241:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+144
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L240:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+148
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L239:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+152
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L238:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+156
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L254:
	mov	r0, #0
	bx	lr
.L194:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+160
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L193:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+164
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L202:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+168
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L201:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+172
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L200:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+176
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L199:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+180
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L198:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+184
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L197:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+188
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L196:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+192
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L195:
	ldr	r3, .L255+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L255+196
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L256:
	.align	2
.L255:
	.word	season
	.word	currentLevel
	.word	player
	.word	bg_final_collisionBitmap
	.word	bg_10_springscrn_collisionBitmap
	.word	bg_09_springscrn_collisionBitmap
	.word	bg_08_springscrn_collisionBitmap
	.word	bg_07_springscrn_collisionBitmap
	.word	bg_06_springscrn_collisionBitmap
	.word	bg_04_springscrn_collisionBitmap
	.word	bg_03_springscrn_collisionBitmap
	.word	bg_02_springscrn_collisionBitmap
	.word	bg_00_springscrn_collisionBitmap
	.word	bg_10_fallscrn_collisionBitmap
	.word	bg_09_fallscrn_collisionBitmap
	.word	bg_08_fallscrn_collisionBitmap
	.word	bg_07_fallscrn_collisionBitmap
	.word	bg_06_fallscrn_collisionBitmap
	.word	bg_04_fallscrn_collisionBitmap
	.word	bg_03_fallscrn_collisionBitmap
	.word	bg_02_fallscrn_collisionBitmap
	.word	bg_00_fallscrn_collisionBitmap
	.word	bg_10_summerscrn_collisionBitmap
	.word	bg_09_summerscrn_collisionBitmap
	.word	bg_08_summerscrn_collisionBitmap
	.word	bg_07_summerscrn_collisionBitmap
	.word	bg_05_summerscrn_collisionBitmap
	.word	bg_04_summerscrn_collisionBitmap
	.word	bg_03_summerscrn_collisionBitmap
	.word	bg_02_summerscrn_collisionBitmap
	.word	bg_00_summerscrn_collisionBitmap
	.word	bg_10_winterscrn_collisionBitmap
	.word	bg_09_winterscrn_collisionBitmap
	.word	bg_08_winterscrn_collisionBitmap
	.word	bg_07_winterscrn_collisionBitmap
	.word	bg_06_winterscrn_collisionBitmap
	.word	bg_04_winterscrn_collisionBitmap
	.word	bg_03_winterscrn_collisionBitmap
	.word	bg_02_winterscrn_collisionBitmap
	.word	bg_00_winterscrn_collisionBitmap
	.word	bg_02_neutralscrn_collisionBitmap
	.word	bg_00_neutralscrn_collisionBitmap
	.word	bg_10_neutralscrn_collisionBitmap
	.word	bg_09_neutralscrn_collisionBitmap
	.word	bg_08_neutralscrn_collisionBitmap
	.word	bg_07_neutralscrn_collisionBitmap
	.word	bg_06_neutralscrn_collisionBitmap
	.word	bg_05_neutralscrn_collisionBitmap
	.word	bg_04_neutralscrn_collisionBitmap
	.word	bg_03_neutralscrn_collisionBitmap
	.size	checkCollision, .-checkCollision
	.align	2
	.global	checkWinCollision
	.type	checkWinCollision, %function
checkWinCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L301
	ldr	r3, [r3, #0]
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L296
.L264:
	.word	.L259
	.word	.L260
	.word	.L261
	.word	.L262
	.word	.L263
.L260:
	ldr	r3, .L301+4
	ldr	r3, [r3, #0]
	cmp	r3, #6
	beq	.L277
	cmp	r3, #11
	beq	.L290
	cmp	r3, #2
	beq	.L300
.L296:
	mov	r0, #0
	bx	lr
.L263:
	ldr	r3, .L301+4
	ldr	r3, [r3, #0]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L297
.L291:
	.word	.L286
	.word	.L297
	.word	.L297
	.word	.L297
	.word	.L297
	.word	.L297
	.word	.L287
	.word	.L297
	.word	.L288
	.word	.L289
	.word	.L290
.L259:
	ldr	r3, .L301+4
	ldr	r3, [r3, #0]
	sub	r3, r3, #2
	cmp	r3, #9
	ldrls	pc, [pc, r3, asl #2]
	b	.L296
.L275:
	.word	.L265
	.word	.L266
	.word	.L267
	.word	.L268
	.word	.L269
	.word	.L270
	.word	.L271
	.word	.L272
	.word	.L273
	.word	.L274
.L261:
	ldr	r3, .L301+4
	ldr	r3, [r3, #0]
	cmp	r3, #11
	bne	.L296
	ldr	r3, .L301+8
	add	r1, r3, #16
	ldmia	r1, {r1, r2}	@ phole ldm
	add	r3, r1, #8
	add	r3, r2, r3, asl #9
	ldr	r2, .L301+12
	add	r3, r2, r3, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L262:
	ldr	r3, .L301+4
	ldr	r3, [r3, #0]
	sub	r3, r3, #3
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L296
.L285:
	.word	.L280
	.word	.L281
	.word	.L282
	.word	.L296
	.word	.L296
	.word	.L283
	.word	.L296
	.word	.L296
	.word	.L290
.L290:
	ldr	r3, .L301+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L301+12
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L283:
	ldr	r3, .L301+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L301+16
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L282:
	ldr	r3, .L301+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L301+20
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L281:
	ldr	r3, .L301+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L301+24
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L280:
	ldr	r3, .L301+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L301+28
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L289:
	ldr	r3, .L301+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L301+32
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L288:
	ldr	r3, .L301+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L301+36
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L287:
	ldr	r3, .L301+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L301+40
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L286:
	ldr	r3, .L301+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L301+44
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L297:
	mov	r0, #0
	bx	lr
.L300:
	ldr	r3, .L301+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L301+48
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L274:
	ldr	r3, .L301+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L301+12
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L265:
	ldr	r3, .L301+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L301+52
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L273:
	ldr	r3, .L301+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L301+56
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L272:
	ldr	r3, .L301+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L301+60
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L271:
	ldr	r3, .L301+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L301+64
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L270:
	ldr	r3, .L301+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L301+68
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L269:
	ldr	r3, .L301+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L301+72
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L268:
	ldr	r3, .L301+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L301+76
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L267:
	ldr	r3, .L301+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L301+80
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L266:
	ldr	r3, .L301+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L301+84
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L277:
	ldr	r3, .L301+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L301+88
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L302:
	.align	2
.L301:
	.word	season
	.word	currentLevel
	.word	player
	.word	bg_final_collisionBitmap
	.word	bg_08_fallscrn_collisionBitmap
	.word	bg_05_fallscrn_collisionBitmap
	.word	bg_04_fallscrn_collisionBitmap
	.word	bg_03_fallscrn_collisionBitmap
	.word	bg_10_winterscrn_collisionBitmap
	.word	bg_09_winterscrn_collisionBitmap
	.word	bg_07_winterscrn_collisionBitmap
	.word	bg_00_winterscrn_collisionBitmap
	.word	bg_02_springscrn_collisionBitmap
	.word	bg_02_neutralscrn_collisionBitmap
	.word	bg_10_neutralscrn_collisionBitmap
	.word	bg_09_neutralscrn_collisionBitmap
	.word	bg_08_neutralscrn_collisionBitmap
	.word	bg_07_neutralscrn_collisionBitmap
	.word	bg_06_neutralscrn_collisionBitmap
	.word	bg_05_neutralscrn_collisionBitmap
	.word	bg_04_neutralscrn_collisionBitmap
	.word	bg_03_neutralscrn_collisionBitmap
	.word	bg_06_springscrn_collisionBitmap
	.size	checkWinCollision, .-checkWinCollision
	.align	2
	.global	game
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r4, .L337
	ldr	r3, [r4, #32]
	mov	r2, #0
	ands	r3, r3, #3
	str	r2, [r4, #24]
	bne	.L304
	ldr	r2, [r4, #48]
	cmp	r2, #1
	addle	r2, r2, #1
	strgt	r3, [r4, #48]
	strle	r2, [r4, #48]
.L304:
	ldr	r5, .L337+4
	ldr	r8, [r5, #0]
	tst	r8, #1
	beq	.L306
	ldr	r3, .L337+8
	ldr	r6, [r3, #0]
	ands	r6, r6, #1
	beq	.L332
.L306:
	tst	r8, #2
	beq	.L331
	ldr	r3, .L337+8
	ldr	r3, [r3, #0]
	ands	r3, r3, #2
	beq	.L330
.L331:
	ldr	r6, .L337+12
.L307:
	tst	r8, #8
	beq	.L308
	ldr	r3, .L337+8
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L333
.L308:
	mov	r3, #67108864
	ldr	r2, [r3, #304]
	tst	r2, #256
	bne	.L309
	ldr	r2, [r3, #304]
	tst	r2, #512
	beq	.L334
.L309:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #16
	bne	.L310
	ldr	r1, .L337+16
	ldr	r0, [r1, #0]
	ldr	r2, .L337
	mov	r3, #1
	cmp	r0, #272
	mov	ip, #0
	str	r3, [r4, #24]
	str	r3, [r4, #12]
	str	ip, [r4, #44]
	ldrge	r3, [r2, #4]
	bge	.L312
	ldr	r3, [r2, #40]
	add	ip, r3, r3, lsr #31
	ldr	r3, [r2, #4]
	mov	r2, ip, asr #1
	rsb	r2, r2, #119
	cmp	r2, r3
	addlt	r0, r0, #1
	strlt	r0, [r1, #0]
	bge	.L312
.L310:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #32
	bne	.L313
	ldr	r1, .L337+16
	ldr	r0, [r1, #0]
	mov	r3, #1
	str	r3, [r4, #24]
	str	r3, [r4, #44]
	cmp	r0, #0
	mvn	r3, #0
	ldr	r2, .L337
	str	r3, [r4, #12]
	ble	.L314
	ldr	r3, [r2, #36]
	add	ip, r3, r3, lsr #31
	ldr	r3, [r2, #4]
	mov	r2, ip, asr #1
	rsb	r2, r2, #119
	cmp	r2, r3
	subge	r0, r0, #1
	strge	r0, [r1, #0]
	blt	.L315
.L313:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L335
.L316:
	bl	checkCollision
	cmp	r0, #0
	beq	.L317
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L318
.L317:
	ldr	r3, .L337+20
	ldr	r2, [r4, #8]
	ldr	r0, [r3, #0]
	ldr	r1, [r4, #0]
	add	r0, r0, r2
	cmp	r1, #159
	str	r0, [r3, #0]
	ldrle	r3, .L337
	ldrgt	r3, .L337+24
	addle	r2, r1, r2
	movgt	r2, #5
	mov	ip, #0
	str	ip, [r4, #24]
	strle	r2, [r3, #0]
	strgt	r2, [r3, #0]
	bl	checkWinCollision
	cmp	r0, #0
	bne	.L336
.L321:
	ldr	r2, [r4, #24]
	ldr	r3, .L337
	cmp	r2, #0
	ldrne	r2, [r3, #32]
	addne	r2, r2, #1
	streq	r2, [r3, #48]
	strne	r2, [r3, #32]
	ldr	r3, [r6, #0]
	cmp	r3, #3
	beq	.L325
	cmp	r3, #4
	bne	.L303
	ldr	r2, .L337+28
	ldr	r3, .L337+32
	ldr	r0, [r2, #0]
	ldr	r1, [r3, #0]
	sub	r0, r0, #1
	sub	r1, r1, #1
	str	r0, [r2, #0]
	str	r1, [r3, #0]
.L303:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L312:
	ldr	r2, [r4, #36]
	rsb	r2, r2, #240
	cmp	r2, r3
	ldrgt	r2, .L337
	addgt	r3, r3, #1
	strgt	r3, [r2, #4]
	b	.L310
.L318:
	ldr	r2, .L337+36
	mov	r1, #1
	str	r1, [r2, #0]
	ldr	r2, .L337
	str	r3, [r2, #12]
	bl	checkWinCollision
	cmp	r0, #0
	beq	.L321
.L336:
	mov	r1, #9152
	mov	r2, #11008
	add	r2, r2, #17
	mov	r3, #0
	ldr	r0, .L337+40
	add	r1, r1, #4
	bl	playSoundB
	ldr	r3, .L337+24
	mov	r2, #6
	str	r2, [r3, #0]
	b	.L321
.L334:
	ldr	r3, [r3, #304]
	tst	r3, #4
	bne	.L309
	ldr	ip, .L337+44
	mov	lr, #100
	str	lr, [ip, #0]
	ldr	ip, .L337+48
	mvn	lr, #0
	mov	r1, #20224
	mov	r2, #11008
	add	r2, r2, #17
	mov	r3, #0
	ldr	r0, .L337+52
	add	r1, r1, #20
	str	lr, [ip, #0]
	bl	playSoundB
	ldr	r3, .L337+24
	mov	r2, #3
	str	r2, [r3, #0]
	b	.L309
.L333:
	mov	r3, #67108864
	ldrh	r2, [r3, #130]
	bic	r2, r2, #768
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #130]	@ movhi
	ldrh	r2, [r3, #130]
	ldrh	r1, [r3, #0]
	bic	r2, r2, #12288
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	eor	r1, r1, #256
	strh	r1, [r3, #0]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	ldr	r3, .L337+24
	mov	r2, #4
	str	r2, [r3, #0]
	b	.L308
.L332:
	ldr	r7, .L337+36
	ldr	r3, [r7, #0]
	cmp	r3, #0
	beq	.L306
	bl	checkCollision
	cmp	r0, #0
	beq	.L306
	mov	ip, #1
	str	ip, [r4, #28]
	ldr	ip, .L337+56
	mov	lr, #30
	mov	r1, #3104
	mov	r2, #11008
	ldr	r0, .L337+60
	add	r1, r1, #14
	add	r2, r2, #17
	mov	r3, r6
	str	lr, [ip, #0]
	str	r6, [r7, #0]
	bl	playSoundB
	bl	jump
	ldr	r8, [r5, #0]
	b	.L306
.L314:
	ldr	r3, [r2, #4]
.L315:
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4, #4]
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L316
.L335:
	bl	jump
	b	.L316
.L325:
	ldr	r3, .L337+32
	ldr	r2, [r3, #0]
	sub	r2, r2, #1
	str	r2, [r3, #0]
	b	.L303
.L330:
	ldr	ip, .L337+44
	ldr	r6, .L337+12
	mov	r7, #100
	str	r7, [ip, #0]
	ldr	lr, [r6, #0]
	ldr	ip, .L337+48
	mov	r1, #20224
	mov	r2, #11008
	add	r2, r2, #17
	ldr	r0, .L337+52
	add	r1, r1, #20
	str	lr, [ip, #0]
	bl	playSoundB
	ldr	r3, .L337+24
	mov	r2, #3
	str	r2, [r3, #0]
	ldr	r8, [r5, #0]
	b	.L307
.L338:
	.align	2
.L337:
	.word	player
	.word	oldButtons
	.word	buttons
	.word	season
	.word	hOff
	.word	vOff
	.word	state
	.word	bg1HOff
	.word	bg1VOff
	.word	canJump
	.word	winLevelSound
	.word	vBlankCount
	.word	prevSeason
	.word	warpSound
	.word	jumpFrameCounter
	.word	jumpSound
	.size	game, .-game
	.align	2
	.global	winLevel
	.type	winLevel, %function
winLevel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #1024
	stmfd	sp!, {r4, lr}
	add	r3, r3, #4
	mov	r4, #67108864
	ldr	r0, .L347
	strh	r3, [r4, #0]	@ movhi
	ldr	r3, .L347+4
	mov	lr, pc
	bx	r3
	ldr	r0, .L347+8
	ldr	r3, .L347+12
	mov	lr, pc
	bx	r3
	ldr	r1, .L347+16
	ldr	ip, .L347+20
	ldr	r2, [r1, #0]
	mov	r0, r4
.L340:
	ldr	r3, [r0, #304]
	tst	r2, #1
	str	r2, [ip, #0]
	str	r3, [r1, #0]
	beq	.L341
	tst	r3, #1
	bne	.L341
	ldr	r3, .L347+24
	ldr	r2, [r3, #0]
	cmp	r2, #10
	ble	.L345
	ldr	r3, .L347+28
	mov	r2, #7
	str	r2, [r3, #0]
.L339:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L341:
	tst	r2, #4
	beq	.L344
	ands	r4, r3, #4
	beq	.L346
.L344:
	mov	r2, r3
	b	.L340
.L346:
	mov	r1, #2096
	mov	r2, #11008
	ldr	r0, .L347+32
	add	r1, r1, #6
	add	r2, r2, #17
	mov	r3, r4
	bl	playSoundB
	mov	r1, #679936
	mov	r2, #11008
	mov	r3, #1
	ldr	r0, .L347+36
	sub	r1, r1, #176
	add	r2, r2, #17
	bl	playSoundA
	ldr	r3, .L347+28
	str	r4, [r3, #0]
	b	.L339
.L345:
	add	r2, r2, #1
	str	r2, [r3, #0]
	bl	init
	bl	setupLevel
	ldr	r3, .L347+28
	mov	r2, #2
	str	r2, [r3, #0]
	b	.L339
.L348:
	.align	2
.L347:
	.word	win_level_screenPal
	.word	loadPalette
	.word	win_level_screenBitmap
	.word	drawBackgroundImage4
	.word	buttons
	.word	oldButtons
	.word	currentLevel
	.word	state
	.word	menuSound
	.word	titleSong
	.size	winLevel, .-winLevel
	.align	2
	.global	gameEnd
	.type	gameEnd, %function
gameEnd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #1024
	stmfd	sp!, {r4, lr}
	add	r3, r3, #4
	mov	r4, #67108864
	ldr	r0, .L352
	strh	r3, [r4, #0]	@ movhi
	ldr	r3, .L352+4
	mov	lr, pc
	bx	r3
	ldr	r0, .L352+8
	ldr	r3, .L352+12
	mov	lr, pc
	bx	r3
	ldr	r1, .L352+16
	ldr	ip, .L352+20
	ldr	r2, [r1, #0]
	mov	r0, r4
.L350:
	ldr	r3, [r0, #304]
	tst	r2, #1
	str	r2, [ip, #0]
	str	r3, [r1, #0]
	beq	.L351
	ands	r4, r3, #1
	bne	.L351
	mov	r1, #2096
	mov	r2, #11008
	ldr	r0, .L352+24
	add	r1, r1, #6
	add	r2, r2, #17
	mov	r3, r4
	bl	playSoundB
	mov	r1, #679936
	mov	r2, #11008
	mov	r3, #1
	ldr	r0, .L352+28
	sub	r1, r1, #176
	add	r2, r2, #17
	bl	playSoundA
	ldr	r3, .L352+32
	str	r4, [r3, #0]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L351:
	mov	r2, r3
	b	.L350
.L353:
	.align	2
.L352:
	.word	game_end_screenPal
	.word	loadPalette
	.word	game_end_screenBitmap
	.word	drawBackgroundImage4
	.word	buttons
	.word	oldButtons
	.word	menuSound
	.word	titleSong
	.word	state
	.size	gameEnd, .-gameEnd
	.align	2
	.global	lose
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #1024
	stmfd	sp!, {r4, lr}
	add	r3, r3, #4
	mov	r4, #67108864
	ldr	r0, .L360
	strh	r3, [r4, #0]	@ movhi
	ldr	r3, .L360+4
	mov	lr, pc
	bx	r3
	ldr	r0, .L360+8
	ldr	r3, .L360+12
	mov	lr, pc
	bx	r3
	ldr	r1, .L360+16
	ldr	ip, .L360+20
	ldr	r2, [r1, #0]
	mov	r0, r4
.L355:
	ldr	r3, [r0, #304]
	tst	r2, #1
	str	r2, [ip, #0]
	str	r3, [r1, #0]
	beq	.L356
	tst	r3, #1
	bne	.L356
	bl	init
	bl	setupLevel
	ldr	r3, .L360+24
	mov	r2, #2
	str	r2, [r3, #0]
.L354:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L356:
	tst	r2, #4
	beq	.L358
	ands	r4, r3, #4
	beq	.L359
.L358:
	mov	r2, r3
	b	.L355
.L359:
	mov	r1, #2096
	mov	r2, #11008
	ldr	r0, .L360+28
	add	r1, r1, #6
	add	r2, r2, #17
	mov	r3, r4
	bl	playSoundB
	mov	r1, #679936
	mov	r2, #11008
	mov	r3, #1
	ldr	r0, .L360+32
	sub	r1, r1, #176
	add	r2, r2, #17
	bl	playSoundA
	ldr	r3, .L360+24
	str	r4, [r3, #0]
	b	.L354
.L361:
	.align	2
.L360:
	.word	gameover_screenPal
	.word	loadPalette
	.word	gameover_screenBitmap
	.word	drawBackgroundImage4
	.word	buttons
	.word	oldButtons
	.word	state
	.word	menuSound
	.word	titleSong
	.size	lose, .-lose
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r3, #67108864
	add	r3, r3, #512
	sub	sp, sp, #36
	ldrh	r1, [r3, #0]
	ldr	r0, .L379
	mov	r2, #50331648
	add	r2, r2, #28672
	orr	r1, r1, #1
	str	r0, [r2, #4092]
	strh	r1, [r3, #0]	@ movhi
	mov	r6, #67108864
	ldrh	r0, [r6, #4]
	mvn	ip, #1264
	orr	r0, r0, #8
	strh	r0, [r6, #4]	@ movhi
	sub	ip, ip, #1
	mov	lr, #0	@ movhi
	mov	r0, #1	@ movhi
	mov	r1, #679936
	mov	r2, #11008
	mov	fp, #128	@ movhi
	strh	r0, [r3, #8]	@ movhi
	sub	r1, r1, #176
	ldr	r0, .L379+4
	add	r2, r2, #17
	mov	r3, #1
	strh	fp, [r6, #132]	@ movhi
	strh	lr, [r6, #128]	@ movhi
	strh	ip, [r6, #130]	@ movhi
	bl	playSoundA
	bl	splash
	ldr	r7, .L379+8
	ldr	r4, .L379+12
	ldr	r5, .L379+16
	ldr	r8, .L379+20
.L374:
	ldr	r3, .L379+24
	ldr	r0, .L379+28
	ldr	r3, [r3, #0]
	ldr	r2, .L379+32
	ldr	fp, [r7, #0]
	ldr	ip, [r0, #0]
	ldr	r0, [r6, #304]
	str	r3, [sp, #0]
	ldr	r3, .L379+36
	ldr	sl, [r4, #0]
	ldr	r9, [r4, #4]
	ldr	lr, [r2, #0]
	str	fp, [r3, #0]
	ldr	fp, [sp, #0]
	add	r1, ip, sl
	add	r2, lr, r9
	str	r0, [r7, #0]
	str	r1, [r4, #16]
	str	r2, [r4, #20]
	cmp	fp, #7
	ldrls	pc, [pc, fp, asl #2]
	b	.L363
.L372:
	.word	.L364
	.word	.L365
	.word	.L366
	.word	.L367
	.word	.L368
	.word	.L369
	.word	.L370
	.word	.L371
.L370:
	bl	winLevel
.L377:
	ldr	r2, .L379+32
	ldr	r3, .L379+28
	ldr	sl, [r4, #0]
	ldr	r9, [r4, #4]
	ldr	lr, [r2, #0]
	ldr	ip, [r3, #0]
.L363:
	ldrb	fp, [r8, #0]	@ zero_extendqisi2
	str	fp, [sp, #20]
	ldr	fp, .L379+40
	ldr	r2, .L379+44
	ldrh	fp, [fp, #0]
	ldr	r3, [r2, #0]
	ldr	r1, [r4, #48]
	ldr	r2, [r8, #4]
	str	fp, [sp, #4]
	ldr	r0, [r4, #44]
	ldr	fp, .L379+48
	add	r1, r1, r3, asl #5
	mov	r2, r2, asl #23
	mov	r3, r3, asl #6
	ldrh	fp, [fp, #0]
	mov	r0, r0, asl #12
	mov	r2, r2, lsr #23
	add	r3, r3, #6
	mov	lr, lr, asl #16
	mov	ip, ip, asl #16
	and	sl, sl, #255
	orr	r2, r2, #16384
	orr	r3, r3, #1024
	mov	lr, lr, lsr #16
	mov	ip, ip, lsr #16
	and	r0, r0, #4096
	str	fp, [sp, #12]
	str	r2, [sp, #24]
	str	r3, [sp, #28]
	orr	r0, r0, #16384
	strh	lr, [r6, #24]	@ movhi
	mov	r1, r1, asl #1
	strh	sl, [r5, #0]	@ movhi
	ldr	lr, [sp, #20]
	strh	ip, [r6, #26]	@ movhi
	mov	r9, r9, asl #23
	ldr	ip, [sp, #4]
	orr	r9, r0, r9, lsr #23
	orr	fp, r1, #1024
	strh	r9, [r5, #2]	@ movhi
	strh	ip, [r6, #20]	@ movhi
	ldr	ip, [sp, #28]
	strh	fp, [r5, #4]	@ movhi
	strh	lr, [r5, #8]	@ movhi
	ldr	fp, [sp, #24]
	ldr	lr, [sp, #12]
	strh	fp, [r5, #10]	@ movhi
	strh	ip, [r5, #12]	@ movhi
	mov	r0, #3
	ldr	r1, .L379+16
	mov	r2, #117440512
	mov	r3, #512
	strh	lr, [r6, #22]	@ movhi
	ldr	fp, .L379+52
	mov	lr, pc
	bx	fp
	ldr	ip, .L379+56
	mov	lr, pc
	bx	ip
	b	.L374
.L371:
	bl	gameEnd
.L375:
	ldr	fp, .L379+32
	ldr	r0, .L379+28
	ldr	sl, [r4, #0]
	ldr	r9, [r4, #4]
	ldr	lr, [fp, #0]
	ldr	ip, [r0, #0]
	b	.L363
.L369:
	bl	lose
.L376:
	ldr	ip, .L379+32
	ldr	r0, .L379+28
	ldr	lr, [ip, #0]
	ldr	sl, [r4, #0]
	ldr	r9, [r4, #4]
	ldr	ip, [r0, #0]
	b	.L363
.L368:
	bl	pause
.L378:
	ldr	r3, .L379+32
	ldr	fp, .L379+28
	ldr	sl, [r4, #0]
	ldr	r9, [r4, #4]
	ldr	lr, [r3, #0]
	ldr	ip, [fp, #0]
	b	.L363
.L367:
	bl	warpAnimation
	ldr	r2, .L379+60
	ldr	r3, [r2, #0]
	cmp	r3, #0
	bgt	.L378
	bl	seasonChange
	ldr	ip, .L379+24
	ldr	r0, .L379+32
	ldr	r2, .L379+28
	mov	lr, #2
	str	lr, [ip, #0]
	ldr	sl, [r4, #0]
	ldr	r9, [r4, #4]
	ldr	lr, [r0, #0]
	ldr	ip, [r2, #0]
	b	.L363
.L366:
	bl	game
	b	.L375
.L365:
	bl	instructions
	b	.L377
.L364:
	bl	splash
	b	.L376
.L380:
	.align	2
.L379:
	.word	interruptHandler
	.word	titleSong
	.word	buttons
	.word	player
	.word	shadowOAM
	.word	icon
	.word	state
	.word	vOff
	.word	hOff
	.word	oldButtons
	.word	bg1HOff
	.word	season
	.word	bg1VOff
	.word	DMANow
	.word	waitForVblank
	.word	vBlankCount
	.size	main, .-main
	.comm	oldButtons,4,4
	.comm	buttons,4,4
	.comm	state,4,4
	.comm	season,4,4
	.comm	prevSeason,4,4
	.comm	currentLevel,4,4
	.comm	vBlankCount,4,4
	.comm	jumpFrameCounter,4,4
	.comm	canJump,4,4
	.comm	standing,4,4
	.comm	player,52,4
	.comm	icon,8,4
	.comm	soundA,28,4
	.comm	soundB,28,4
	.comm	vbCountA,4,4
	.comm	vbCountB,4,4
	.comm	hOff,4,4
	.comm	vOff,4,4
	.comm	bg1HOff,4,4
	.comm	bg1VOff,4,4
	.comm	shadowOAM,1024,4
	.ident	"GCC: (devkitARM release 31) 4.5.0"
