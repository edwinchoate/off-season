	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
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
	mov	ip, #6784
	mov	r3, #67108864
	mov	r0, #5120
	ldr	r1, .L6
	ldr	r2, .L6+4
	stmfd	sp!, {r4, lr}
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	ldr	r0, .L6+8
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, .L6+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L6+16
	ldr	r1, .L6+20
	ldr	r2, .L6+24
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r0, .L6+28
	ldr	r3, .L6+32
	mov	lr, pc
	bx	r3
	mov	r0, #3
	ldr	r1, .L6+36
	ldr	r2, .L6+40
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L6+44
	mov	r2, #100663296
	mov	r3, #2336
	mov	lr, pc
	bx	r4
	mov	r1, #0
	mov	r0, #16
	mov	ip, #1
	ldr	r2, .L6+48
	ldr	lr, .L6+52
	mov	r3, r1
	str	r1, [lr]
	str	r1, [r2, #12]
	str	r1, [r2, #24]
	str	r1, [r2, #28]
	str	r1, [r2, #32]
	str	r1, [r2, #48]
	str	r1, [r2, #44]
	str	ip, [r2, #8]
	str	r0, [r2, #36]
	str	r0, [r2, #40]
	ldr	r1, .L6+56
.L2:
	ldrh	r2, [r1, r3]
	orr	r2, r2, #512
	strh	r2, [r1, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L2
	mov	r1, #5
	mov	r2, #219
	ldr	r3, .L6+60
	ldmfd	sp!, {r4, lr}
	stmia	r3, {r1, r2}
	bx	lr
.L7:
	.align	2
.L6:
	.word	7045
	.word	23690
	.word	sprite_actorPal
	.word	loadSpritePalette
	.word	DMANow
	.word	sprite_actorTiles
	.word	100728832
	.word	pause_screenPal
	.word	loadPalette
	.word	pause_screenMap
	.word	100716544
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
	ldr	r5, .L34
	ldr	r3, [r5]
	cmp	r3, #1
	ble	.L31
	cmp	r3, #10
	bgt	.L32
	and	r4, r3, #3
	add	r4, r4, #1
	ldr	r2, .L34+4
	cmp	r4, #2
	str	r4, [r2]
	ble	.L12
	mov	r2, #67108864
	ldrh	r3, [r2]
	cmp	r4, #3
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	beq	.L33
	ldr	r0, .L34+8
	ldr	r3, .L34+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L34+16
	mov	r0, #3
	ldr	r1, .L34+20
	ldr	r2, .L34+24
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r3, #704
	mov	r0, #3
	ldr	r1, .L34+28
	ldr	r2, .L34+32
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
.L12:
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L8
.L16:
	.word	.L15
	.word	.L17
	.word	.L18
	.word	.L19
	.word	.L20
	.word	.L21
	.word	.L22
	.word	.L23
	.word	.L24
	.word	.L25
	.word	.L26
.L32:
	mov	r1, #1
	ldr	r2, .L34+4
	str	r1, [r2]
	b	.L12
.L25:
	ldr	r0, .L34+36
	ldr	r3, .L34+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L34+16
	mov	r0, #3
	ldr	r1, .L34+40
	ldr	r2, .L34+44
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #224
	ldr	r1, .L34+48
	ldr	r2, .L34+52
.L28:
	mov	lr, pc
	bx	r4
	mov	r4, #30
	mov	lr, #112
	mov	ip, #0
	mov	r1, #128
.L30:
	ldr	r3, .L34+56
	ldr	r0, .L34+60
	ldr	r2, .L34+64
	stmia	r3, {r4, lr}
	str	ip, [r0]
	str	r1, [r2]
.L8:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L31:
	mov	r1, #0
	ldr	r2, .L34+4
	str	r1, [r2]
	b	.L12
.L26:
	ldr	r0, .L34+68
	ldr	r3, .L34+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L34+16
	mov	r0, #3
	ldr	r1, .L34+72
	ldr	r2, .L34+44
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L34+76
	ldr	r2, .L34+52
	mov	r3, #704
	mov	lr, pc
	bx	r4
	mov	lr, #30
	mov	ip, #10
.L29:
	mov	r3, #0
	ldr	r2, .L34+56
	ldr	r0, .L34+60
	ldr	r1, .L34+64
	str	lr, [r2]
	str	ip, [r2, #4]
	str	r3, [r0]
	str	r3, [r1]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L24:
	ldr	r0, .L34+80
	ldr	r3, .L34+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L34+16
	mov	r0, #3
	ldr	r1, .L34+84
	ldr	r2, .L34+44
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L34+88
	ldr	r2, .L34+52
	mov	r3, #608
	b	.L28
.L23:
	ldr	r0, .L34+92
	ldr	r3, .L34+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L34+16
	mov	r0, #3
	ldr	r1, .L34+96
	ldr	r2, .L34+44
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r1, .L34+100
	mov	r0, #3
	ldr	r2, .L34+52
	mov	r3, #224
	mov	lr, pc
	bx	r4
	mov	r4, #30
	mov	lr, #112
	mov	ip, #0
	mov	r1, #96
	b	.L30
.L22:
	ldr	r0, .L34+104
	ldr	r3, .L34+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L34+16
	mov	r0, #3
	ldr	r1, .L34+108
	ldr	r2, .L34+44
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L34+112
	ldr	r2, .L34+52
	mov	r3, #480
	mov	lr, pc
	bx	r4
	mov	lr, #30
	mov	ip, #40
	b	.L29
.L21:
	ldr	r0, .L34+116
	ldr	r3, .L34+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L34+16
	mov	r0, #3
	ldr	r1, .L34+120
	ldr	r2, .L34+44
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L34+124
	ldr	r2, .L34+52
	mov	r3, #224
	mov	lr, pc
	bx	r4
	mov	lr, #30
	mov	ip, #8
	b	.L29
.L20:
	ldr	r0, .L34+128
	ldr	r3, .L34+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L34+16
	mov	r0, #3
	ldr	r1, .L34+132
	ldr	r2, .L34+44
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r1, .L34+136
	mov	r0, #3
	ldr	r2, .L34+52
	mov	r3, #192
	mov	lr, pc
	bx	r4
	mov	r4, #30
	mov	lr, #112
	mov	ip, #0
	mov	r1, #136
	b	.L30
.L19:
	ldr	r0, .L34+140
	ldr	r3, .L34+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L34+16
	mov	r0, #3
	ldr	r1, .L34+144
	ldr	r2, .L34+44
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L34+148
	ldr	r2, .L34+52
	mov	r3, #224
	mov	lr, pc
	bx	r4
	mov	lr, #50
	mov	ip, #40
	b	.L29
.L18:
	ldr	r0, .L34+152
	ldr	r3, .L34+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L34+16
	mov	r0, #3
	ldr	r1, .L34+156
	ldr	r2, .L34+44
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r1, .L34+160
	mov	r0, #3
	ldr	r2, .L34+52
	mov	r3, #352
	mov	lr, pc
	bx	r4
	mov	r4, #50
	mov	lr, #112
	mov	ip, #0
	mov	r1, #120
	b	.L30
.L17:
	ldr	r0, .L34+164
	ldr	r3, .L34+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L34+16
	mov	r0, #3
	ldr	r1, .L34+168
	ldr	r2, .L34+44
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r1, .L34+172
	mov	r0, #3
	ldr	r2, .L34+52
	mov	r3, #480
	mov	lr, pc
	bx	r4
	mov	r4, #50
	mov	lr, #112
	mov	ip, #0
	mov	r1, #184
	b	.L30
.L15:
	ldr	r0, .L34+176
	ldr	r3, .L34+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L34+16
	mov	r0, #3
	ldr	r1, .L34+180
	ldr	r2, .L34+44
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L34+184
	ldr	r2, .L34+52
	mov	r3, #1920
	mov	lr, pc
	bx	r4
	mov	lr, #10
	mov	ip, #112
	b	.L29
.L33:
	ldr	r0, .L34+188
	ldr	r3, .L34+12
	mov	lr, pc
	bx	r3
	ldr	r6, .L34+16
	mov	r0, r4
	ldr	r1, .L34+192
	ldr	r2, .L34+24
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	mov	r0, r4
	ldr	r1, .L34+196
	ldr	r2, .L34+32
	mov	lr, pc
	bx	r6
	ldr	r3, [r5]
	b	.L12
.L35:
	.align	2
.L34:
	.word	currentLevel
	.word	season
	.word	bg_snowPal
	.word	loadPalette
	.word	DMANow
	.word	bg_snowMap
	.word	100718592
	.word	bg_snowTiles
	.word	100679680
	.word	bg_10_fallscrnPal
	.word	bg_10_fallscrnMap
	.word	100720640
	.word	bg_10_fallscrnTiles
	.word	100696064
	.word	player
	.word	vOff
	.word	hOff
	.word	bg_final_springscrnPal
	.word	bg_final_springscrnMap
	.word	bg_final_springscrnTiles
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
	mov	r3, #0
	mov	r1, #1
	ldr	ip, .L37
	ldr	r0, .L37+4
	ldr	r2, .L37+8
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2]
	b	setupLevel
.L38:
	.align	2
.L37:
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
	ldr	r2, .L42
	ldr	r3, [r2]
	cmp	r3, #3
	movgt	r3, #1
	addle	r3, r3, #1
	str	r3, [r2]
	bx	lr
.L43:
	.align	2
.L42:
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
	mov	r3, #0
	ldr	r1, .L47
.L45:
	ldrh	r2, [r1, r3]
	orr	r2, r2, #512
	strh	r2, [r1, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L45
	bx	lr
.L48:
	.align	2
.L47:
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
	ldr	r2, .L52
	ldr	r3, [r2, #48]
	cmp	r3, #1
	movgt	r3, #0
	addle	r3, r3, #1
	str	r3, [r2, #48]
	bx	lr
.L53:
	.align	2
.L52:
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
	mov	r3, #67108864
	mov	r0, #128
	mov	r1, #0
	ldr	r2, .L55
	strh	r0, [r3, #132]	@ movhi
	strh	r1, [r3, #128]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	bx	lr
.L56:
	.align	2
.L55:
	.word	-1266
	.size	setupSounds, .-setupSounds
	.global	__aeabi_idiv
	.align	2
	.global	playSoundA
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, #0
	mov	r7, r2
	ldr	r2, .L59
	ldr	r2, [r2]
	ldr	lr, .L59+4
	ldr	r5, .L59+8
	mov	r8, r1
	mov	r10, r0
	mov	fp, r3
	str	r6, [r2, #20]
	mov	r1, r0
	ldr	r2, .L59+12
	mov	r3, #910163968
	ldr	ip, .L59+16
	mov	r0, #1
	str	r6, [lr]
	ldr	r9, .L59+20
	mov	lr, pc
	bx	ip
	strh	r6, [r5, #2]	@ movhi
	mov	r1, r7
	mov	r0, #16777216
	mov	lr, pc
	bx	r9
	mov	r2, #128
	mov	r3, #1
	rsb	r0, r0, #0
	mov	ip, r0, asl #16
	ldr	r4, .L59+24
	mov	ip, ip, lsr #16
	rsb	r0, r8, r8, asl #4
	strh	ip, [r5]	@ movhi
	mov	r1, r7
	strh	r2, [r5, #2]	@ movhi
	mov	r0, r0, asl #2
	str	r3, [r4, #12]
	str	fp, [r4, #16]
	str	r8, [r4, #4]
	str	r7, [r4, #8]
	str	r10, [r4]
	mov	lr, pc
	bx	r9
	mov	r1, r7
	mov	r5, r0
	mov	r0, r8
	mov	lr, pc
	bx	r9
	sub	r0, r0, r0, asl #2
	add	r5, r5, r0
	sub	r5, r5, #1
	str	r5, [r4, #20]
	str	r6, [r4, #24]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L60:
	.align	2
.L59:
	.word	dma
	.word	vbCountA
	.word	67109120
	.word	67109024
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
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, #0
	mov	r7, r2
	ldr	r2, .L63
	ldr	r2, [r2]
	ldr	lr, .L63+4
	ldr	r5, .L63+8
	mov	r8, r1
	mov	r10, r0
	mov	fp, r3
	str	r6, [r2, #32]
	mov	r1, r0
	ldr	r2, .L63+12
	mov	r3, #910163968
	ldr	ip, .L63+16
	mov	r0, #2
	str	r6, [lr]
	ldr	r9, .L63+20
	mov	lr, pc
	bx	ip
	strh	r6, [r5, #6]	@ movhi
	mov	r1, r7
	mov	r0, #16777216
	mov	lr, pc
	bx	r9
	mov	r2, #128
	mov	r3, #1
	rsb	r0, r0, #0
	mov	ip, r0, asl #16
	ldr	r4, .L63+24
	mov	ip, ip, lsr #16
	rsb	r0, r8, r8, asl #4
	strh	ip, [r5, #4]	@ movhi
	mov	r1, r7
	strh	r2, [r5, #6]	@ movhi
	mov	r0, r0, asl #2
	str	r3, [r4, #12]
	str	fp, [r4, #16]
	str	r8, [r4, #4]
	str	r7, [r4, #8]
	str	r10, [r4]
	mov	lr, pc
	bx	r9
	mov	r1, r7
	mov	r5, r0
	mov	r0, r8
	mov	lr, pc
	bx	r9
	sub	r0, r0, r0, asl #2
	add	r5, r5, r0
	sub	r5, r5, #1
	str	r5, [r4, #20]
	str	r6, [r4, #24]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L64:
	.align	2
.L63:
	.word	dma
	.word	vbCountB
	.word	67109120
	.word	67109028
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundB
	.size	playSoundB, .-playSoundB
	.align	2
	.global	splash
	.type	splash, %function
splash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, #67108864
	ldr	r3, .L78
	ldr	r0, .L78+4
	strh	r3, [r4]	@ movhi
	ldr	r3, .L78+8
	mov	lr, pc
	bx	r3
	ldr	r0, .L78+12
	ldr	r3, .L78+16
	mov	lr, pc
	bx	r3
	ldr	ip, .L78+20
	mov	r0, r4
	ldr	r1, [ip]
	ldr	lr, .L78+24
	b	.L66
.L67:
	tst	r1, #4
	beq	.L69
	ands	r3, r2, #4
	beq	.L77
.L69:
	mov	r1, r2
.L66:
	str	r1, [lr]
	ldr	r2, [r0, #304]
	tst	r1, #8
	str	r2, [ip]
	beq	.L67
	ands	r4, r2, #8
	bne	.L67
	mov	r6, #1
	bl	init
	ldr	r5, .L78+28
	ldr	r2, .L78+32
	ldr	r3, .L78+36
	str	r6, [r2]
	str	r4, [r3]
	str	r4, [r5]
	bl	setupLevel
	mov	r3, r6
	ldr	r0, .L78+40
	ldr	r1, .L78+44
	ldr	r2, .L78+48
	bl	playSoundA
	mov	r3, r4
	ldr	r0, .L78+52
	ldr	r1, .L78+56
	ldr	r2, .L78+48
	bl	playSoundB
	mov	r3, #2
	str	r3, [r5]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L77:
	ldr	r2, .L78+48
	ldr	r0, .L78+52
	ldr	r1, .L78+56
	bl	playSoundB
	mov	r2, #1
	ldr	r3, .L78+28
	ldmfd	sp!, {r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L79:
	.align	2
.L78:
	.word	1028
	.word	splash_screenPal
	.word	loadPalette
	.word	splash_screenBitmap
	.word	drawBackgroundImage4
	.word	buttons
	.word	oldButtons
	.word	state
	.word	currentLevel
	.word	season
	.word	gameSong
	.word	889378
	.word	11025
	.word	menuSound
	.word	2102
	.size	splash, .-splash
	.align	2
	.global	instructions
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, #67108864
	ldr	r3, .L85
	ldr	r0, .L85+4
	strh	r3, [r4]	@ movhi
	ldr	r3, .L85+8
	mov	lr, pc
	bx	r3
	ldr	r0, .L85+12
	ldr	r3, .L85+16
	mov	lr, pc
	bx	r3
	mov	r2, r4
.L81:
	ldr	r3, [r2, #304]
	tst	r3, #2
	bne	.L81
	ldr	r2, .L85+20
	mov	r3, #0
	ldr	r0, .L85+24
	ldr	r1, .L85+28
	bl	playSoundB
	mov	r2, #0
	ldr	r3, .L85+32
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L86:
	.align	2
.L85:
	.word	1028
	.word	instructionsPal
	.word	loadPalette
	.word	instructionsBitmap
	.word	drawBackgroundImage4
	.word	11025
	.word	menuSound
	.word	2102
	.word	state
	.size	instructions, .-instructions
	.align	2
	.global	interruptHandler
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	stmfd	sp!, {r3, lr}
	ldr	r3, .L106
	ldrh	r1, [r3, #2]
	tst	r1, #1
	strh	r2, [r3, #8]	@ movhi
	beq	.L88
	ldr	r2, .L106+4
	ldr	r3, [r2, #12]
	cmp	r3, #0
	beq	.L89
	ldr	r1, .L106+8
	ldr	r0, [r2, #20]
	ldr	r3, [r1]
	cmp	r0, r3
	addgt	r3, r3, #1
	strgt	r3, [r1]
	ble	.L90
.L91:
	ldr	r2, .L106+12
	ldr	r3, [r2, #12]
	cmp	r3, #0
	bne	.L105
.L92:
	ldr	r3, [r2, #16]
	cmp	r3, #0
	bne	.L103
	ldr	r1, .L106+16
.L93:
	mov	r3, #0
	str	r3, [r1]
	ldr	r1, .L106+20
	ldr	r0, .L106+24
	ldr	r1, [r1]
	strh	r3, [r0, #6]	@ movhi
	str	r3, [r2, #12]
	str	r3, [r1, #32]
.L94:
	mov	r2, #1
	ldr	r3, .L106
	strh	r2, [r3, #2]	@ movhi
.L88:
	mov	r2, #1
	ldr	r3, .L106
	strh	r2, [r3, #8]	@ movhi
	ldmfd	sp!, {r3, lr}
	bx	lr
.L89:
	ldr	r3, [r2, #16]
	cmp	r3, #0
	bne	.L102
	ldr	r1, .L106+8
.L90:
	mov	r3, #0
	ldr	r0, .L106+24
	str	r3, [r1]
	ldr	r1, .L106+20
	strh	r3, [r0, #2]	@ movhi
	ldr	r1, [r1]
	str	r3, [r2, #12]
	ldr	r2, .L106+12
	str	r3, [r1, #20]
	ldr	r3, [r2, #12]
	cmp	r3, #0
	beq	.L92
.L105:
	ldr	r1, .L106+16
	ldr	r0, [r2, #20]
	ldr	r3, [r1]
	cmp	r0, r3
	addgt	r3, r3, #1
	strgt	r3, [r1]
	bgt	.L94
	b	.L93
.L103:
	ldmia	r2, {r0, r1, r2}
	bl	playSoundB
	b	.L94
.L102:
	ldmia	r2, {r0, r1, r2}
	bl	playSoundA
	b	.L91
.L107:
	.align	2
.L106:
	.word	67109376
	.word	soundA
	.word	vbCountA
	.word	soundB
	.word	vbCountB
	.word	dma
	.word	67109120
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	pauseSound
	.type	pauseSound, %function
pauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldr	r2, .L109
	ldrh	r1, [r3, #130]
	and	r2, r2, r1
	strh	r2, [r3, #130]	@ movhi
	ldr	r2, .L109+4
	ldrh	r1, [r3, #130]
	and	r2, r2, r1
	strh	r2, [r3, #130]	@ movhi
	bx	lr
.L110:
	.align	2
.L109:
	.word	64767
	.word	53247
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
	mov	r0, #67108864
	stmfd	sp!, {r4, lr}
	mov	r4, #1
	ldr	r3, .L114
	ldrh	r1, [r0, #4]
	ldrh	r2, [r3]
	ldr	lr, .L114+4
	ldr	ip, .L114+8
	orr	r2, r2, r4
	orr	r1, r1, #8
	strh	r1, [r0, #4]	@ movhi
	strh	r4, [r3, #8]	@ movhi
	strh	r2, [r3]	@ movhi
	str	lr, [ip, #4092]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L115:
	.align	2
.L114:
	.word	67109376
	.word	interruptHandler
	.word	50360320
	.size	setupInterrupts, .-setupInterrupts
	.align	2
	.global	warpAnimation
	.type	warpAnimation, %function
warpAnimation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L122
	ldr	r2, .L122+4
	ldr	r3, [r0]
	smull	ip, r1, r2, r3
	mov	r2, r3, asr #31
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, asl #2
	cmp	r3, r2
	beq	.L117
	ldr	r1, .L122+8
	ldr	r2, [r1]
	cmp	r2, #3
	movgt	r2, #1
	addle	r2, r2, #1
	str	r2, [r1]
.L117:
	sub	r3, r3, #1
	str	r3, [r0]
	bx	lr
.L123:
	.align	2
.L122:
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
	ldr	r3, .L196
	ldr	r3, [r3]
	cmp	r3, #3
	movgt	r3, #1
	ldr	r2, .L196+4
	strgt	r3, [r2]
	bgt	.L126
	add	r3, r3, #1
	cmp	r3, #2
	str	r3, [r2]
	ble	.L126
.L127:
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L124
.L130:
	.word	.L129
	.word	.L131
	.word	.L132
	.word	.L133
	.word	.L134
.L194:
	ldr	r0, .L196+8
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+12
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+20
	ldr	r2, .L196+24
	mov	r3, #448
	mov	lr, pc
	bx	r4
.L124:
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L126:
	mov	r1, #67108864
	ldrh	r2, [r1]
	bic	r2, r2, #512
	strh	r2, [r1]	@ movhi
	b	.L127
.L134:
	mov	r2, #67108864
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	ldr	r0, .L196+28
	ldr	r5, .L196+32
	mov	lr, pc
	bx	r5
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+40
	ldr	r2, .L196+44
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r3, #704
	mov	r0, #3
	ldr	r1, .L196+48
	ldr	r2, .L196+52
	mov	lr, pc
	bx	r4
	ldr	r3, .L196+56
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L124
.L184:
	.word	.L183
	.word	.L185
	.word	.L186
	.word	.L187
	.word	.L188
	.word	.L189
	.word	.L190
	.word	.L191
	.word	.L192
	.word	.L193
	.word	.L194
.L129:
	ldr	r3, .L196+56
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L124
.L136:
	.word	.L135
	.word	.L137
	.word	.L138
	.word	.L139
	.word	.L140
	.word	.L141
	.word	.L142
	.word	.L143
	.word	.L144
	.word	.L145
	.word	.L146
.L131:
	ldr	r3, .L196+56
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L124
.L148:
	.word	.L147
	.word	.L149
	.word	.L150
	.word	.L151
	.word	.L152
	.word	.L153
	.word	.L154
	.word	.L155
	.word	.L156
	.word	.L157
	.word	.L158
.L132:
	ldr	r3, .L196+56
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L124
.L160:
	.word	.L159
	.word	.L161
	.word	.L162
	.word	.L163
	.word	.L164
	.word	.L165
	.word	.L166
	.word	.L167
	.word	.L168
	.word	.L169
	.word	.L170
.L133:
	mov	r2, #67108864
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	ldr	r0, .L196+60
	ldr	r5, .L196+32
	mov	lr, pc
	bx	r5
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+64
	ldr	r2, .L196+44
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L196+68
	ldr	r2, .L196+52
	mov	lr, pc
	bx	r4
	ldr	r3, .L196+56
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L124
.L172:
	.word	.L171
	.word	.L173
	.word	.L174
	.word	.L175
	.word	.L176
	.word	.L177
	.word	.L178
	.word	.L179
	.word	.L180
	.word	.L181
	.word	.L182
.L182:
	ldr	r0, .L196+72
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+76
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+80
	ldr	r2, .L196+24
	mov	r3, #576
	mov	lr, pc
	bx	r4
	b	.L124
.L181:
	ldr	r0, .L196+84
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+88
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+92
	ldr	r2, .L196+24
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L124
.L180:
	ldr	r0, .L196+96
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+100
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+104
	ldr	r2, .L196+24
	mov	r3, #608
	mov	lr, pc
	bx	r4
	b	.L124
.L179:
	ldr	r0, .L196+108
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+112
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+116
	ldr	r2, .L196+24
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L124
.L178:
	ldr	r0, .L196+120
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+124
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+128
	ldr	r2, .L196+24
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L124
.L177:
	ldr	r0, .L196+132
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+136
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+140
	ldr	r2, .L196+24
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L124
.L176:
	ldr	r0, .L196+144
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+148
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+152
	ldr	r2, .L196+24
	mov	r3, #192
	mov	lr, pc
	bx	r4
	b	.L124
.L175:
	ldr	r0, .L196+156
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+160
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+164
	ldr	r2, .L196+24
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L124
.L174:
	ldr	r0, .L196+168
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+172
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+176
	ldr	r2, .L196+24
	mov	r3, #608
	mov	lr, pc
	bx	r4
	b	.L124
.L173:
	ldr	r0, .L196+180
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+184
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+188
	ldr	r2, .L196+24
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L124
.L171:
	ldr	r0, .L196+192
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+196
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+200
	ldr	r2, .L196+24
	mov	r3, #1632
	mov	lr, pc
	bx	r4
	b	.L124
.L170:
	ldr	r0, .L196+204
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+208
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+212
	ldr	r2, .L196+24
	mov	r3, #576
	mov	lr, pc
	bx	r4
	b	.L124
.L169:
	ldr	r0, .L196+216
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+220
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+224
	ldr	r2, .L196+24
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L124
.L168:
	ldr	r0, .L196+228
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+232
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+236
	ldr	r2, .L196+24
	mov	r3, #608
	mov	lr, pc
	bx	r4
	b	.L124
.L167:
	ldr	r0, .L196+240
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+244
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+248
	ldr	r2, .L196+24
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L124
.L166:
	ldr	r0, .L196+252
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+256
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+260
	ldr	r2, .L196+24
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L124
.L165:
	ldr	r0, .L196+264
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+268
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+272
	ldr	r2, .L196+24
	mov	r3, #96
	mov	lr, pc
	bx	r4
	b	.L124
.L164:
	ldr	r0, .L196+276
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+280
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+284
	ldr	r2, .L196+24
	mov	r3, #192
	mov	lr, pc
	bx	r4
	b	.L124
.L163:
	ldr	r0, .L196+288
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+292
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+296
	ldr	r2, .L196+24
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L124
.L162:
	ldr	r0, .L196+300
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+304
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+308
	ldr	r2, .L196+24
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L124
.L161:
	ldr	r0, .L196+312
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+316
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+320
	ldr	r2, .L196+24
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L124
.L159:
	ldr	r0, .L196+324
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+328
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+332
	ldr	r2, .L196+24
	mov	r3, #1792
	mov	lr, pc
	bx	r4
	b	.L124
.L158:
	ldr	r0, .L196+336
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+340
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+344
	ldr	r2, .L196+24
	mov	r3, #704
	mov	lr, pc
	bx	r4
	b	.L124
.L157:
	ldr	r0, .L196+348
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+352
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+356
	ldr	r2, .L196+24
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L124
.L156:
	ldr	r0, .L196+360
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+364
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+368
	ldr	r2, .L196+24
	mov	r3, #736
	mov	lr, pc
	bx	r4
	b	.L124
.L155:
	ldr	r0, .L196+372
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+376
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+380
	ldr	r2, .L196+24
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L124
.L154:
	ldr	r0, .L196+384
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+388
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+392
	ldr	r2, .L196+24
	mov	r3, #608
	mov	lr, pc
	bx	r4
	b	.L124
.L153:
	ldr	r0, .L196+396
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+400
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+404
	ldr	r2, .L196+24
	mov	r3, #576
	mov	lr, pc
	bx	r4
	b	.L124
.L152:
	ldr	r0, .L196+408
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+412
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+416
	ldr	r2, .L196+24
	mov	r3, #64
	mov	lr, pc
	bx	r4
	b	.L124
.L151:
	ldr	r0, .L196+420
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+424
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+428
	ldr	r2, .L196+24
	mov	r3, #224
	mov	lr, pc
	bx	r4
	b	.L124
.L150:
	ldr	r0, .L196+432
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+436
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+440
	ldr	r2, .L196+24
	mov	r3, #608
	mov	lr, pc
	bx	r4
	b	.L124
.L149:
	ldr	r0, .L196+444
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+448
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+452
	ldr	r2, .L196+24
	mov	r3, #736
	mov	lr, pc
	bx	r4
	b	.L124
.L147:
	ldr	r0, .L196+456
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+460
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+464
	ldr	r2, .L196+24
	mov	r3, #2432
	mov	lr, pc
	bx	r4
	b	.L124
.L146:
	ldr	r0, .L196+468
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+472
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+476
	ldr	r2, .L196+24
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L124
.L145:
	ldr	r0, .L196+480
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+484
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+488
	ldr	r2, .L196+24
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L124
.L144:
	ldr	r0, .L196+492
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+496
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+500
	ldr	r2, .L196+24
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L124
.L143:
	ldr	r0, .L196+504
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+508
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+512
	ldr	r2, .L196+24
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L124
.L142:
	ldr	r0, .L196+516
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+520
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+524
	ldr	r2, .L196+24
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L124
.L141:
	ldr	r0, .L196+528
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+532
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+536
	ldr	r2, .L196+24
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L124
.L140:
	ldr	r0, .L196+540
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+544
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+548
	ldr	r2, .L196+24
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L124
.L139:
	ldr	r0, .L196+420
	ldr	r3, .L196+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+36
	mov	r0, #3
	ldr	r1, .L196+552
	ldr	r2, .L196+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+556
	ldr	r2, .L196+24
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L124
.L197:
	.align	2
.L196:
	.word	prevSeason
	.word	season
	.word	bg_final_winterscrnPal
	.word	bg_final_winterscrnMap
	.word	100720640
	.word	bg_final_winterscrnTiles
	.word	100696064
	.word	bg_snowPal
	.word	loadPalette
	.word	DMANow
	.word	bg_snowMap
	.word	100718592
	.word	bg_snowTiles
	.word	100679680
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
	.word	bg_04_springscrnPal
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
	.word	DMANow
	.word	bg_00_neutralscrnMap
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
	.word	100720640
	.word	bg_00_winterscrnTiles
	.word	100696064
.L138:
	ldr	r0, .L196+560
	ldr	r3, .L196+588
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+592
	mov	r0, #3
	ldr	r1, .L196+564
	ldr	r2, .L196+720
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+568
	ldr	r2, .L196+728
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L124
.L137:
	ldr	r0, .L196+572
	ldr	r3, .L196+588
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+592
	mov	r0, #3
	ldr	r1, .L196+576
	ldr	r2, .L196+720
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+580
	ldr	r2, .L196+728
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L124
.L135:
	ldr	r0, .L196+584
	ldr	r3, .L196+588
	mov	lr, pc
	bx	r3
	ldr	r4, .L196+592
	mov	r0, #3
	ldr	r1, .L196+596
	ldr	r2, .L196+720
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+600
	ldr	r2, .L196+728
	mov	r3, #1920
	mov	lr, pc
	bx	r4
	b	.L124
.L193:
	ldr	r0, .L196+604
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+608
	ldr	r2, .L196+720
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+612
	ldr	r2, .L196+728
	mov	r3, #448
	mov	lr, pc
	bx	r4
	b	.L124
.L192:
	ldr	r0, .L196+616
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+620
	ldr	r2, .L196+720
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+624
	ldr	r2, .L196+728
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L124
.L191:
	ldr	r0, .L196+628
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+632
	ldr	r2, .L196+720
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+636
	ldr	r2, .L196+728
	mov	r3, #320
	mov	lr, pc
	bx	r4
	b	.L124
.L190:
	ldr	r0, .L196+640
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+644
	ldr	r2, .L196+720
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+648
	ldr	r2, .L196+728
	mov	r3, #480
	mov	lr, pc
	bx	r4
	b	.L124
.L189:
	ldr	r0, .L196+652
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+656
	ldr	r2, .L196+720
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+660
	ldr	r2, .L196+728
	mov	r3, #352
	mov	lr, pc
	bx	r4
	b	.L124
.L188:
	ldr	r0, .L196+664
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+668
	ldr	r2, .L196+720
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+672
	ldr	r2, .L196+728
	mov	r3, #64
	mov	lr, pc
	bx	r4
	b	.L124
.L187:
	ldr	r0, .L196+676
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+680
	ldr	r2, .L196+720
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+684
	ldr	r2, .L196+728
	mov	r3, #352
	mov	lr, pc
	bx	r4
	b	.L124
.L186:
	ldr	r0, .L196+688
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+692
	ldr	r2, .L196+720
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+696
	ldr	r2, .L196+728
	mov	r3, #352
	mov	lr, pc
	bx	r4
	b	.L124
.L185:
	ldr	r0, .L196+700
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+704
	ldr	r2, .L196+720
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+708
	ldr	r2, .L196+728
	mov	r3, #352
	mov	lr, pc
	bx	r4
	b	.L124
.L183:
	ldr	r0, .L196+712
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L196+716
	ldr	r2, .L196+720
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L196+724
	ldr	r2, .L196+728
	mov	r3, #448
	mov	lr, pc
	bx	r4
	b	.L124
	.size	seasonChange, .-seasonChange
	.align	2
	.global	pause
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L211
	stmfd	sp!, {r4, lr}
	ldr	r2, [r0]
	ldr	lr, .L211+4
	mov	ip, #67108864
	b	.L199
.L200:
	tst	r2, #4
	beq	.L202
	ands	r4, r3, #4
	beq	.L210
.L202:
	mov	r2, r3
.L199:
	str	r2, [lr]
	ldr	r3, [ip, #304]
	tst	r2, #8
	str	r3, [r0]
	mov	r1, #67108864
	beq	.L200
	tst	r3, #8
	bne	.L200
	mov	ip, #2
	ldrh	r3, [r1, #130]
	orr	r3, r3, #768
	strh	r3, [r1, #130]	@ movhi
	ldrh	r3, [r1]
	ldrh	r2, [r1, #130]
	ldr	r0, .L211+8
	orr	r2, r2, #12288
	eor	r3, r3, #256
	strh	r2, [r1, #130]	@ movhi
	strh	r3, [r1]	@ movhi
	ldmfd	sp!, {r4, lr}
	str	ip, [r0]
	bx	lr
.L210:
	mov	r3, #67108864
	ldrh	r2, [r3, #130]
	orr	r2, r2, #768
	strh	r2, [r3, #130]	@ movhi
	ldrh	r1, [r3]
	ldrh	r2, [r3, #130]
	eor	r1, r1, #256
	orr	r2, r2, #12288
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	ldr	r0, .L211+12
	mov	r3, #1
	ldr	r1, .L211+16
	ldr	r2, .L211+20
	bl	playSoundA
	ldr	r3, .L211+8
	str	r4, [r3]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L212:
	.align	2
.L211:
	.word	buttons
	.word	oldButtons
	.word	state
	.word	titleSong
	.word	679760
	.word	11025
	.size	pause, .-pause
	.align	2
	.global	jump
	.type	jump, %function
jump:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L216
	ldr	r3, [r2]
	cmp	r3, #0
	ble	.L214
	mvn	r0, #0
	mov	ip, #1
	ldr	r1, .L216+4
	add	r3, r3, r0
	str	r3, [r2]
	str	ip, [r1, #28]
	str	r0, [r1, #8]
	bx	lr
.L214:
	mov	r1, #0
	mov	r2, #1
	ldr	r3, .L216+4
	str	r1, [r3, #28]
	str	r2, [r3, #8]
	bx	lr
.L217:
	.align	2
.L216:
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
	ldr	r3, .L287
	ldr	r0, [r3]
	cmp	r0, #4
	ldrls	pc, [pc, r0, asl #2]
	b	.L286
.L221:
	.word	.L220
	.word	.L222
	.word	.L223
	.word	.L224
	.word	.L225
.L225:
	ldr	r3, .L287+4
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L286
.L272:
	.word	.L271
	.word	.L273
	.word	.L274
	.word	.L275
	.word	.L286
	.word	.L276
	.word	.L277
	.word	.L278
	.word	.L279
	.word	.L280
	.word	.L281
.L220:
	ldr	r3, .L287+4
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L219
.L227:
	.word	.L226
	.word	.L228
	.word	.L229
	.word	.L230
	.word	.L231
	.word	.L232
	.word	.L233
	.word	.L234
	.word	.L235
	.word	.L236
	.word	.L281
.L223:
	ldr	r3, .L287+4
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L286
.L250:
	.word	.L249
	.word	.L251
	.word	.L252
	.word	.L253
	.word	.L254
	.word	.L286
	.word	.L255
	.word	.L256
	.word	.L257
	.word	.L258
	.word	.L281
.L222:
	ldr	r3, .L287+4
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L286
.L239:
	.word	.L238
	.word	.L240
	.word	.L241
	.word	.L242
	.word	.L286
	.word	.L243
	.word	.L244
	.word	.L245
	.word	.L246
	.word	.L247
	.word	.L281
.L224:
	ldr	r3, .L287+4
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L286
.L261:
	.word	.L260
	.word	.L262
	.word	.L263
	.word	.L264
	.word	.L286
	.word	.L265
	.word	.L266
	.word	.L267
	.word	.L268
	.word	.L269
	.word	.L281
.L281:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+12
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L286:
	mov	r0, #0
.L219:
	bx	lr
.L269:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+16
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L268:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+20
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L267:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+24
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L266:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+28
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L265:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+32
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L264:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+36
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L263:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+40
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L262:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+44
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L260:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+48
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L247:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+52
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L246:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+56
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L245:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+60
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L244:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+64
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L243:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+68
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L242:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+72
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L241:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+76
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L240:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+80
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L238:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+84
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L258:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+88
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L257:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+92
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L256:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+96
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L255:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+100
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L254:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+104
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L253:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+108
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L252:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+112
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L251:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+116
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L249:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+120
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L280:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+124
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L279:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+128
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L278:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+132
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L277:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+136
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L276:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+140
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L275:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+144
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L274:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+148
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L273:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+152
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L271:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+156
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L228:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+160
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L226:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+164
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L236:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+168
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L235:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+172
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L234:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+176
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L233:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+180
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L232:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+184
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L231:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+188
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L230:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+192
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L229:
	ldr	r1, .L287+8
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L287+196
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L288:
	.align	2
.L287:
	.word	season
	.word	currentLevel
	.word	player
	.word	bg_final_collisionBitmap
	.word	bg_10_fallscrn_collisionBitmap
	.word	bg_09_fallscrn_collisionBitmap
	.word	bg_08_fallscrn_collisionBitmap
	.word	bg_07_fallscrn_collisionBitmap
	.word	bg_06_fallscrn_collisionBitmap
	.word	bg_04_fallscrn_collisionBitmap
	.word	bg_03_fallscrn_collisionBitmap
	.word	bg_02_fallscrn_collisionBitmap
	.word	bg_00_fallscrn_collisionBitmap
	.word	bg_10_springscrn_collisionBitmap
	.word	bg_09_springscrn_collisionBitmap
	.word	bg_08_springscrn_collisionBitmap
	.word	bg_07_springscrn_collisionBitmap
	.word	bg_06_springscrn_collisionBitmap
	.word	bg_04_springscrn_collisionBitmap
	.word	bg_03_springscrn_collisionBitmap
	.word	bg_02_springscrn_collisionBitmap
	.word	bg_00_springscrn_collisionBitmap
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
	ldr	r3, .L334
	ldr	r0, [r3]
	cmp	r0, #4
	ldrls	pc, [pc, r0, asl #2]
	b	.L328
.L292:
	.word	.L291
	.word	.L293
	.word	.L294
	.word	.L295
	.word	.L296
.L296:
	ldr	r3, .L334+4
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L328
.L319:
	.word	.L318
	.word	.L328
	.word	.L328
	.word	.L328
	.word	.L328
	.word	.L328
	.word	.L320
	.word	.L328
	.word	.L321
	.word	.L322
	.word	.L323
.L291:
	ldr	r3, .L334+4
	ldr	r3, [r3]
	sub	r3, r3, #2
	cmp	r3, #9
	ldrls	pc, [pc, r3, asl #2]
	b	.L290
.L298:
	.word	.L297
	.word	.L299
	.word	.L300
	.word	.L301
	.word	.L302
	.word	.L303
	.word	.L304
	.word	.L305
	.word	.L306
	.word	.L307
.L294:
	ldr	r3, .L334+4
	ldr	r3, [r3]
	cmp	r3, #11
	beq	.L323
.L328:
	mov	r0, #0
.L290:
	bx	lr
.L293:
	ldr	r3, .L334+4
	ldr	r3, [r3]
	cmp	r3, #6
	beq	.L308
	cmp	r3, #11
	beq	.L323
	cmp	r3, #2
	bne	.L328
	ldr	r2, .L334+8
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #20]
	add	r3, r3, #8
	ldr	r2, .L334+12
	b	.L332
.L295:
	ldr	r3, .L334+4
	ldr	r3, [r3]
	sub	r3, r3, #3
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L328
.L313:
	.word	.L312
	.word	.L314
	.word	.L315
	.word	.L328
	.word	.L328
	.word	.L316
	.word	.L328
	.word	.L328
	.word	.L323
.L323:
	ldr	r2, .L334+8
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #20]
	ldr	r2, .L334+16
	add	r3, r3, #8
.L332:
	add	r3, r1, r3, asl #9
	add	r3, r2, r3, asl #1
	ldrh	r0, [r3, #16]
	sub	r3, r0, #31
	rsbs	r0, r3, #0
	adc	r0, r0, r3
	bx	lr
.L316:
	ldr	r2, .L334+8
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #20]
	add	r3, r3, #8
	ldr	r2, .L334+20
	b	.L332
.L315:
	ldr	r2, .L334+8
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #20]
	add	r3, r3, #8
	ldr	r2, .L334+24
	b	.L332
.L314:
	ldr	r2, .L334+8
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #20]
	add	r3, r3, #8
	ldr	r2, .L334+28
	b	.L332
.L312:
	ldr	r2, .L334+8
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #20]
	add	r3, r3, #8
	ldr	r2, .L334+32
	b	.L332
.L322:
	ldr	r2, .L334+8
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #20]
	add	r3, r3, #8
	ldr	r2, .L334+36
	b	.L332
.L321:
	ldr	r2, .L334+8
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #20]
	add	r3, r3, #8
	ldr	r2, .L334+40
	b	.L332
.L320:
	ldr	r2, .L334+8
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #20]
	add	r3, r3, #8
	ldr	r2, .L334+44
	b	.L332
.L318:
	ldr	r2, .L334+8
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #20]
	add	r3, r3, #8
	ldr	r2, .L334+48
	b	.L332
.L307:
	ldr	r1, .L334+8
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #40]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	ldr	r2, .L334+16
	add	r3, r3, #520
.L331:
	mov	r3, r3, asl #1
	ldrh	r0, [r2, r3]
	sub	r2, r0, #31
	rsbs	r0, r2, #0
	adc	r0, r0, r2
	bx	lr
.L306:
	ldr	r1, .L334+8
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #40]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L334+52
	b	.L331
.L301:
	ldr	r1, .L334+8
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #40]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L334+56
	b	.L331
.L300:
	ldr	r1, .L334+8
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #40]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L334+60
	b	.L331
.L299:
	ldr	r1, .L334+8
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #40]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L334+64
	b	.L331
.L297:
	ldr	r1, .L334+8
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #40]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L334+68
	b	.L331
.L305:
	ldr	r1, .L334+8
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #40]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L334+72
	b	.L331
.L304:
	ldr	r1, .L334+8
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #40]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L334+76
	b	.L331
.L303:
	ldr	r1, .L334+8
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #40]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L334+80
	b	.L331
.L302:
	ldr	r1, .L334+8
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #40]
	ldr	r3, [r1, #20]
	add	r2, r2, r0
	add	r3, r3, r2, asl #9
	add	r3, r3, #520
	ldr	r2, .L334+84
	b	.L331
.L308:
	ldr	r2, .L334+8
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #20]
	add	r3, r3, #8
	ldr	r2, .L334+88
	b	.L332
.L335:
	.align	2
.L334:
	.word	season
	.word	currentLevel
	.word	player
	.word	bg_02_springscrn_collisionBitmap
	.word	bg_final_collisionBitmap
	.word	bg_08_fallscrn_collisionBitmap
	.word	bg_05_fallscrn_collisionBitmap
	.word	bg_04_fallscrn_collisionBitmap
	.word	bg_03_fallscrn_collisionBitmap
	.word	bg_10_winterscrn_collisionBitmap
	.word	bg_09_winterscrn_collisionBitmap
	.word	bg_07_winterscrn_collisionBitmap
	.word	bg_00_winterscrn_collisionBitmap
	.word	bg_10_neutralscrn_collisionBitmap
	.word	bg_05_neutralscrn_collisionBitmap
	.word	bg_04_neutralscrn_collisionBitmap
	.word	bg_03_neutralscrn_collisionBitmap
	.word	bg_02_neutralscrn_collisionBitmap
	.word	bg_09_neutralscrn_collisionBitmap
	.word	bg_08_neutralscrn_collisionBitmap
	.word	bg_07_neutralscrn_collisionBitmap
	.word	bg_06_neutralscrn_collisionBitmap
	.word	bg_06_springscrn_collisionBitmap
	.size	checkWinCollision, .-checkWinCollision
	.align	2
	.global	game
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L410
	ldr	r3, [r4, #32]
	ands	r3, r3, #3
	str	r2, [r4, #24]
	bne	.L337
	ldr	r2, [r4, #48]
	cmp	r2, #1
	addle	r2, r2, #1
	strgt	r3, [r4, #48]
	strle	r2, [r4, #48]
.L337:
	ldr	r7, .L410+4
	ldr	r5, [r7]
	tst	r5, #1
	beq	.L339
	ldr	r3, .L410+8
	ldr	r3, [r3]
	ands	r6, r3, #1
	beq	.L340
.L339:
	tst	r5, #2
	beq	.L402
	ldr	r3, .L410+8
	ldr	r3, [r3]
	ands	r3, r3, #2
	beq	.L399
.L402:
	ldr	r6, .L410+12
.L342:
	tst	r5, #8
	beq	.L343
	ldr	r3, .L410+8
	ldr	r3, [r3]
	tst	r3, #8
	beq	.L404
.L343:
	mov	r3, #67108864
	ldr	r2, [r3, #304]
	tst	r2, #256
	bne	.L344
	ldr	r2, [r3, #304]
	tst	r2, #512
	beq	.L405
.L344:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #16
	bne	.L346
	mov	r3, #1
	mov	r2, #0
	ldr	r0, .L410+16
	ldr	r1, [r0]
	cmp	r1, #272
	str	r2, [r4, #44]
	str	r3, [r4, #24]
	str	r3, [r4, #12]
	ldr	r2, .L410
	blt	.L406
	ldr	r2, [r2, #4]
.L348:
	ldr	r3, [r4, #36]
	rsb	r3, r3, #240
	cmp	r3, r2
	ldr	r3, .L410
	addgt	r2, r2, #1
	strgt	r2, [r3, #4]
.L346:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #32
	bne	.L351
	mov	r3, #1
	mvn	r2, #0
	ldr	r0, .L410+16
	ldr	r1, [r0]
	cmp	r1, #0
	str	r2, [r4, #12]
	str	r3, [r4, #24]
	str	r3, [r4, #44]
	ldr	r2, .L410
	ble	.L352
	ldr	r3, [r2, #36]
	add	r3, r3, r3, lsr #31
	mov	r3, r3, asr #1
	ldr	r2, [r2, #4]
	rsb	r3, r3, #119
	cmp	r3, r2
	subge	r1, r1, #1
	strge	r1, [r0]
	blt	.L353
.L351:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	ldr	r2, .L410
	beq	.L355
	ldr	r1, .L410+20
	ldr	r3, [r1]
	cmp	r3, #0
	mvngt	r0, #0
	movgt	ip, #1
	movle	r1, #0
	movle	r3, #1
	addgt	r3, r3, r0
	strgt	r3, [r1]
	strgt	ip, [r2, #28]
	strgt	r0, [r2, #8]
	strle	r1, [r2, #28]
	strle	r3, [r2, #8]
	bl	checkCollision
	cmp	r0, #0
	bne	.L358
.L361:
	mov	ip, #0
	ldr	r1, .L410+24
	ldr	r2, [r4, #8]
	ldr	r3, [r1]
	ldr	r0, [r4]
	add	r3, r2, r3
	cmp	r0, #159
	str	r3, [r1]
	ldr	r3, .L410
	addle	r2, r2, r0
	str	ip, [r4, #24]
	strle	r2, [r3]
	movgt	r2, #5
	ldrgt	r3, .L410+28
	strgt	r2, [r3]
.L363:
	bl	checkWinCollision
	cmp	r0, #0
	bne	.L407
.L364:
	ldr	r2, [r4, #24]
	cmp	r2, #0
	ldr	r3, .L410
	bne	.L365
.L408:
	str	r2, [r3, #48]
	ldr	r3, [r6]
	cmp	r3, #3
	beq	.L367
.L409:
	cmp	r3, #4
	bne	.L336
	ldr	r0, .L410+32
	ldr	r1, .L410+36
	ldr	r2, [r0]
	ldr	r3, [r1]
	sub	r2, r2, #1
	sub	r3, r3, #1
	str	r2, [r0]
	str	r3, [r1]
.L336:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L358:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L361
.L362:
	mov	r2, #1
	mov	r1, #0
	ldr	r3, .L410+40
	str	r1, [r4, #12]
	str	r2, [r3]
	bl	checkWinCollision
	cmp	r0, #0
	beq	.L364
.L407:
	ldr	r2, .L410+44
	mov	r3, #0
	ldr	r0, .L410+48
	ldr	r1, .L410+52
	bl	playSoundB
	mov	r2, #6
	ldr	r3, .L410+28
	str	r2, [r3]
	ldr	r2, [r4, #24]
	cmp	r2, #0
	ldr	r3, .L410
	beq	.L408
.L365:
	ldr	r2, [r3, #32]
	add	r2, r2, #1
	str	r2, [r3, #32]
	ldr	r3, [r6]
	cmp	r3, #3
	bne	.L409
.L367:
	ldr	r2, .L410+36
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L355:
	bl	checkCollision
	cmp	r0, #0
	beq	.L361
	b	.L362
.L406:
	ldr	r3, [r2, #40]
	add	r3, r3, r3, lsr #31
	mov	r3, r3, asr #1
	ldr	r2, [r2, #4]
	rsb	r3, r3, #119
	cmp	r3, r2
	addlt	r1, r1, #1
	strlt	r1, [r0]
	blt	.L346
	b	.L348
.L405:
	ldr	r3, [r3, #304]
	tst	r3, #4
	bne	.L344
	mvn	lr, #0
	mov	r7, #100
	ldr	ip, .L410+56
	ldr	r5, .L410+60
	ldr	r2, .L410+44
	mov	r3, #0
	ldr	r0, .L410+64
	ldr	r1, .L410+68
	str	r7, [r5]
	str	lr, [ip]
	bl	playSoundB
	mov	r2, #3
	ldr	r3, .L410+28
	str	r2, [r3]
	b	.L344
.L404:
	mov	r3, #67108864
	mov	ip, #4
	ldrh	r1, [r3, #130]
	ldr	r2, .L410+72
	and	r2, r2, r1
	strh	r2, [r3, #130]	@ movhi
	ldrh	r1, [r3]
	ldrh	lr, [r3, #130]
	ldr	r2, .L410+76
	ldr	r0, .L410+28
	eor	r1, r1, #256
	and	r2, r2, lr
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	str	ip, [r0]
	b	.L343
.L340:
	ldr	r8, .L410+40
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L339
	bl	checkCollision
	cmp	r0, #0
	beq	.L339
	mov	r9, #1
	mov	ip, #30
	ldr	r5, .L410+20
	ldr	r1, .L410+80
	ldr	r2, .L410+44
	mov	r3, r6
	ldr	r0, .L410+84
	str	ip, [r5]
	str	r6, [r8]
	str	r9, [r4, #28]
	bl	playSoundB
	ldr	r3, [r5]
	cmp	r3, #0
	mvngt	r1, #0
	ldr	r2, .L410
	addgt	r3, r3, r1
	strgt	r3, [r5]
	strgt	r9, [r2, #28]
	strgt	r1, [r2, #8]
	strle	r6, [r2, #28]
	strle	r9, [r2, #8]
	ldr	r5, [r7]
	b	.L339
.L352:
	ldr	r2, [r2, #4]
.L353:
	cmp	r2, #0
	subgt	r2, r2, #1
	strgt	r2, [r4, #4]
	b	.L351
.L399:
	mov	lr, #100
	ldr	r6, .L410+12
	ldr	r5, .L410+56
	ldr	r8, [r6]
	ldr	ip, .L410+60
	ldr	r2, .L410+44
	ldr	r0, .L410+64
	ldr	r1, .L410+68
	str	r8, [r5]
	str	lr, [ip]
	bl	playSoundB
	mov	r2, #3
	ldr	r3, .L410+28
	ldr	r5, [r7]
	str	r2, [r3]
	b	.L342
.L411:
	.align	2
.L410:
	.word	player
	.word	oldButtons
	.word	buttons
	.word	season
	.word	hOff
	.word	jumpFrameCounter
	.word	vOff
	.word	state
	.word	bg1HOff
	.word	bg1VOff
	.word	canJump
	.word	11025
	.word	winLevelSound
	.word	9156
	.word	prevSeason
	.word	vBlankCount
	.word	warpSound
	.word	20244
	.word	64767
	.word	53247
	.word	3118
	.word	jumpSound
	.size	game, .-game
	.align	2
	.global	winLevel
	.type	winLevel, %function
winLevel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, #67108864
	ldr	r3, .L432
	ldr	r0, .L432+4
	strh	r3, [r4]	@ movhi
	ldr	r3, .L432+8
	mov	lr, pc
	bx	r3
	ldr	r0, .L432+12
	ldr	r3, .L432+16
	mov	lr, pc
	bx	r3
	ldr	r0, .L432+20
	mov	r1, r4
	ldr	r3, [r0]
	ldr	ip, .L432+24
	b	.L413
.L414:
	tst	r3, #4
	beq	.L417
	ands	r4, r2, #4
	beq	.L430
.L417:
	mov	r3, r2
.L413:
	str	r3, [ip]
	ldr	r2, [r1, #304]
	tst	r3, #1
	str	r2, [r0]
	beq	.L414
	tst	r2, #1
	bne	.L414
	ldr	r2, .L432+28
	ldr	r3, [r2]
	cmp	r3, #10
	ble	.L431
	mov	r2, #7
	ldr	r3, .L432+32
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L430:
	mov	r3, r4
	ldr	r0, .L432+36
	ldr	r1, .L432+40
	ldr	r2, .L432+44
	bl	playSoundB
	mov	r3, #1
	ldr	r0, .L432+48
	ldr	r1, .L432+52
	ldr	r2, .L432+44
	bl	playSoundA
	ldr	r3, .L432+32
	str	r4, [r3]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L431:
	add	r3, r3, #1
	str	r3, [r2]
	bl	init
	bl	setupLevel
	mov	r2, #2
	ldr	r3, .L432+32
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L433:
	.align	2
.L432:
	.word	1028
	.word	win_level_screenPal
	.word	loadPalette
	.word	win_level_screenBitmap
	.word	drawBackgroundImage4
	.word	buttons
	.word	oldButtons
	.word	currentLevel
	.word	state
	.word	menuSound
	.word	2102
	.word	11025
	.word	titleSong
	.word	679760
	.size	winLevel, .-winLevel
	.align	2
	.global	gameEnd
	.type	gameEnd, %function
gameEnd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, #67108864
	ldr	r3, .L441
	ldr	r0, .L441+4
	strh	r3, [r4]	@ movhi
	ldr	r3, .L441+8
	mov	lr, pc
	bx	r3
	ldr	r0, .L441+12
	ldr	r3, .L441+16
	mov	lr, pc
	bx	r3
	ldr	r0, .L441+20
	mov	r1, r4
	ldr	r3, [r0]
	ldr	ip, .L441+24
	b	.L435
.L436:
	mov	r3, r2
.L435:
	str	r3, [ip]
	ldr	r2, [r1, #304]
	tst	r3, #1
	str	r2, [r0]
	beq	.L436
	ands	r4, r2, #1
	bne	.L436
	mov	r3, r4
	ldr	r0, .L441+28
	ldr	r1, .L441+32
	ldr	r2, .L441+36
	bl	playSoundB
	mov	r3, #1
	ldr	r0, .L441+40
	ldr	r1, .L441+44
	ldr	r2, .L441+36
	bl	playSoundA
	ldr	r3, .L441+48
	str	r4, [r3]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L442:
	.align	2
.L441:
	.word	1028
	.word	game_end_screenPal
	.word	loadPalette
	.word	game_end_screenBitmap
	.word	drawBackgroundImage4
	.word	buttons
	.word	oldButtons
	.word	menuSound
	.word	2102
	.word	11025
	.word	titleSong
	.word	679760
	.word	state
	.size	gameEnd, .-gameEnd
	.align	2
	.global	lose
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, #67108864
	ldr	r3, .L457
	ldr	r0, .L457+4
	strh	r3, [r4]	@ movhi
	ldr	r3, .L457+8
	mov	lr, pc
	bx	r3
	ldr	r0, .L457+12
	ldr	r3, .L457+16
	mov	lr, pc
	bx	r3
	ldr	r0, .L457+20
	mov	r1, r4
	ldr	r3, [r0]
	ldr	ip, .L457+24
	b	.L444
.L445:
	tst	r3, #4
	beq	.L447
	ands	r4, r2, #4
	beq	.L456
.L447:
	mov	r3, r2
.L444:
	str	r3, [ip]
	ldr	r2, [r1, #304]
	tst	r3, #1
	str	r2, [r0]
	beq	.L445
	tst	r2, #1
	bne	.L445
	bl	init
	bl	setupLevel
	mov	r2, #2
	ldr	r3, .L457+28
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L456:
	mov	r3, r4
	ldr	r0, .L457+32
	ldr	r1, .L457+36
	ldr	r2, .L457+40
	bl	playSoundB
	mov	r3, #1
	ldr	r0, .L457+44
	ldr	r1, .L457+48
	ldr	r2, .L457+40
	bl	playSoundA
	ldr	r3, .L457+28
	str	r4, [r3]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L458:
	.align	2
.L457:
	.word	1028
	.word	gameover_screenPal
	.word	loadPalette
	.word	gameover_screenBitmap
	.word	drawBackgroundImage4
	.word	buttons
	.word	oldButtons
	.word	state
	.word	menuSound
	.word	2102
	.word	11025
	.word	titleSong
	.word	679760
	.size	lose, .-lose
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r10, #67108864
	stmfd	sp!, {r3, r7, fp, lr}
	mov	r3, #1
	mov	r6, #128
	mov	r4, #0
	ldr	r2, .L479
	ldrh	r0, [r10, #4]
	ldrh	r1, [r2]
	ldr	lr, .L479+4
	ldr	r5, .L479+8
	ldr	ip, .L479+12
	orr	r1, r1, r3
	orr	r0, r0, #8
	strh	r6, [r10, #132]	@ movhi
	strh	r0, [r10, #4]	@ movhi
	strh	r5, [r10, #130]	@ movhi
	strh	r4, [r10, #128]	@ movhi
	ldr	r0, .L479+16
	strh	r1, [r2]	@ movhi
	strh	r3, [r2, #8]	@ movhi
	ldr	r1, .L479+20
	str	lr, [ip, #4092]
	ldr	r2, .L479+24
	ldr	ip, .L479+28
	mov	lr, pc
	bx	ip
	ldr	r3, .L479+32
	mov	lr, pc
	bx	r3
	ldr	r6, .L479+36
	ldr	r4, .L479+40
	ldr	r8, .L479+44
	ldr	r9, .L479+48
	ldr	r5, .L479+52
	ldr	r7, .L479+56
.L472:
	ldr	r3, [r6]
	ldr	r2, .L479+60
	str	r3, [r2]
	ldr	r1, .L479+64
	ldr	lr, [r10, #304]
	ldr	r3, [r4]
	ldr	r2, [r8]
	ldr	r0, [r4, #4]
	ldr	r1, [r1]
	str	lr, [r6]
	ldr	ip, [r9]
	add	lr, r3, r2
	str	lr, [r4, #16]
	add	lr, r0, r1
	str	lr, [r4, #20]
	cmp	ip, #7
	ldrls	pc, [pc, ip, asl #2]
	b	.L460
.L462:
	.word	.L461
	.word	.L463
	.word	.L464
	.word	.L465
	.word	.L466
	.word	.L467
	.word	.L468
	.word	.L469
.L469:
	ldr	r3, .L479+68
.L477:
	mov	lr, pc
	bx	r3
.L478:
	ldr	r2, .L479+64
	ldr	r3, [r4]
	ldr	r1, [r2]
	ldr	r0, [r4, #4]
	ldr	r2, [r8]
.L460:
	and	r3, r3, #255
	strh	r3, [r5]	@ movhi
	ldr	r3, .L479+72
	mov	r1, r1, asl #16
	ldr	ip, [r3]
	mov	r2, r2, asl #16
	ldr	r3, .L479+76
	mov	lr, r1, lsr #16
	mov	r2, r2, lsr #16
	ldrb	r1, [r7]	@ zero_extendqisi2
	strh	lr, [r10, #24]	@ movhi
	strh	r2, [r10, #26]	@ movhi
	ldrh	r2, [r3]
	ldr	r3, [r4, #44]
	mov	r3, r3, asl #12
	and	r3, r3, #4096
	strh	r2, [r10, #20]	@ movhi
	ldr	fp, [r4, #48]
	ldr	lr, [r7, #4]
	mov	r2, r0, asl #23
	orr	r3, r3, #16384
	orr	r3, r3, r2, lsr #23
	ldr	r2, .L479+80
	add	fp, fp, ip, asl #5
	mov	lr, lr, asl #23
	mov	ip, ip, asl #6
	ldrh	r2, [r2]
	mov	fp, fp, asl #1
	add	ip, ip, #6
	mov	lr, lr, lsr #23
	orr	lr, lr, #16384
	orr	fp, fp, #2048
	orr	ip, ip, #1024
	strh	r2, [r10, #22]	@ movhi
	mov	r0, #3
	strh	r1, [r5, #8]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	ip, [r5, #12]	@ movhi
	ldr	r1, .L479+52
	mov	r2, #117440512
	strh	fp, [r5, #4]	@ movhi
	mov	r3, #512
	strh	lr, [r5, #10]	@ movhi
	ldr	ip, .L479+84
	mov	lr, pc
	bx	ip
	ldr	r3, .L479+88
	mov	lr, pc
	bx	r3
	b	.L472
.L468:
	ldr	r3, .L479+92
	b	.L477
.L467:
	ldr	r3, .L479+96
	b	.L477
.L466:
	ldr	r3, .L479+100
	b	.L477
.L465:
	ldr	ip, .L479+104
	ldr	fp, .L479+108
	ldr	ip, [ip]
	smull	lr, fp, ip, fp
	mov	lr, ip, asr #31
	rsb	lr, lr, fp, asr #1
	add	lr, lr, lr, asl #2
	cmp	ip, lr
	beq	.L470
	ldr	lr, .L479+72
	ldr	lr, [lr]
	cmp	lr, #3
	movgt	fp, #1
	ldrgt	lr, .L479+72
	ldrle	fp, .L479+72
	addle	lr, lr, #1
	strgt	fp, [lr]
	strle	lr, [fp]
.L470:
	sub	ip, ip, #1
	ldr	lr, .L479+104
	cmp	ip, #0
	str	ip, [lr]
	bgt	.L460
	ldr	r3, .L479+112
	mov	lr, pc
	bx	r3
	mov	r3, #2
	str	r3, [r9]
	b	.L478
.L464:
	ldr	r3, .L479+116
	b	.L477
.L461:
	ldr	r3, .L479+32
	b	.L477
.L463:
	ldr	r3, .L479+120
	b	.L477
.L480:
	.align	2
.L479:
	.word	67109376
	.word	interruptHandler
	.word	-1266
	.word	50360320
	.word	titleSong
	.word	679760
	.word	11025
	.word	playSoundA
	.word	splash
	.word	buttons
	.word	player
	.word	vOff
	.word	state
	.word	shadowOAM
	.word	icon
	.word	oldButtons
	.word	hOff
	.word	gameEnd
	.word	season
	.word	bg1HOff
	.word	bg1VOff
	.word	DMANow
	.word	waitForVblank
	.word	winLevel
	.word	lose
	.word	pause
	.word	vBlankCount
	.word	1717986919
	.word	seasonChange
	.word	game
	.word	instructions
	.size	main, .-main
	.comm	oldButtons,4,4
	.comm	buttons,4,4
	.comm	shadowOAM,1024,4
	.comm	bg1VOff,4,4
	.comm	bg1HOff,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	vbCountB,4,4
	.comm	vbCountA,4,4
	.comm	soundB,28,4
	.comm	soundA,28,4
	.comm	icon,8,4
	.comm	player,52,4
	.comm	standing,4,4
	.comm	canJump,4,4
	.comm	jumpFrameCounter,4,4
	.comm	vBlankCount,4,4
	.comm	currentLevel,4,4
	.comm	prevSeason,4,4
	.comm	season,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 44) 4.9.2"
