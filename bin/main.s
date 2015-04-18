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
	ldr	r4, .L28
	ldr	r3, [r4, #0]
	sub	r2, r3, #1
	cmp	r2, #9
	bls	.L8
	ldr	r2, .L28+4
	mov	r1, #0
	str	r1, [r2, #0]
.L9:
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L7
.L24:
	.word	.L12
	.word	.L13
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
.L12:
	ldr	r0, .L28+8
	ldr	r3, .L28+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L28+16
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L28+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	ldr	r1, .L28+24
	add	r2, r2, #32768
	mov	r3, #192
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L28+28
	mov	r1, #10
	str	r1, [r2, #0]
	mov	r3, #0
	mov	r1, #112
.L26:
	str	r1, [r2, #4]
	ldr	r2, .L28+32
	str	r3, [r2, #0]
	ldr	r2, .L28+36
	str	r3, [r2, #0]
.L7:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L8:
	and	r5, r3, #3
	add	r5, r5, #1
	ldr	r2, .L28+4
	cmp	r5, #2
	str	r5, [r2, #0]
	ble	.L9
	mov	r3, #67108864
	ldrh	r2, [r3, #0]
	cmp	r5, #3
	orr	r2, r2, #512
	strh	r2, [r3, #0]	@ movhi
	beq	.L27
	ldr	r0, .L28+40
	ldr	r3, .L28+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L28+44
	add	r2, r2, #55296
	mov	r3, #1024
	ldr	r5, .L28+20
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r3, #704
	mov	r0, #3
	ldr	r1, .L28+48
	add	r2, r2, #16384
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #0]
	b	.L9
.L27:
	ldr	r0, .L28+52
	ldr	r3, .L28+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, r5
	ldr	r1, .L28+56
	add	r2, r2, #55296
	mov	r3, #1024
	ldr	r6, .L28+20
	mov	lr, pc
	bx	r6
	mov	r2, #100663296
	mov	r3, #1024
	mov	r0, r5
	ldr	r1, .L28+60
	add	r2, r2, #16384
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #0]
	b	.L9
.L13:
	ldr	r0, .L28+64
	ldr	r3, .L28+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L28+68
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L28+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	add	r2, r2, #32768
	mov	r3, #224
	mov	r0, #3
	ldr	r1, .L28+72
	mov	lr, pc
	bx	r4
	ldr	r3, .L28+28
	mov	r2, #5
	str	r2, [r3, #0]
	mov	r2, #112
	str	r2, [r3, #4]
	ldr	r3, .L28+32
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L28+36
	mov	r2, #104
	str	r2, [r3, #0]
	b	.L7
.L14:
	ldr	r0, .L28+76
	ldr	r3, .L28+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L28+80
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L28+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	add	r2, r2, #32768
	mov	r3, #480
	mov	r0, #3
	ldr	r1, .L28+84
	mov	lr, pc
	bx	r4
	ldr	r3, .L28+28
	mov	r2, #50
	str	r2, [r3, #0]
	mov	r2, #112
	str	r2, [r3, #4]
	ldr	r3, .L28+32
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L28+36
	mov	r2, #184
	str	r2, [r3, #0]
	b	.L7
.L15:
	ldr	r0, .L28+88
	ldr	r3, .L28+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L28+92
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L28+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	add	r2, r2, #32768
	mov	r3, #352
	mov	r0, #3
	ldr	r1, .L28+96
	mov	lr, pc
	bx	r4
	ldr	r3, .L28+28
	mov	r2, #50
	str	r2, [r3, #0]
	mov	r2, #112
	str	r2, [r3, #4]
	ldr	r3, .L28+32
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L28+36
	mov	r2, #120
	str	r2, [r3, #0]
	b	.L7
.L16:
	ldr	r0, .L28+100
	ldr	r3, .L28+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L28+104
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L28+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	ldr	r1, .L28+108
	add	r2, r2, #32768
	mov	r3, #224
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L28+28
	mov	r1, #50
	str	r1, [r2, #0]
	mov	r3, #0
	mov	r1, #40
	b	.L26
.L17:
	ldr	r0, .L28+112
	ldr	r3, .L28+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L28+116
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L28+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	add	r2, r2, #32768
	mov	r3, #192
	mov	r0, #3
	ldr	r1, .L28+120
	mov	lr, pc
	bx	r4
	ldr	r3, .L28+28
	mov	r2, #30
	str	r2, [r3, #0]
	mov	r2, #112
	str	r2, [r3, #4]
	ldr	r3, .L28+32
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L28+36
	mov	r2, #136
	str	r2, [r3, #0]
	b	.L7
.L18:
	ldr	r0, .L28+124
	ldr	r3, .L28+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L28+128
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L28+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	ldr	r1, .L28+132
	add	r2, r2, #32768
	mov	r3, #224
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L28+28
	mov	r1, #30
	str	r1, [r2, #0]
	mov	r3, #0
	mov	r1, #8
	b	.L26
.L19:
	ldr	r0, .L28+136
	ldr	r3, .L28+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L28+140
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L28+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	ldr	r1, .L28+144
	add	r2, r2, #32768
	mov	r3, #480
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L28+28
	mov	r1, #30
	str	r1, [r2, #0]
	mov	r3, #0
	mov	r1, #40
	b	.L26
.L20:
	ldr	r0, .L28+148
	ldr	r3, .L28+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L28+152
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L28+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	add	r2, r2, #32768
	mov	r3, #224
	mov	r0, #3
	ldr	r1, .L28+156
	mov	lr, pc
	bx	r4
	ldr	r3, .L28+28
	mov	r2, #30
	str	r2, [r3, #0]
	mov	r2, #112
	str	r2, [r3, #4]
	ldr	r3, .L28+32
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L28+36
	mov	r2, #96
	str	r2, [r3, #0]
	b	.L7
.L21:
	ldr	r0, .L28+160
	ldr	r3, .L28+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L28+164
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L28+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	ldr	r1, .L28+168
	mov	r0, #3
	add	r2, r2, #32768
	mov	r3, #608
.L25:
	mov	lr, pc
	bx	r4
	ldr	r3, .L28+28
	mov	r2, #30
	str	r2, [r3, #0]
	mov	r2, #112
	str	r2, [r3, #4]
	ldr	r3, .L28+32
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L28+36
	mov	r2, #128
	str	r2, [r3, #0]
	b	.L7
.L22:
	ldr	r0, .L28+172
	ldr	r3, .L28+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L28+176
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L28+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L28+180
	add	r2, r2, #32768
	mov	r3, #224
	b	.L25
.L23:
	ldr	r0, .L28+184
	ldr	r3, .L28+12
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L28+188
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L28+20
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	ldr	r1, .L28+192
	add	r2, r2, #32768
	mov	r3, #320
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L28+28
	mov	r1, #30
	str	r1, [r2, #0]
	mov	r3, #0
	mov	r1, #10
	b	.L26
.L29:
	.align	2
.L28:
	.word	currentLevel
	.word	season
	.word	bg_00_neutralscrnPal
	.word	loadPalette
	.word	bg_00_neutralscrnMap
	.word	DMANow
	.word	bg_00_neutralscrnTiles
	.word	player
	.word	vOff
	.word	hOff
	.word	bg_snowPal
	.word	bg_snowMap
	.word	bg_snowTiles
	.word	bg_fallPal
	.word	bg_fallMap
	.word	bg_fallTiles
	.word	bg_01_summerscrnPal
	.word	bg_01_summerscrnMap
	.word	bg_01_summerscrnTiles
	.word	bg_02_fallscrnPal
	.word	bg_02_fallscrnMap
	.word	bg_02_fallscrnTiles
	.word	bg_03_winterscrnPal
	.word	bg_03_winterscrnMap
	.word	bg_03_winterscrnTiles
	.word	bg_04_springscrnPal
	.word	bg_04_springscrnMap
	.word	bg_04_springscrnTiles
	.word	bg_05_summerscrnPal
	.word	bg_05_summerscrnMap
	.word	bg_05_summerscrnTiles
	.word	bg_06_fallscrnPal
	.word	bg_06_fallscrnMap
	.word	bg_06_fallscrnTiles
	.word	bg_07_winterscrnPal
	.word	bg_07_winterscrnMap
	.word	bg_07_winterscrnTiles
	.word	bg_08_springscrnPal
	.word	bg_08_springscrnMap
	.word	bg_08_springscrnTiles
	.word	bg_09_summerscrnPal
	.word	bg_09_summerscrnMap
	.word	bg_09_summerscrnTiles
	.word	bg_10_fallscrnPal
	.word	bg_10_fallscrnMap
	.word	bg_10_fallscrnTiles
	.word	bg_final_neutralscrnPal
	.word	bg_final_neutralscrnMap
	.word	bg_final_neutralscrnTiles
	.size	setupLevel, .-setupLevel
	.align	2
	.global	setupGame
	.type	setupGame, %function
setupGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L31
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, .L31+4
	str	r3, [r2, #0]
	ldr	r2, .L31+8
	str	r3, [r2, #0]
	b	setupLevel
.L32:
	.align	2
.L31:
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
	ldr	r3, .L36
	ldr	r2, [r3, #0]
	cmp	r2, #3
	movgt	r2, #1
	addle	r2, r2, #1
	strgt	r2, [r3, #0]
	strle	r2, [r3, #0]
	bx	lr
.L37:
	.align	2
.L36:
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
	ldr	r2, .L41
	mov	r3, #0
.L39:
	ldrh	r1, [r2, r3]
	orr	r1, r1, #512
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L39
	bx	lr
.L42:
	.align	2
.L41:
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
	ldr	r3, .L46
	ldr	r2, [r3, #48]
	cmp	r2, #1
	movgt	r2, #0
	addle	r2, r2, #1
	strgt	r2, [r3, #48]
	strle	r2, [r3, #48]
	bx	lr
.L47:
	.align	2
.L46:
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
	ldr	ip, .L50
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	ip, [ip, #0]
	mov	r4, #0
	add	ip, ip, #12
	str	r4, [ip, #8]
	ldr	ip, .L50+4
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
	ldr	ip, .L50+8
	mov	lr, pc
	bx	ip
	ldr	r8, .L50+12
	mov	r1, r6
	mov	r0, #16777216
	strh	r4, [r7, #2]	@ movhi
	mov	lr, pc
	bx	r8
	rsb	r3, r0, #0
	mov	r3, r3, asl #16
	ldr	fp, .L50+16
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
.L51:
	.align	2
.L50:
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
	ldr	ip, .L53
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	ip, [ip, #0]
	mov	r4, #0
	add	ip, ip, #24
	str	r4, [ip, #8]
	ldr	ip, .L53+4
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
	ldr	ip, .L53+8
	mov	lr, pc
	bx	ip
	ldr	r8, .L53+12
	mov	r1, r6
	mov	r0, #16777216
	strh	r4, [r7, #6]	@ movhi
	mov	lr, pc
	bx	r8
	rsb	r3, r0, #0
	mov	r3, r3, asl #16
	ldr	fp, .L53+16
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
.L54:
	.align	2
.L53:
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
	beq	.L56
	ldr	r2, .L69
	ldr	r3, [r2, #12]
	cmp	r3, #0
	beq	.L57
	ldr	r0, .L69+4
	ldr	r1, [r2, #20]
	ldr	r3, [r0, #0]
	cmp	r1, r3
	addgt	r3, r3, #1
	strgt	r3, [r0, #0]
	bgt	.L59
.L58:
	ldr	r3, .L69+8
	ldr	ip, [r3, #0]
	mov	r1, #67108864
	mov	r3, #0
	add	r1, r1, #256
	add	ip, ip, #12
	str	r3, [r2, #12]
	str	r3, [r0, #0]
	strh	r3, [r1, #2]	@ movhi
	str	r3, [ip, #8]
.L59:
	ldr	r2, .L69+12
	ldr	r3, [r2, #12]
	cmp	r3, #0
	bne	.L67
	ldr	r3, [r2, #16]
	cmp	r3, #0
	ldreq	r0, .L69+16
	bne	.L68
.L61:
	ldr	r3, .L69+8
	ldr	ip, [r3, #0]
	mov	r1, #67108864
	mov	r3, #0
	add	r1, r1, #256
	add	ip, ip, #24
	str	r3, [r2, #12]
	str	r3, [r0, #0]
	strh	r3, [r1, #6]	@ movhi
	str	r3, [ip, #8]
.L62:
	mov	r3, #67108864
	add	r3, r3, #512
	mov	r2, #1	@ movhi
	strh	r2, [r3, #2]	@ movhi
.L56:
	mov	r3, #67108864
	add	r3, r3, #512
	mov	r2, #1	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldmfd	sp!, {r3, lr}
	bx	lr
.L57:
	ldr	r3, [r2, #16]
	cmp	r3, #0
	ldreq	r0, .L69+4
	beq	.L58
	ldmia	r2, {r0, r1, r2}	@ phole ldm
	bl	playSoundA
	b	.L59
.L67:
	ldr	r0, .L69+16
	ldr	r1, [r2, #20]
	ldr	r3, [r0, #0]
	cmp	r1, r3
	addgt	r3, r3, #1
	strgt	r3, [r0, #0]
	bgt	.L62
	b	.L61
.L68:
	ldmia	r2, {r0, r1, r2}	@ phole ldm
	bl	playSoundB
	b	.L62
.L70:
	.align	2
.L69:
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
	ldr	r0, .L74
	strh	r3, [r4, #0]	@ movhi
	ldr	r3, .L74+4
	mov	lr, pc
	bx	r3
	ldr	r0, .L74+8
	ldr	r3, .L74+12
	mov	lr, pc
	bx	r3
.L72:
	ldr	r3, [r4, #304]
	tst	r3, #2
	bne	.L72
	mov	r1, #2096
	mov	r2, #11008
	add	r2, r2, #17
	mov	r3, #0
	ldr	r0, .L74+16
	add	r1, r1, #6
	bl	playSoundB
	ldr	r3, .L74+20
	mov	r2, #0
	str	r2, [r3, #0]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L75:
	.align	2
.L74:
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
	ldr	r0, .L83
	strh	r3, [r4, #0]	@ movhi
	ldr	r3, .L83+4
	mov	lr, pc
	bx	r3
	ldr	r0, .L83+8
	ldr	r3, .L83+12
	mov	lr, pc
	bx	r3
	ldr	r1, .L83+16
	ldr	ip, .L83+20
	ldr	r3, [r1, #0]
	mov	r0, r4
.L77:
	ldr	r2, [r0, #304]
	tst	r3, #8
	str	r3, [ip, #0]
	str	r2, [r1, #0]
	beq	.L78
	ands	r4, r2, #8
	beq	.L81
.L78:
	tst	r3, #4
	beq	.L80
	ands	r3, r2, #4
	beq	.L82
.L80:
	mov	r3, r2
	b	.L77
.L81:
	bl	init
	bl	setupGame
	mov	r1, #888832
	add	r1, r1, #544
	mov	r2, #11008
	ldr	r0, .L83+24
	add	r1, r1, #2
	add	r2, r2, #17
	mov	r3, #1
	bl	playSoundA
	mov	r1, #2096
	mov	r2, #11008
	add	r2, r2, #17
	mov	r3, r4
	ldr	r0, .L83+28
	add	r1, r1, #6
	bl	playSoundB
	ldr	r3, .L83+32
	mov	r2, #2
	str	r2, [r3, #0]
.L76:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L82:
	mov	r1, #2096
	mov	r2, #11008
	add	r2, r2, #17
	ldr	r0, .L83+28
	add	r1, r1, #6
	bl	playSoundB
	ldr	r3, .L83+32
	mov	r2, #1
	str	r2, [r3, #0]
	b	.L76
.L84:
	.align	2
.L83:
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
	ldr	r4, .L88
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
.L89:
	.align	2
.L88:
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
	ldr	r2, .L93
	ldr	r1, .L93+4
	ldr	r3, [r2, #0]
	smull	r0, r1, r3, r1
	mov	r0, r3, asr #31
	rsb	r1, r0, r1, asr #1
	add	r1, r1, r1, asl #2
	cmp	r3, r1
	beq	.L91
	ldr	r1, .L93+8
	ldr	r0, [r1, #0]
	cmp	r0, #3
	movgt	r0, #1
	addle	r0, r0, #1
	strgt	r0, [r1, #0]
	strle	r0, [r1, #0]
.L91:
	sub	r3, r3, #1
	str	r3, [r2, #0]
	bx	lr
.L94:
	.align	2
.L93:
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
	ldr	r3, .L171
	ldr	r3, [r3, #0]
	ldr	r2, .L171+4
	cmp	r3, #3
	movgt	r3, #1
	strgt	r3, [r2, #0]
	bgt	.L97
	add	r3, r3, #1
	cmp	r3, #2
	str	r3, [r2, #0]
	ble	.L97
.L98:
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L95
.L105:
	.word	.L100
	.word	.L101
	.word	.L102
	.word	.L103
	.word	.L104
.L169:
	ldr	r0, .L171+8
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+12
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+16
	add	r2, r2, #32768
	mov	r3, #448
	mov	lr, pc
	bx	r4
.L95:
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L97:
	mov	r2, #67108864
	ldrh	r1, [r2, #0]
	bic	r1, r1, #512
	strh	r1, [r2, #0]	@ movhi
	b	.L98
.L104:
	mov	r3, #67108864
	ldrh	r2, [r3, #0]
	orr	r2, r2, #512
	strh	r2, [r3, #0]	@ movhi
	ldr	r0, .L171+20
	ldr	r5, .L171+24
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+28
	add	r2, r2, #55296
	mov	r3, #1024
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r3, #704
	mov	r0, #3
	ldr	r1, .L171+36
	add	r2, r2, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L171+40
	ldr	r3, [r3, #0]
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L95
.L170:
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
	.word	.L168
	.word	.L169
.L100:
	ldr	r3, .L171+40
	ldr	r3, [r3, #0]
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L95
.L118:
	.word	.L106
	.word	.L107
	.word	.L108
	.word	.L109
	.word	.L110
	.word	.L111
	.word	.L112
	.word	.L113
	.word	.L114
	.word	.L115
	.word	.L116
	.word	.L117
.L101:
	ldr	r3, .L171+40
	ldr	r3, [r3, #0]
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L95
.L131:
	.word	.L119
	.word	.L120
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
.L102:
	ldr	r3, .L171+40
	ldr	r3, [r3, #0]
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L95
.L144:
	.word	.L132
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
.L103:
	mov	r3, #67108864
	ldrh	r2, [r3, #0]
	orr	r2, r2, #512
	strh	r2, [r3, #0]	@ movhi
	ldr	r0, .L171+44
	ldr	r5, .L171+24
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+48
	add	r2, r2, #55296
	mov	r3, #1024
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L171+52
	add	r2, r2, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L171+40
	ldr	r3, [r3, #0]
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L95
.L157:
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
	.word	.L156
.L156:
	ldr	r0, .L171+56
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+60
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+64
	add	r2, r2, #32768
	mov	r3, #576
	mov	lr, pc
	bx	r4
	b	.L95
.L155:
	ldr	r0, .L171+68
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+72
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+76
	add	r2, r2, #32768
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L95
.L154:
	ldr	r0, .L171+80
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+84
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+88
	add	r2, r2, #32768
	mov	r3, #608
	mov	lr, pc
	bx	r4
	b	.L95
.L153:
	ldr	r0, .L171+92
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+96
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+100
	add	r2, r2, #32768
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L95
.L152:
	ldr	r0, .L171+104
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+108
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+112
	add	r2, r2, #32768
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L95
.L151:
	ldr	r0, .L171+116
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+120
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+124
	add	r2, r2, #32768
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L95
.L150:
	ldr	r0, .L171+128
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+132
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+136
	add	r2, r2, #32768
	mov	r3, #192
	mov	lr, pc
	bx	r4
	b	.L95
.L149:
	ldr	r0, .L171+140
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+144
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+148
	add	r2, r2, #32768
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L95
.L148:
	ldr	r0, .L171+152
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+156
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+160
	add	r2, r2, #32768
	mov	r3, #608
	mov	lr, pc
	bx	r4
	b	.L95
.L147:
	ldr	r0, .L171+164
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+168
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+172
	add	r2, r2, #32768
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L95
.L146:
	ldr	r0, .L171+176
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+180
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+184
	add	r2, r2, #32768
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L95
.L145:
	ldr	r0, .L171+188
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+192
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+196
	add	r2, r2, #32768
	mov	r3, #352
	mov	lr, pc
	bx	r4
	b	.L95
.L143:
	ldr	r0, .L171+200
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+204
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+208
	add	r2, r2, #32768
	mov	r3, #576
	mov	lr, pc
	bx	r4
	b	.L95
.L142:
	ldr	r0, .L171+212
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+216
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+220
	add	r2, r2, #32768
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L95
.L141:
	ldr	r0, .L171+224
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+228
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+232
	add	r2, r2, #32768
	mov	r3, #608
	mov	lr, pc
	bx	r4
	b	.L95
.L140:
	ldr	r0, .L171+236
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+240
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+244
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L95
.L139:
	ldr	r0, .L171+248
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+252
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+256
	add	r2, r2, #32768
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L95
.L138:
	ldr	r0, .L171+260
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+264
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+268
	add	r2, r2, #32768
	mov	r3, #96
	mov	lr, pc
	bx	r4
	b	.L95
.L137:
	ldr	r0, .L171+272
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+276
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+280
	add	r2, r2, #32768
	mov	r3, #192
	mov	lr, pc
	bx	r4
	b	.L95
.L136:
	ldr	r0, .L171+284
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+288
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+292
	add	r2, r2, #32768
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L95
.L135:
	ldr	r0, .L171+296
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+300
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+304
	add	r2, r2, #32768
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L95
.L134:
	ldr	r0, .L171+308
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+312
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+316
	add	r2, r2, #32768
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L95
.L133:
	ldr	r0, .L171+320
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+324
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+328
	add	r2, r2, #32768
	mov	r3, #608
	mov	lr, pc
	bx	r4
	b	.L95
.L132:
	ldr	r0, .L171+332
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+336
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+340
	add	r2, r2, #32768
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L95
.L130:
	ldr	r0, .L171+344
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+348
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+352
	add	r2, r2, #32768
	mov	r3, #704
	mov	lr, pc
	bx	r4
	b	.L95
.L129:
	ldr	r0, .L171+356
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+360
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+364
	add	r2, r2, #32768
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L95
.L128:
	ldr	r0, .L171+368
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+372
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+376
	add	r2, r2, #32768
	mov	r3, #736
	mov	lr, pc
	bx	r4
	b	.L95
.L127:
	ldr	r0, .L171+380
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+384
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+388
	add	r2, r2, #32768
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L95
.L126:
	ldr	r0, .L171+392
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+396
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+400
	add	r2, r2, #32768
	mov	r3, #608
	mov	lr, pc
	bx	r4
	b	.L95
.L125:
	ldr	r0, .L171+404
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+408
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+412
	add	r2, r2, #32768
	mov	r3, #576
	mov	lr, pc
	bx	r4
	b	.L95
.L124:
	ldr	r0, .L171+416
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+420
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+424
	add	r2, r2, #32768
	mov	r3, #64
	mov	lr, pc
	bx	r4
	b	.L95
.L123:
	ldr	r0, .L171+568
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+428
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+432
	add	r2, r2, #32768
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L95
.L122:
	ldr	r0, .L171+436
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+440
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+444
	add	r2, r2, #32768
	mov	r3, #608
	mov	lr, pc
	bx	r4
	b	.L95
.L121:
	ldr	r0, .L171+448
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+452
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+456
	add	r2, r2, #32768
	mov	r3, #736
	mov	lr, pc
	bx	r4
	b	.L95
.L120:
	ldr	r0, .L171+460
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+464
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+468
	add	r2, r2, #32768
	mov	r3, #608
	mov	lr, pc
	bx	r4
	b	.L95
.L119:
	ldr	r0, .L171+472
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+476
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+480
	add	r2, r2, #32768
	mov	r3, #416
	mov	lr, pc
	bx	r4
	b	.L95
.L117:
	ldr	r0, .L171+484
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+488
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+492
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L95
.L172:
	.align	2
.L171:
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
	.word	bg_01_fallscrnPal
	.word	bg_01_fallscrnMap
	.word	bg_01_fallscrnTiles
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
	.word	bg_01_summerscrnPal
	.word	bg_01_summerscrnMap
	.word	bg_01_summerscrnTiles
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
	.word	bg_01_springscrnPal
	.word	bg_01_springscrnMap
	.word	bg_01_springscrnTiles
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
	.word	bg_01_neutralscrnPal
	.word	bg_01_neutralscrnMap
	.word	bg_01_neutralscrnTiles
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
	.word	bg_01_winterscrnPal
	.word	bg_01_winterscrnMap
	.word	bg_01_winterscrnTiles
	.word	bg_00_winterscrnPal
	.word	bg_00_winterscrnMap
	.word	bg_00_winterscrnTiles
.L116:
	ldr	r0, .L171+496
	ldr	r3, .L171+620
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+500
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+628
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+504
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L95
.L115:
	ldr	r0, .L171+508
	ldr	r3, .L171+620
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+512
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+628
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+516
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L95
.L114:
	ldr	r0, .L171+520
	ldr	r3, .L171+620
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+524
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+628
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+528
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L95
.L113:
	ldr	r0, .L171+532
	ldr	r3, .L171+620
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+536
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+628
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+540
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L95
.L112:
	ldr	r0, .L171+544
	ldr	r3, .L171+620
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+548
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+628
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+552
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L95
.L111:
	ldr	r0, .L171+556
	ldr	r3, .L171+620
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+560
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+628
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+564
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L95
.L110:
	ldr	r0, .L171+568
	ldr	r3, .L171+620
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+572
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+628
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+576
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L95
.L109:
	ldr	r0, .L171+580
	ldr	r3, .L171+620
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+584
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+628
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+588
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L95
.L108:
	ldr	r0, .L171+592
	ldr	r3, .L171+620
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+596
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+628
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+600
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L95
.L107:
	ldr	r0, .L171+604
	ldr	r3, .L171+620
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+608
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+628
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+612
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L95
.L106:
	ldr	r0, .L171+616
	ldr	r3, .L171+620
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+624
	add	r2, r2, #57344
	mov	r3, #2048
	ldr	r4, .L171+628
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+632
	add	r2, r2, #32768
	mov	r3, #192
	mov	lr, pc
	bx	r4
	b	.L95
.L168:
	ldr	r0, .L171+636
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+640
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+644
	add	r2, r2, #32768
	mov	r3, #448
	mov	lr, pc
	bx	r4
	b	.L95
.L167:
	ldr	r0, .L171+648
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+652
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+656
	add	r2, r2, #32768
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L95
.L166:
	ldr	r0, .L171+660
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+664
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+668
	add	r2, r2, #32768
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L95
.L165:
	ldr	r0, .L171+672
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+676
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+680
	add	r2, r2, #32768
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L95
.L164:
	ldr	r0, .L171+684
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+688
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+692
	add	r2, r2, #32768
	mov	r3, #352
	mov	lr, pc
	bx	r4
	b	.L95
.L163:
	ldr	r0, .L171+696
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+700
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+704
	add	r2, r2, #32768
	mov	r3, #64
	mov	lr, pc
	bx	r4
	b	.L95
.L162:
	ldr	r0, .L171+708
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+712
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+716
	add	r2, r2, #32768
	mov	r3, #352
	mov	lr, pc
	bx	r4
	b	.L95
.L161:
	ldr	r0, .L171+720
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+724
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+728
	add	r2, r2, #32768
	mov	r3, #352
	mov	lr, pc
	bx	r4
	b	.L95
.L160:
	ldr	r0, .L171+732
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+736
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+740
	add	r2, r2, #32768
	mov	r3, #352
	mov	lr, pc
	bx	r4
	b	.L95
.L159:
	ldr	r0, .L171+744
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+748
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+752
	add	r2, r2, #32768
	mov	r3, #352
	mov	lr, pc
	bx	r4
	b	.L95
.L158:
	ldr	r0, .L171+756
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+760
	add	r2, r2, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L171+764
	add	r2, r2, #32768
	mov	r3, #448
	mov	lr, pc
	bx	r4
	b	.L95
	.size	seasonChange, .-seasonChange
	.align	2
	.global	pause
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L180
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, .L180+4
	ldr	r2, [r0, #0]
	mov	ip, #67108864
.L174:
	ldr	r3, [ip, #304]
	tst	r2, #8
	str	r2, [r5, #0]
	str	r3, [r0, #0]
	mov	r1, #67108864
	beq	.L175
	tst	r3, #8
	beq	.L178
.L175:
	tst	r2, #4
	beq	.L177
	ands	r4, r3, #4
	beq	.L179
.L177:
	mov	r2, r3
	b	.L174
.L178:
	ldrh	r3, [r1, #130]
	orr	r3, r3, #768
	strh	r3, [r1, #130]	@ movhi
	ldrh	r3, [r1, #130]
	ldrh	r2, [r1, #0]
	orr	r3, r3, #12288
	eor	r2, r2, #256
	strh	r3, [r1, #130]	@ movhi
	ldr	r3, .L180+8
	strh	r2, [r1, #0]	@ movhi
	mov	r2, #2
	str	r2, [r3, #0]
.L173:
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L179:
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
	ldr	r0, .L180+12
	sub	r1, r1, #176
	add	r2, r2, #17
	strh	r5, [ip, #0]	@ movhi
	strh	lr, [ip, #130]	@ movhi
	bl	playSoundA
	ldr	r3, .L180+8
	str	r4, [r3, #0]
	b	.L173
.L181:
	.align	2
.L180:
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
	ldr	r3, .L185
	ldr	r2, [r3, #0]
	cmp	r2, #0
	ble	.L183
	ldr	r1, .L185+4
	mov	r0, #1
	sub	r2, r2, #1
	str	r0, [r1, #28]
	mvn	r0, #0
	str	r0, [r1, #8]
	str	r2, [r3, #0]
	bx	lr
.L183:
	ldr	r3, .L185+4
	mov	r2, #0
	str	r2, [r3, #28]
	mov	r2, #1
	str	r2, [r3, #8]
	bx	lr
.L186:
	.align	2
.L185:
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
	ldr	r3, .L262
	ldr	r3, [r3, #0]
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L260
.L194:
	.word	.L189
	.word	.L190
	.word	.L191
	.word	.L192
	.word	.L193
.L260:
	mov	r0, #0
	bx	lr
.L193:
	ldr	r3, .L262+4
	ldr	r3, [r3, #0]
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L261
.L255:
	.word	.L244
	.word	.L245
	.word	.L246
	.word	.L247
	.word	.L248
	.word	.L261
	.word	.L249
	.word	.L250
	.word	.L251
	.word	.L252
	.word	.L253
	.word	.L254
.L189:
	ldr	r3, .L262+4
	ldr	r3, [r3, #0]
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L260
.L207:
	.word	.L195
	.word	.L196
	.word	.L197
	.word	.L198
	.word	.L199
	.word	.L200
	.word	.L201
	.word	.L202
	.word	.L203
	.word	.L204
	.word	.L205
	.word	.L254
.L191:
	ldr	r3, .L262+4
	ldr	r3, [r3, #0]
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L260
.L231:
	.word	.L220
	.word	.L221
	.word	.L222
	.word	.L223
	.word	.L224
	.word	.L225
	.word	.L260
	.word	.L226
	.word	.L227
	.word	.L228
	.word	.L229
	.word	.L254
.L192:
	ldr	r3, .L262+4
	ldr	r3, [r3, #0]
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L260
.L243:
	.word	.L232
	.word	.L233
	.word	.L234
	.word	.L235
	.word	.L236
	.word	.L260
	.word	.L237
	.word	.L238
	.word	.L239
	.word	.L240
	.word	.L241
	.word	.L254
.L190:
	ldr	r3, .L262+4
	ldr	r3, [r3, #0]
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L260
.L219:
	.word	.L208
	.word	.L209
	.word	.L210
	.word	.L211
	.word	.L212
	.word	.L260
	.word	.L213
	.word	.L214
	.word	.L215
	.word	.L216
	.word	.L217
	.word	.L254
.L254:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+12
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L217:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+16
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L216:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+20
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L215:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+24
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L214:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+28
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L213:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+32
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L212:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+36
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L211:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+40
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L210:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+44
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L209:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+48
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L208:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+52
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L241:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+56
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L240:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+60
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L239:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+64
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L238:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+68
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L237:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+72
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L236:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+76
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L235:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+80
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L234:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+84
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L233:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+88
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L232:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+92
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L229:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+96
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L228:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+100
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L227:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+104
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L226:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+108
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L225:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+112
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L224:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+116
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L223:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+120
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L222:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+124
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L221:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+128
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L220:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+132
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L253:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+136
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L252:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+140
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L251:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+144
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L250:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+148
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L249:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+152
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L248:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+156
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L247:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+160
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L246:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+164
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L245:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+168
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L244:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+172
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L261:
	mov	r0, #0
	bx	lr
.L195:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+176
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L205:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+180
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L204:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+184
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L203:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+188
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L202:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+192
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L201:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+196
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L200:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+200
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L199:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+204
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L198:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+208
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L197:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+212
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L196:
	ldr	r3, .L262+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L262+216
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L263:
	.align	2
.L262:
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
	.word	bg_01_springscrn_collisionBitmap
	.word	bg_00_springscrn_collisionBitmap
	.word	bg_10_fallscrn_collisionBitmap
	.word	bg_09_fallscrn_collisionBitmap
	.word	bg_08_fallscrn_collisionBitmap
	.word	bg_07_fallscrn_collisionBitmap
	.word	bg_06_fallscrn_collisionBitmap
	.word	bg_04_fallscrn_collisionBitmap
	.word	bg_03_fallscrn_collisionBitmap
	.word	bg_02_fallscrn_collisionBitmap
	.word	bg_01_fallscrn_collisionBitmap
	.word	bg_00_fallscrn_collisionBitmap
	.word	bg_10_summerscrn_collisionBitmap
	.word	bg_09_summerscrn_collisionBitmap
	.word	bg_08_summerscrn_collisionBitmap
	.word	bg_07_summerscrn_collisionBitmap
	.word	bg_05_summerscrn_collisionBitmap
	.word	bg_04_summerscrn_collisionBitmap
	.word	bg_03_summerscrn_collisionBitmap
	.word	bg_02_summerscrn_collisionBitmap
	.word	bg_01_summerscrn_collisionBitmap
	.word	bg_00_summerscrn_collisionBitmap
	.word	bg_10_winterscrn_collisionBitmap
	.word	bg_09_winterscrn_collisionBitmap
	.word	bg_08_winterscrn_collisionBitmap
	.word	bg_07_winterscrn_collisionBitmap
	.word	bg_06_winterscrn_collisionBitmap
	.word	bg_04_winterscrn_collisionBitmap
	.word	bg_03_winterscrn_collisionBitmap
	.word	bg_02_winterscrn_collisionBitmap
	.word	bg_01_winterscrn_collisionBitmap
	.word	bg_00_winterscrn_collisionBitmap
	.word	bg_00_neutralscrn_collisionBitmap
	.word	bg_10_neutralscrn_collisionBitmap
	.word	bg_09_neutralscrn_collisionBitmap
	.word	bg_08_neutralscrn_collisionBitmap
	.word	bg_07_neutralscrn_collisionBitmap
	.word	bg_06_neutralscrn_collisionBitmap
	.word	bg_05_neutralscrn_collisionBitmap
	.word	bg_04_neutralscrn_collisionBitmap
	.word	bg_03_neutralscrn_collisionBitmap
	.word	bg_02_neutralscrn_collisionBitmap
	.word	bg_01_neutralscrn_collisionBitmap
	.size	checkCollision, .-checkCollision
	.align	2
	.global	checkWinCollision
	.type	checkWinCollision, %function
checkWinCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L310
	ldr	r3, [r3, #0]
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L305
.L271:
	.word	.L266
	.word	.L267
	.word	.L268
	.word	.L269
	.word	.L270
.L267:
	ldr	r3, .L310+4
	ldr	r3, [r3, #0]
	cmp	r3, #6
	beq	.L285
	cmp	r3, #11
	beq	.L299
	cmp	r3, #2
	beq	.L309
.L305:
	mov	r0, #0
	bx	lr
.L270:
	ldr	r3, .L310+4
	ldr	r3, [r3, #0]
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L306
.L300:
	.word	.L295
	.word	.L306
	.word	.L306
	.word	.L306
	.word	.L306
	.word	.L306
	.word	.L306
	.word	.L296
	.word	.L306
	.word	.L297
	.word	.L298
	.word	.L299
.L266:
	ldr	r3, .L310+4
	ldr	r3, [r3, #0]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L305
.L283:
	.word	.L272
	.word	.L273
	.word	.L274
	.word	.L275
	.word	.L276
	.word	.L277
	.word	.L278
	.word	.L279
	.word	.L280
	.word	.L281
	.word	.L282
.L268:
	ldr	r3, .L310+4
	ldr	r3, [r3, #0]
	cmp	r3, #1
	beq	.L287
	cmp	r3, #11
	bne	.L305
.L299:
	ldr	r3, .L310+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L310+12
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L269:
	ldr	r3, .L310+4
	ldr	r3, [r3, #0]
	sub	r3, r3, #3
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L305
.L294:
	.word	.L289
	.word	.L290
	.word	.L291
	.word	.L305
	.word	.L305
	.word	.L292
	.word	.L305
	.word	.L305
	.word	.L299
.L287:
	ldr	r3, .L310+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L310+16
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L292:
	ldr	r3, .L310+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L310+20
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L291:
	ldr	r3, .L310+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L310+24
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L290:
	ldr	r3, .L310+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L310+28
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L289:
	ldr	r3, .L310+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L310+32
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L298:
	ldr	r3, .L310+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L310+36
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L297:
	ldr	r3, .L310+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L310+40
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L296:
	ldr	r3, .L310+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L310+44
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L295:
	ldr	r3, .L310+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L310+48
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L306:
	mov	r0, #0
	bx	lr
.L309:
	ldr	r3, .L310+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L310+52
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L272:
	ldr	r3, .L310+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L310+56
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L282:
	ldr	r3, .L310+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L310+12
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L281:
	ldr	r3, .L310+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L310+60
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L280:
	ldr	r3, .L310+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L310+64
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L279:
	ldr	r3, .L310+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L310+68
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L278:
	ldr	r3, .L310+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L310+72
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L277:
	ldr	r3, .L310+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L310+76
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L276:
	ldr	r3, .L310+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L310+80
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L275:
	ldr	r3, .L310+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L310+84
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L274:
	ldr	r3, .L310+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L310+88
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L273:
	ldr	r3, .L310+8
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r3, #20]
	add	r2, r1, r2
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L310+92
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L285:
	ldr	r3, .L310+8
	add	r2, r3, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #8
	add	r2, r3, r2, asl #9
	ldr	r3, .L310+96
	add	r3, r3, r2, asl #1
	ldrh	r0, [r3, #16]
	cmp	r0, #31
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L311:
	.align	2
.L310:
	.word	season
	.word	currentLevel
	.word	player
	.word	bg_final_collisionBitmap
	.word	bg_01_summerscrn_collisionBitmap
	.word	bg_08_fallscrn_collisionBitmap
	.word	bg_05_fallscrn_collisionBitmap
	.word	bg_04_fallscrn_collisionBitmap
	.word	bg_03_fallscrn_collisionBitmap
	.word	bg_10_winterscrn_collisionBitmap
	.word	bg_09_winterscrn_collisionBitmap
	.word	bg_07_winterscrn_collisionBitmap
	.word	bg_00_winterscrn_collisionBitmap
	.word	bg_02_springscrn_collisionBitmap
	.word	bg_01_neutralscrn_collisionBitmap
	.word	bg_10_neutralscrn_collisionBitmap
	.word	bg_09_neutralscrn_collisionBitmap
	.word	bg_08_neutralscrn_collisionBitmap
	.word	bg_07_neutralscrn_collisionBitmap
	.word	bg_06_neutralscrn_collisionBitmap
	.word	bg_05_neutralscrn_collisionBitmap
	.word	bg_04_neutralscrn_collisionBitmap
	.word	bg_03_neutralscrn_collisionBitmap
	.word	bg_02_neutralscrn_collisionBitmap
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
	ldr	r4, .L346
	ldr	r3, [r4, #32]
	mov	r2, #0
	ands	r3, r3, #3
	str	r2, [r4, #24]
	bne	.L313
	ldr	r2, [r4, #48]
	cmp	r2, #1
	addle	r2, r2, #1
	strgt	r3, [r4, #48]
	strle	r2, [r4, #48]
.L313:
	ldr	r5, .L346+4
	ldr	r8, [r5, #0]
	tst	r8, #1
	beq	.L315
	ldr	r3, .L346+8
	ldr	r6, [r3, #0]
	ands	r6, r6, #1
	beq	.L341
.L315:
	tst	r8, #2
	beq	.L340
	ldr	r3, .L346+8
	ldr	r3, [r3, #0]
	ands	r3, r3, #2
	beq	.L339
.L340:
	ldr	r6, .L346+12
.L316:
	tst	r8, #8
	beq	.L317
	ldr	r3, .L346+8
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L342
.L317:
	mov	r3, #67108864
	ldr	r2, [r3, #304]
	tst	r2, #256
	bne	.L318
	ldr	r2, [r3, #304]
	tst	r2, #512
	beq	.L343
.L318:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #16
	bne	.L319
	ldr	r1, .L346+16
	ldr	r0, [r1, #0]
	ldr	r2, .L346
	mov	r3, #1
	cmp	r0, #272
	mov	ip, #0
	str	r3, [r4, #24]
	str	r3, [r4, #12]
	str	ip, [r4, #44]
	ldrge	r3, [r2, #4]
	bge	.L321
	ldr	r3, [r2, #40]
	add	ip, r3, r3, lsr #31
	ldr	r3, [r2, #4]
	mov	r2, ip, asr #1
	rsb	r2, r2, #119
	cmp	r2, r3
	addlt	r0, r0, #1
	strlt	r0, [r1, #0]
	bge	.L321
.L319:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #32
	bne	.L322
	ldr	r1, .L346+16
	ldr	r0, [r1, #0]
	mov	r3, #1
	str	r3, [r4, #24]
	str	r3, [r4, #44]
	cmp	r0, #0
	mvn	r3, #0
	ldr	r2, .L346
	str	r3, [r4, #12]
	ble	.L323
	ldr	r3, [r2, #36]
	add	ip, r3, r3, lsr #31
	ldr	r3, [r2, #4]
	mov	r2, ip, asr #1
	rsb	r2, r2, #119
	cmp	r2, r3
	subge	r0, r0, #1
	strge	r0, [r1, #0]
	blt	.L324
.L322:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L344
.L325:
	bl	checkCollision
	cmp	r0, #0
	beq	.L326
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L327
.L326:
	ldr	r3, .L346+20
	ldr	r2, [r4, #8]
	ldr	r0, [r3, #0]
	ldr	r1, [r4, #0]
	add	r0, r0, r2
	cmp	r1, #159
	str	r0, [r3, #0]
	ldrle	r3, .L346
	ldrgt	r3, .L346+24
	addle	r2, r1, r2
	movgt	r2, #5
	mov	ip, #0
	str	ip, [r4, #24]
	strle	r2, [r3, #0]
	strgt	r2, [r3, #0]
	bl	checkWinCollision
	cmp	r0, #0
	bne	.L345
.L330:
	ldr	r2, [r4, #24]
	ldr	r3, .L346
	cmp	r2, #0
	ldrne	r2, [r3, #32]
	addne	r2, r2, #1
	streq	r2, [r3, #48]
	strne	r2, [r3, #32]
	ldr	r3, [r6, #0]
	cmp	r3, #3
	beq	.L334
	cmp	r3, #4
	bne	.L312
	ldr	r2, .L346+28
	ldr	r3, .L346+32
	ldr	r0, [r2, #0]
	ldr	r1, [r3, #0]
	sub	r0, r0, #1
	sub	r1, r1, #1
	str	r0, [r2, #0]
	str	r1, [r3, #0]
.L312:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L321:
	ldr	r2, [r4, #36]
	rsb	r2, r2, #240
	cmp	r2, r3
	ldrgt	r2, .L346
	addgt	r3, r3, #1
	strgt	r3, [r2, #4]
	b	.L319
.L327:
	ldr	r2, .L346+36
	mov	r1, #1
	str	r1, [r2, #0]
	ldr	r2, .L346
	str	r3, [r2, #12]
	bl	checkWinCollision
	cmp	r0, #0
	beq	.L330
.L345:
	mov	r1, #9152
	mov	r2, #11008
	add	r2, r2, #17
	mov	r3, #0
	ldr	r0, .L346+40
	add	r1, r1, #4
	bl	playSoundB
	ldr	r3, .L346+24
	mov	r2, #6
	str	r2, [r3, #0]
	b	.L330
.L343:
	ldr	r3, [r3, #304]
	tst	r3, #4
	bne	.L318
	ldr	ip, .L346+44
	mov	lr, #100
	str	lr, [ip, #0]
	ldr	ip, .L346+48
	mvn	lr, #0
	mov	r1, #20224
	mov	r2, #11008
	add	r2, r2, #17
	mov	r3, #0
	ldr	r0, .L346+52
	add	r1, r1, #20
	str	lr, [ip, #0]
	bl	playSoundB
	ldr	r3, .L346+24
	mov	r2, #3
	str	r2, [r3, #0]
	b	.L318
.L342:
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
	ldr	r3, .L346+24
	mov	r2, #4
	str	r2, [r3, #0]
	b	.L317
.L341:
	ldr	r7, .L346+36
	ldr	r3, [r7, #0]
	cmp	r3, #0
	beq	.L315
	bl	checkCollision
	cmp	r0, #0
	beq	.L315
	mov	ip, #1
	str	ip, [r4, #28]
	ldr	ip, .L346+56
	mov	lr, #30
	mov	r1, #3104
	mov	r2, #11008
	ldr	r0, .L346+60
	add	r1, r1, #14
	add	r2, r2, #17
	mov	r3, r6
	str	lr, [ip, #0]
	str	r6, [r7, #0]
	bl	playSoundB
	bl	jump
	ldr	r8, [r5, #0]
	b	.L315
.L323:
	ldr	r3, [r2, #4]
.L324:
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4, #4]
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L325
.L344:
	bl	jump
	b	.L325
.L334:
	ldr	r3, .L346+32
	ldr	r2, [r3, #0]
	sub	r2, r2, #1
	str	r2, [r3, #0]
	b	.L312
.L339:
	ldr	ip, .L346+44
	ldr	r6, .L346+12
	mov	r7, #100
	str	r7, [ip, #0]
	ldr	lr, [r6, #0]
	ldr	ip, .L346+48
	mov	r1, #20224
	mov	r2, #11008
	add	r2, r2, #17
	ldr	r0, .L346+52
	add	r1, r1, #20
	str	lr, [ip, #0]
	bl	playSoundB
	ldr	r3, .L346+24
	mov	r2, #3
	str	r2, [r3, #0]
	ldr	r8, [r5, #0]
	b	.L316
.L347:
	.align	2
.L346:
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
	ldr	r0, .L356
	strh	r3, [r4, #0]	@ movhi
	ldr	r3, .L356+4
	mov	lr, pc
	bx	r3
	ldr	r0, .L356+8
	ldr	r3, .L356+12
	mov	lr, pc
	bx	r3
	ldr	r1, .L356+16
	ldr	ip, .L356+20
	ldr	r2, [r1, #0]
	mov	r0, r4
.L349:
	ldr	r3, [r0, #304]
	tst	r2, #1
	str	r2, [ip, #0]
	str	r3, [r1, #0]
	beq	.L350
	tst	r3, #1
	bne	.L350
	ldr	r3, .L356+24
	ldr	r2, [r3, #0]
	cmp	r2, #10
	ble	.L354
	ldr	r3, .L356+28
	mov	r2, #7
	str	r2, [r3, #0]
.L348:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L350:
	tst	r2, #4
	beq	.L353
	ands	r4, r3, #4
	beq	.L355
.L353:
	mov	r2, r3
	b	.L349
.L355:
	mov	r1, #2096
	mov	r2, #11008
	ldr	r0, .L356+32
	add	r1, r1, #6
	add	r2, r2, #17
	mov	r3, r4
	bl	playSoundB
	mov	r1, #679936
	mov	r2, #11008
	mov	r3, #1
	ldr	r0, .L356+36
	sub	r1, r1, #176
	add	r2, r2, #17
	bl	playSoundA
	ldr	r3, .L356+28
	str	r4, [r3, #0]
	b	.L348
.L354:
	add	r2, r2, #1
	str	r2, [r3, #0]
	bl	init
	bl	setupLevel
	ldr	r3, .L356+28
	mov	r2, #2
	str	r2, [r3, #0]
	b	.L348
.L357:
	.align	2
.L356:
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
	ldr	r0, .L361
	strh	r3, [r4, #0]	@ movhi
	ldr	r3, .L361+4
	mov	lr, pc
	bx	r3
	ldr	r0, .L361+8
	ldr	r3, .L361+12
	mov	lr, pc
	bx	r3
	ldr	r1, .L361+16
	ldr	ip, .L361+20
	ldr	r2, [r1, #0]
	mov	r0, r4
.L359:
	ldr	r3, [r0, #304]
	tst	r2, #1
	str	r2, [ip, #0]
	str	r3, [r1, #0]
	beq	.L360
	ands	r4, r3, #1
	bne	.L360
	mov	r1, #2096
	mov	r2, #11008
	ldr	r0, .L361+24
	add	r1, r1, #6
	add	r2, r2, #17
	mov	r3, r4
	bl	playSoundB
	mov	r1, #679936
	mov	r2, #11008
	mov	r3, #1
	ldr	r0, .L361+28
	sub	r1, r1, #176
	add	r2, r2, #17
	bl	playSoundA
	ldr	r3, .L361+32
	str	r4, [r3, #0]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L360:
	mov	r2, r3
	b	.L359
.L362:
	.align	2
.L361:
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
	ldr	r0, .L369
	strh	r3, [r4, #0]	@ movhi
	ldr	r3, .L369+4
	mov	lr, pc
	bx	r3
	ldr	r0, .L369+8
	ldr	r3, .L369+12
	mov	lr, pc
	bx	r3
	ldr	r1, .L369+16
	ldr	ip, .L369+20
	ldr	r2, [r1, #0]
	mov	r0, r4
.L364:
	ldr	r3, [r0, #304]
	tst	r2, #1
	str	r2, [ip, #0]
	str	r3, [r1, #0]
	beq	.L365
	tst	r3, #1
	bne	.L365
	bl	init
	bl	setupLevel
	ldr	r3, .L369+24
	mov	r2, #2
	str	r2, [r3, #0]
.L363:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L365:
	tst	r2, #4
	beq	.L367
	ands	r4, r3, #4
	beq	.L368
.L367:
	mov	r2, r3
	b	.L364
.L368:
	mov	r1, #2096
	mov	r2, #11008
	ldr	r0, .L369+28
	add	r1, r1, #6
	add	r2, r2, #17
	mov	r3, r4
	bl	playSoundB
	mov	r1, #679936
	mov	r2, #11008
	mov	r3, #1
	ldr	r0, .L369+32
	sub	r1, r1, #176
	add	r2, r2, #17
	bl	playSoundA
	ldr	r3, .L369+24
	str	r4, [r3, #0]
	b	.L363
.L370:
	.align	2
.L369:
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
	ldr	r0, .L388
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
	ldr	r0, .L388+4
	add	r2, r2, #17
	mov	r3, #1
	strh	fp, [r6, #132]	@ movhi
	strh	lr, [r6, #128]	@ movhi
	strh	ip, [r6, #130]	@ movhi
	bl	playSoundA
	bl	splash
	ldr	r7, .L388+8
	ldr	r4, .L388+12
	ldr	r5, .L388+16
	ldr	r8, .L388+20
.L383:
	ldr	r3, .L388+24
	ldr	r0, .L388+28
	ldr	r3, [r3, #0]
	ldr	r2, .L388+32
	ldr	fp, [r7, #0]
	ldr	ip, [r0, #0]
	ldr	r0, [r6, #304]
	str	r3, [sp, #0]
	ldr	r3, .L388+36
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
	b	.L372
.L381:
	.word	.L373
	.word	.L374
	.word	.L375
	.word	.L376
	.word	.L377
	.word	.L378
	.word	.L379
	.word	.L380
.L379:
	bl	winLevel
.L386:
	ldr	r2, .L388+32
	ldr	r3, .L388+28
	ldr	sl, [r4, #0]
	ldr	r9, [r4, #4]
	ldr	lr, [r2, #0]
	ldr	ip, [r3, #0]
.L372:
	ldrb	fp, [r8, #0]	@ zero_extendqisi2
	str	fp, [sp, #20]
	ldr	fp, .L388+40
	ldr	r2, .L388+44
	ldrh	fp, [fp, #0]
	ldr	r3, [r2, #0]
	ldr	r1, [r4, #48]
	ldr	r2, [r8, #4]
	str	fp, [sp, #4]
	ldr	r0, [r4, #44]
	ldr	fp, .L388+48
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
	ldr	r1, .L388+16
	mov	r2, #117440512
	mov	r3, #512
	strh	lr, [r6, #22]	@ movhi
	ldr	fp, .L388+52
	mov	lr, pc
	bx	fp
	ldr	ip, .L388+56
	mov	lr, pc
	bx	ip
	b	.L383
.L380:
	bl	gameEnd
.L384:
	ldr	fp, .L388+32
	ldr	r0, .L388+28
	ldr	sl, [r4, #0]
	ldr	r9, [r4, #4]
	ldr	lr, [fp, #0]
	ldr	ip, [r0, #0]
	b	.L372
.L378:
	bl	lose
.L385:
	ldr	ip, .L388+32
	ldr	r0, .L388+28
	ldr	lr, [ip, #0]
	ldr	sl, [r4, #0]
	ldr	r9, [r4, #4]
	ldr	ip, [r0, #0]
	b	.L372
.L377:
	bl	pause
.L387:
	ldr	r3, .L388+32
	ldr	fp, .L388+28
	ldr	sl, [r4, #0]
	ldr	r9, [r4, #4]
	ldr	lr, [r3, #0]
	ldr	ip, [fp, #0]
	b	.L372
.L376:
	bl	warpAnimation
	ldr	r2, .L388+60
	ldr	r3, [r2, #0]
	cmp	r3, #0
	bgt	.L387
	bl	seasonChange
	ldr	ip, .L388+24
	ldr	r0, .L388+32
	ldr	r2, .L388+28
	mov	lr, #2
	str	lr, [ip, #0]
	ldr	sl, [r4, #0]
	ldr	r9, [r4, #4]
	ldr	lr, [r0, #0]
	ldr	ip, [r2, #0]
	b	.L372
.L375:
	bl	game
	b	.L384
.L374:
	bl	instructions
	b	.L386
.L373:
	bl	splash
	b	.L385
.L389:
	.align	2
.L388:
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
