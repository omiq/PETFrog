 processor 6502
	org $400
	; Starting new memory block at $400
StartBlock400
	.byte    $0, $0E, $08, $0A, $00, $9E, $20
	.byte   $31,$30,$34,$30
	.byte     $00
	; Ending memory block
EndBlock400
	org $410
	; Starting new memory block at $410
StartBlock410
PETFrog
	; LineNumber: 818
	jmp block1
	; LineNumber: 7
oldti = $8f
	; LineNumber: 7
ti = $90
	; LineNumber: 21
PLAY_SOUND	dc.b	$00
	; LineNumber: 22
GAME_SPEED	dc.b	$05
	; LineNumber: 24
KEYPRESS	dc.b	$ff
	; LineNumber: 26
blk	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	$20, 0
	; LineNumber: 27
by	
	dc.b	$20, $02, $19, $20, $03, $08, $12, $09, $13
	dc.b	$20, $07, $01, $12, $12, $05, $14, $14, $20
	dc.b	$30, $31, $2f, $32, $30, $32, $31, $20, $20
	dc.b	$20, 0
	; LineNumber: 28
url	
	dc.b	$20, $00, $0d, $01, $0b, $05, $12, $08, $01
	dc.b	$03, $0b, $13, $20, $0d, $01, $0b, $05, $12
	dc.b	$08, $01, $03, $0b, $13, $2e, $03, $0f, $0d
	dc.b	$20, 0
	; LineNumber: 29
over	
	dc.b	$20, $07, $01, $0d, $05, $20, $0f, $16, $05
	dc.b	$12, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	$20, 0
	; LineNumber: 30
score	
	dc.b	$20, $19, $0f, $15, $20, $13, $03, $0f, $12
	dc.b	$05, $04, $3a, $20, $20, $20, $20, $20, $20
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	$20, 0
	; LineNumber: 31
space	
	dc.b	$20, $10, $12, $05, $13, $13, $20, $13, $10
	dc.b	$01, $03, $05, $20, $14, $0f, $20, $03, $0f
	dc.b	$0e, $14, $09, $0e, $15, $05, $20, $20, $20
	dc.b	$20, 0
	; LineNumber: 33
ALIVE	dc.b	$01
	; LineNumber: 34
WON_GAME	dc.b	$00
	; LineNumber: 49
frogcharA	dc.b	$d6
	; LineNumber: 50
frogcharB	dc.b	$56
	; LineNumber: 51
frog_x	dc.b	$14
	; LineNumber: 51
frog_old_x	dc.b	$14
	; LineNumber: 52
frog_y	dc.b	$18
	; LineNumber: 52
frog_old_y	dc.b	$18
	; LineNumber: 53
previous_tile	dc.b	$20
	; LineNumber: 54
next_tile	dc.b	0
	; LineNumber: 55
player_lives	dc.b	$00
	; LineNumber: 56
player_score	dc.w	$00
	; LineNumber: 58
arr_crockr	dc.b $0c0, $0a2, $0dc, $0dc, $0dc, $0dc, $0dc, $062
	dc.b $079
	; LineNumber: 59
str_crockr	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 61
arr_crockl	dc.b $079, $062, $0dc, $0dc, $0dc, $0dc, $0dc, $0a2
	dc.b $0c0
	; LineNumber: 62
str_crockl	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 65
arr_logl	dc.b $0a8, $0a8, $0a8, $0a8, $0d1
	; LineNumber: 66
str_logl	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 68
arr_logr	dc.b $0d1, $0a9, $0a9, $0a9, $0a9
	; LineNumber: 69
str_logr	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 71
arr_turtles	dc.b $051, $051, $051, $051, $051
	; LineNumber: 72
str_turtles	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 74
arr_river_r	dc.b $06f, $064, $064, $06f, $064
	; LineNumber: 75
str_river_r	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 77
arr_river_l	dc.b $020, $064, $06f, $064, $064
	; LineNumber: 78
str_river_l	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 82
arr_carl	dc.b $0f0, $0cf, $0d0, $0e0
	; LineNumber: 83
str_cart	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 84
arr_carr	dc.b $0ed, $0d7, $0d7, $0a0
	; LineNumber: 85
str_carb	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 93
arr_truckb_r	dc.b $0a0, $0d7, $062, $0d7, $0f1, $0d7, $0fd, $0a0
	; LineNumber: 94
str_truckb_r	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 95
arr_truckt_r	dc.b $0e0, $060, $060, $060, $0fe, $0eb, $0ee, $0e0
	; LineNumber: 96
str_truckt_r	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 101
obstacles_y	dc.b $04, $05, $06, $07, $08, $0c, $0d, $0f
	dc.b $010, $012, $013, $015, $016
	; LineNumber: 102
strip_direction	dc.b $01, $00, $01, $00, $01, $01, $01, $01
	dc.b $01, $00, $00, $00, $00
	; LineNumber: 104
level_strips	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	; LineNumber: 107
obstacles_x_rl	dc.b	0
	; LineNumber: 107
obstacles_x_lr	dc.b	0
	; LineNumber: 111
logo	dc.b $072, $049, $070, $06e, $070, $072, $06e, $055
	dc.b $049, $020, $020, $020, $020, $06b, $04b, $06b
	dc.b $020, $020, $05d, $020, $06b, $055, $055, $049
	dc.b $055, $049, $071, $020, $06d, $07d, $020, $071
	dc.b $020, $04b, $071, $04a, $04b, $04a, $05d, $078
	dc.b $078, $078, $078, $078, $078, $078, $078, $078
	dc.b $078, $078, $04a, $04b
	; LineNumber: 119
title_screen_frog_pointer	= $02
	; LineNumber: 120
title_screen_frog	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $06c, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $07b, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $06c, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $07b, $020, $020, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $0f5, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $020, $020, $0a0, $0a0, $0a0, $0a0
	dc.b $07e, $020, $020, $07c, $0a0, $0a0, $0a0, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $0a0, $07e, $0e2, $0e2, $0e2
	dc.b $07c, $0a0, $061, $020, $0a0, $0a0, $0a0, $07e
	dc.b $020, $020, $020, $020, $0e1, $0a0, $0a0, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $076, $0a0, $020, $020, $020, $020
	dc.b $020, $0a0, $061, $020, $0a0, $0a0, $0a0, $020
	dc.b $020, $020, $020, $020, $020, $0a0, $0a0, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $076, $0a0, $020, $020, $020, $020
	dc.b $020, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $020
	dc.b $020, $020, $020, $020, $020, $0a0, $0a0, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $0a0, $07b, $020, $020, $020
	dc.b $06c, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $020
	dc.b $062, $0a0, $0a0, $062, $020, $0a0, $0a0, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $068
	dc.b $066, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $062, $0a0, $0a0, $0a0, $062, $062, $062
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0ec, $062, $062, $0fb, $0a0, $0a0, $0a0, $020
	dc.b $020, $068, $020, $020, $020, $020, $020, $066
	dc.b $066, $05c, $020, $020, $020, $020, $020, $020
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $07e, $020
	dc.b $020, $066, $05c, $020, $020, $020, $020, $066
	dc.b $066, $05c, $020, $020, $020, $020, $020, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $07b, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $066, $020, $020, $020, $020, $020, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $0a0, $0ec
	dc.b $0fb, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $07b
	dc.b $066, $020, $020, $066, $020, $020, $020, $020
	dc.b $068, $066, $020, $020, $020, $0e1, $0a0, $06c
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $066, $068, $020, $066, $066, $020, $020, $066
	dc.b $066, $066, $05c, $020, $020, $0a0, $0a0, $0a0
	dc.b $020, $0fb, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0ec, $020, $0a0
	dc.b $066, $066, $020, $020, $066, $020, $020, $066
	dc.b $066, $066, $066, $05c, $020, $0a0, $0a0, $0a0
	dc.b $07b, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $06c, $0a0
	dc.b $066, $066, $066, $020, $066, $066, $020, $066
	dc.b $066, $020, $066, $05c, $020, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $062, $062, $062
	dc.b $062, $062, $062, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $0fe, $0a0, $0a0
	dc.b $066, $066, $066, $066, $020, $066, $066, $020
	dc.b $066, $066, $066, $05c, $020, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0e2, $0e2
	dc.b $0e2, $0e2, $0e2, $0e2, $0a0, $0a0, $0a0, $0a0
	dc.b $066, $066, $066, $066, $066, $066, $066, $066
	dc.b $066, $066, $066, $066, $020, $020, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0ec
	dc.b $0e2, $0e2, $0ec, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $066, $066, $066, $066, $066, $066, $066, $066
	dc.b $066, $066, $066, $066, $066, $020, $0e1, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0ec
	dc.b $066, $066, $066, $066, $066, $066, $066, $066
	dc.b $066, $066, $066, $066, $066, $066, $020, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $020
	dc.b $066, $066, $05c, $020, $066, $066, $066, $066
	dc.b $020, $020, $066, $066, $066, $066, $020, $020
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $061, $068
	dc.b $066, $066, $020, $020, $020, $066, $066, $05c
	dc.b $020, $020, $066, $066, $066, $066, $066, $020
	dc.b $020, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0ec, $020, $066
	dc.b $066, $05c, $020, $020, $020, $066, $066, $020
	dc.b $020, $020, $020, $066, $066, $066, $066, $066
	dc.b $020, $020, $0e2, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0ec, $020, $066, $066
	dc.b $066, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $066, $066
	dc.b $066, $020, $020, $020, $0e2, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0ec, $020, $020, $066, $066, $066
	dc.b $066, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $066
	dc.b $066, $066, $066, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $066, $066, $066, $066, $066
	; LineNumber: 151
petscii_pointer	=   $04
	; LineNumber: 185
level2	dc.b $0cc, $0ef, $0fa, $013, $03, $0f, $012, $05
	dc.b $03a, $039, $039, $039, $0cc, $0ef, $0ef, $0ef
	dc.b $0a0, $090, $085, $094, $086, $092, $08f, $087
	dc.b $0a0, $0ef, $0ef, $0ef, $0ef, $0fa, $0c, $09
	dc.b $016, $05, $013, $03a, $033, $0cc, $0ef, $0fa
	dc.b $020, $068, $068, $020, $068, $068, $068, $068
	dc.b $068, $068, $020, $068, $068, $068, $068, $068
	dc.b $068, $068, $020, $068, $068, $068, $068, $068
	dc.b $068, $068, $068, $068, $068, $068, $068, $020
	dc.b $068, $068, $068, $068, $068, $020, $068, $020
	dc.b $066, $05c, $020, $020, $020, $020, $066, $066
	dc.b $020, $020, $020, $020, $020, $066, $066, $020
	dc.b $020, $020, $020, $020, $066, $066, $066, $020
	dc.b $020, $020, $020, $066, $066, $020, $020, $020
	dc.b $020, $066, $066, $020, $020, $020, $020, $05c
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $066, $068, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $068, $068, $068
	dc.b $068, $068, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $068
	dc.b $068, $068, $020, $020, $020, $020, $068, $066
	dc.b $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3
	dc.b $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3
	dc.b $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3
	dc.b $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3
	dc.b $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad
	dc.b $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad
	dc.b $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad
	dc.b $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad
	dc.b $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3
	dc.b $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3
	dc.b $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3
	dc.b $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3
	dc.b $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad
	dc.b $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad
	dc.b $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad
	dc.b $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad
	dc.b $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2
	dc.b $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2
	dc.b $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2
	dc.b $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2
	dc.b $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2
	dc.b $066, $066, $066, $066, $066, $066, $066, $066
	dc.b $066, $066, $066, $066, $066, $066, $066, $066
	dc.b $066, $066, $066, $066, $066, $066, $066, $066
	dc.b $066, $066, $066, $066, $066, $066, $066, $066
	dc.b $066, $066, $066, $066, $066, $066, $066, $066
	; NodeProcedureDecl -1
	; ***********  Defining procedure : init16x8mul
	;    Procedure type : Built-in function
	;    Requires initialization : no
mul16x8_num1Hi = $4c
mul16x8_num1 = $4e
mul16x8_num2 = $50
mul16x8_procedure
	lda #$00
	ldy #$00
	beq mul16x8_enterLoop
mul16x8_doAdd
	clc
	adc mul16x8_num1
	tax
	tya
	adc mul16x8_num1Hi
	tay
	txa
mul16x8_loop
	asl mul16x8_num1
	rol mul16x8_num1Hi
mul16x8_enterLoop  ; accumulating multiply entry point (enter with .A=lo, .Y=hi)
	lsr mul16x8_num2
	bcs mul16x8_doAdd
	bne mul16x8_loop
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : initeightbitmul
	;    Procedure type : Built-in function
	;    Requires initialization : no
multiplier = $4c
multiplier_a = $4e
multiply_eightbit
	cpx #$00
	beq mul_end
	dex
	stx $4e
	lsr
	sta multiplier
	lda #$00
	ldx #$08
mul_loop
	bcc mul_skip
mul_mod
	adc multiplier_a
mul_skip
	ror
	ror multiplier
	dex
	bne mul_loop
	ldx multiplier
	rts
mul_end
	txa
	rts
initeightbitmul_multiply_eightbit2
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : initmoveto
	;    Procedure type : Built-in function
	;    Requires initialization : no
	jmp initmoveto_moveto3
screenmemory =  $fe
colormemory =  $fc
screen_x = $4c
screen_y = $4e
SetScreenPosition
	sta screenmemory+1
	lda #0
	sta screenmemory
	ldy screen_y
	beq sydone
syloop
	clc
	adc #80
	bcc sskip
	inc screenmemory+1
sskip
	dey
	bne syloop
sydone
	ldx screen_x
	beq sxdone
	clc
	adc screen_x
	bcc sxdone
	inc screenmemory+1
sxdone
	sta screenmemory
	rts
initmoveto_moveto3
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : initprintdecimal
	;    Procedure type : Built-in function
	;    Requires initialization : no
ipd_div_hi dc.b 0
ipd_div_lo dc.b 0
init_printdecimal_div10
	ldx #$11
	lda #$00
	clc
init_printdecimal_loop
	rol
	cmp #$0A
	bcc init_printdecimal_skip
	sbc #$0A
init_printdecimal_skip
	rol ipd_div_lo
	rol ipd_div_hi
	dex
	bne init_printdecimal_loop
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : initprintstring
	;    Procedure type : User-defined procedure
print_text = $4c
print_number_text .dc "    ",0
printstring
	ldy #0
printstringloop
	lda (print_text),y
	cmp #0 ;keep
	beq printstring_done
	cmp #64
	bcc printstring_skip
	sec
	sbc #64
printstring_skip
	sta (screenmemory),y
	iny
	dex
	cpx #0
	beq printstring_done
	jmp printstringloop
printstring_done
	rts
	
; //  1    2   3  4   5   6   7   8   9  10  11  12  13
; //1   2   3   4   5   6   7   8   9   0   1   2   3   4   5   6   7   8   9   20  1   2   3   4   5   6   7   8   9   30  1   2   3   4   5   6   7   8   9   40   
; // === functions ============================================================================================ 
	; NodeProcedureDecl -1
	; ***********  Defining procedure : cls
	;    Procedure type : User-defined procedure
	; LineNumber: 220
cls
	; LineNumber: 221
	; Clear screen with offset
	lda #$20
	ldx #$fa
cls_clearloop5
	dex
	sta $0000+$8000,x
	sta $00fa+$8000,x
	sta $01f4+$8000,x
	sta $02ee+$8000,x
	sta $03e8+$8000,x
	sta $04e2+$8000,x
	sta $05dc+$8000,x
	sta $06d6+$8000,x
	bne cls_clearloop5
	; LineNumber: 222
	; MoveTo optimization
	lda #$00
	sta screenmemory
	lda #>$8000
	clc
	adc #$00
	sta screenmemory+1
	; LineNumber: 223
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : getkey
	;    Procedure type : User-defined procedure
	; LineNumber: 228
getkey
	; LineNumber: 231
	; LineNumber: 232
	; Peek
	lda $97 + $0
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : getat
	;    Procedure type : User-defined procedure
	; LineNumber: 250
	; LineNumber: 248
szp	=   $08
	; LineNumber: 246
sx	dc.b	0
	; LineNumber: 246
sy	dc.b	0
getat_block7
getat
	; LineNumber: 251
	; Assigning single variable : szp
	; Generic 16 bit op
	ldy #0
	lda sx
getat_rightvarInteger_var10 = $54
	sta getat_rightvarInteger_var10
	sty getat_rightvarInteger_var10+1
	; Generic 16 bit op
	; Integer constant assigning
	ldy #$80
	lda #$00
getat_rightvarInteger_var13 =   $56
	sta getat_rightvarInteger_var13
	sty getat_rightvarInteger_var13+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda sy
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$28
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc getat_rightvarInteger_var13
getat_wordAdd11
	sta getat_rightvarInteger_var13
	; High-bit binop
	tya
	adc getat_rightvarInteger_var13+1
	tay
	lda getat_rightvarInteger_var13
	; Low bit binop:
	clc
	adc getat_rightvarInteger_var10
getat_wordAdd8
	sta getat_rightvarInteger_var10
	; High-bit binop
	tya
	adc getat_rightvarInteger_var10+1
	tay
	lda getat_rightvarInteger_var10
	sta szp
	sty szp+1
	; LineNumber: 252
	; LineNumber: 253
	; Load pointer array
	ldy #$0
	lda (szp),y
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : textat
	;    Procedure type : User-defined procedure
	; LineNumber: 259
	; LineNumber: 257
zp	=   $08
	; LineNumber: 255
x	dc.b	0
	; LineNumber: 255
y	dc.b	0
	; LineNumber: 255
this_str	=   $16
	; LineNumber: 255
str_len	dc.b	0
textat_block14
textat
	; LineNumber: 260
	; Assigning single variable : zp
	; Generic 16 bit op
	ldy #0
	lda x
textat_rightvarInteger_var17 = $54
	sta textat_rightvarInteger_var17
	sty textat_rightvarInteger_var17+1
	; Generic 16 bit op
	; Integer constant assigning
	ldy #$80
	lda #$00
textat_rightvarInteger_var20 =   $56
	sta textat_rightvarInteger_var20
	sty textat_rightvarInteger_var20+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda y
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$28
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc textat_rightvarInteger_var20
textat_wordAdd18
	sta textat_rightvarInteger_var20
	; High-bit binop
	tya
	adc textat_rightvarInteger_var20+1
	tay
	lda textat_rightvarInteger_var20
	; Low bit binop:
	clc
	adc textat_rightvarInteger_var17
textat_wordAdd15
	sta textat_rightvarInteger_var17
	; High-bit binop
	tya
	adc textat_rightvarInteger_var17+1
	tay
	lda textat_rightvarInteger_var17
	sta zp
	sty zp+1
	; LineNumber: 260
	; memcpyfast
	ldy str_len
	dey
textat_memcpy21
	lda (this_str),y
	sta (zp),y
	dey
	bpl textat_memcpy21
	; LineNumber: 262
	rts
	
; // =========================================
; // SOUND!
	; NodeProcedureDecl -1
	; ***********  Defining procedure : PlayNote
	;    Procedure type : User-defined procedure
	; LineNumber: 281
	; LineNumber: 280
note_duration	dc.b	0
	; LineNumber: 278
note	dc.b	0
	; LineNumber: 278
note_len	dc.b	0
PlayNote_block22
PlayNote
	; LineNumber: 282
	; Binary clause Simplified: EQUALS
	lda PLAY_SOUND
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne PlayNote_elsedoneblock26
PlayNote_ConditionalTrueBlock24: ;Main true block ;keep 
	; LineNumber: 283
	; LineNumber: 284
	; Assigning memory location
	; Assigning single variable : $e848
	lda note
	; Calling storevariable
	sta $e848
	; LineNumber: 286
	; Assigning single variable : note_duration
	lda #$0
	; Calling storevariable
	sta note_duration
PlayNote_forloop37
	; LineNumber: 284
	; Wait
	ldx #$c8 ; optimized, look out for bugs
	dex
	bne *-1
PlayNote_forloopcounter39
PlayNote_loopstart40
	; Compare is onpage
	inc note_duration
	lda note_len
	cmp note_duration ;keep
	bne PlayNote_forloop37
PlayNote_loopdone44: ;keep
PlayNote_forloopend38
PlayNote_loopend41
	; LineNumber: 286
PlayNote_elsedoneblock26
	; LineNumber: 287
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : burp
	;    Procedure type : User-defined procedure
	; LineNumber: 290
burp
	; LineNumber: 291
	; Assigning memory location
	; Assigning single variable : $e84a
	lda #$f
	; Calling storevariable
	sta $e84a
	; LineNumber: 292
	; Assigning memory location
	; Assigning single variable : $e84b
	lda #$10
	; Calling storevariable
	sta $e84b
	; LineNumber: 293
	; Assigning single variable : note
	lda #$ee
	; Calling storevariable
	sta note
	; Assigning single variable : note_len
	lda #$ff
	; Calling storevariable
	sta note_len
	jsr PlayNote
	; LineNumber: 294
	; Assigning memory location
	; Assigning single variable : $e84b
	lda #$0
	; Calling storevariable
	sta $e84b
	; LineNumber: 295
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : ping
	;    Procedure type : User-defined procedure
	; LineNumber: 298
ping
	; LineNumber: 299
	; Assigning memory location
	; Assigning single variable : $e84a
	lda #$55
	; Calling storevariable
	sta $e84a
	; LineNumber: 300
	; Assigning memory location
	; Assigning single variable : $e84b
	lda #$10
	; Calling storevariable
	sta $e84b
	; LineNumber: 301
	; Assigning single variable : note
	lda #$ee
	; Calling storevariable
	sta note
	; Assigning single variable : note_len
	lda #$c8
	; Calling storevariable
	sta note_len
	jsr PlayNote
	; LineNumber: 302
	; Assigning single variable : note
	lda #$fb
	; Calling storevariable
	sta note
	; Assigning single variable : note_len
	lda #$c8
	; Calling storevariable
	sta note_len
	jsr PlayNote
	; LineNumber: 303
	; Assigning single variable : note
	lda #$d2
	; Calling storevariable
	sta note
	; Assigning single variable : note_len
	lda #$ff
	; Calling storevariable
	sta note_len
	jsr PlayNote
	; LineNumber: 304
	; Assigning single variable : note
	lda #$d2
	; Calling storevariable
	sta note
	; Assigning single variable : note_len
	lda #$ff
	; Calling storevariable
	sta note_len
	jsr PlayNote
	; LineNumber: 305
	; Assigning memory location
	; Assigning single variable : $e84b
	lda #$0
	; Calling storevariable
	sta $e84b
	; LineNumber: 306
	rts
	
; // =========================================
	; NodeProcedureDecl -1
	; ***********  Defining procedure : title_screen
	;    Procedure type : User-defined procedure
	; LineNumber: 311
title_screen
	; LineNumber: 314
	
; // Set up pointer to array:
	; Assigning single variable : title_screen_frog_pointer
	lda #<title_screen_frog
	ldx #>title_screen_frog
	sta title_screen_frog_pointer
	stx title_screen_frog_pointer+1
	; LineNumber: 316
	jsr cls
	; LineNumber: 319
	
; // Draw the frog
	; Copy full screen
	lda title_screen_frog_pointer
	sta $4c
	lda title_screen_frog_pointer+1
	sta $4c+1
	lda screenmemory
	sta $4e
	lda screenmemory+1
	sta $4e+1
	; CopyFullscreen with pointers
	ldx #3
title_screen_outer48
	ldy #0
title_screen_inner49
	lda ($4c),y
	sta ($4e),y
	dey
	bne title_screen_inner49
	inc $4c+1
	inc $4e+1
	dex
	bne title_screen_outer48
	ldy #0
title_screen_final50
	lda ($4c),y
	sta ($4e),y
	iny
	cpy #232
	bne title_screen_final50
	; LineNumber: 320
	; memcpyfast
	ldx #12
title_screen_memcpy51
	lda logo+ $00,x
	sta $8000,x
	dex
	bpl title_screen_memcpy51
	; LineNumber: 321
	; memcpyfast
	ldx #12
title_screen_memcpy52
	lda logo+ $0d,x
	sta $8028,x
	dex
	bpl title_screen_memcpy52
	; LineNumber: 322
	; memcpyfast
	ldx #12
title_screen_memcpy53
	lda logo+ $1a,x
	sta $8050,x
	dex
	bpl title_screen_memcpy53
	; LineNumber: 323
	; memcpyfast
	ldx #12
title_screen_memcpy54
	lda logo+ $27,x
	sta $8078,x
	dex
	bpl title_screen_memcpy54
	; LineNumber: 327
title_screen_while55
title_screen_loopstart59
	; Binary clause Simplified: NOTEQUALS
	jsr getkey
	; Compare with pure num / var optimization
	cmp #$20;keep
	beq title_screen_elsedoneblock58
title_screen_ConditionalTrueBlock56: ;Main true block ;keep 
	; LineNumber: 328
	; LineNumber: 329
	; Assigning single variable : x
	lda #$2
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$15
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<blk
	ldx #>blk
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1c
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 330
	; Assigning single variable : x
	lda #$2
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$16
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<by
	ldx #>by
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1c
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 331
	; Assigning single variable : x
	lda #$2
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$17
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<url
	ldx #>url
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1c
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 332
	; Assigning single variable : x
	lda #$2
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$18
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<space
	ldx #>space
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1c
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 333
	jmp title_screen_while55
title_screen_elsedoneblock58
title_screen_loopend60
	; LineNumber: 335
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : score_screen
	;    Procedure type : User-defined procedure
	; LineNumber: 338
score_screen
	; LineNumber: 339
	jsr cls
	; LineNumber: 340
	; memcpyfast
	ldx #12
score_screen_memcpy64
	lda logo+ $00,x
	sta $8000,x
	dex
	bpl score_screen_memcpy64
	; LineNumber: 341
	; memcpyfast
	ldx #12
score_screen_memcpy65
	lda logo+ $0d,x
	sta $8028,x
	dex
	bpl score_screen_memcpy65
	; LineNumber: 342
	; memcpyfast
	ldx #12
score_screen_memcpy66
	lda logo+ $1a,x
	sta $8050,x
	dex
	bpl score_screen_memcpy66
	; LineNumber: 343
	; memcpyfast
	ldx #12
score_screen_memcpy67
	lda logo+ $27,x
	sta $8078,x
	dex
	bpl score_screen_memcpy67
	; LineNumber: 346
	; MoveTo optimization
	lda #$e2
	sta screenmemory
	lda #>$8000
	clc
	adc #$01
	sta screenmemory+1
	; LineNumber: 347
	clc
	lda #<over
	adc #$0
	ldy #>over
	sta print_text+0
	sty print_text+1
	ldx #$1c ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 349
	; MoveTo optimization
	lda #$32
	sta screenmemory
	lda #>$8000
	clc
	adc #$02
	sta screenmemory+1
	; LineNumber: 350
	clc
	lda #<score
	adc #$0
	ldy #>score
	sta print_text+0
	sty print_text+1
	ldx #$1c ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 352
	; MoveTo optimization
	lda #$3e
	sta screenmemory
	lda #>$8000
	clc
	adc #$02
	sta screenmemory+1
	; LineNumber: 352
	; integer assignment NodeVar
	ldy player_score+1 ; Next one
	lda player_score
	sta ipd_div_lo
	sty ipd_div_hi
	ldy #$3 ; optimized, look out for bugs
score_screen_printdecimal72
	jsr init_printdecimal_div10 
	ora #$30
	sta (screenmemory),y
	dey
	bpl score_screen_printdecimal72
	; LineNumber: 355
	; MoveTo optimization
	lda #$22
	sta screenmemory
	lda #>$8000
	clc
	adc #$03
	sta screenmemory+1
	; LineNumber: 356
	clc
	lda #<space
	adc #$0
	ldy #>space
	sta print_text+0
	sty print_text+1
	ldx #$1c ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 359
score_screen_while75
score_screen_loopstart79
	; Binary clause Simplified: NOTEQUALS
	jsr getkey
	; Compare with pure num / var optimization
	cmp #$20;keep
	beq score_screen_elsedoneblock78
score_screen_ConditionalTrueBlock76: ;Main true block ;keep 
	; LineNumber: 360
	; LineNumber: 361
	jmp score_screen_while75
score_screen_elsedoneblock78
score_screen_loopend80
	; LineNumber: 363
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : sprite_xy
	;    Procedure type : User-defined procedure
	; LineNumber: 369
	; LineNumber: 367
spr_p	=   $08
	; LineNumber: 365
spr_x	dc.b	0
	; LineNumber: 365
spr_y	dc.b	0
	; LineNumber: 365
source_str	=   $16
	; LineNumber: 365
spr_len	dc.b	0
sprite_xy_block83
sprite_xy
	; LineNumber: 370
	; Assigning single variable : spr_p
	; Generic 16 bit op
	ldy #0
	lda spr_x
sprite_xy_rightvarInteger_var86 = $54
	sta sprite_xy_rightvarInteger_var86
	sty sprite_xy_rightvarInteger_var86+1
	; Generic 16 bit op
	lda #<level_strips
	ldy #>level_strips
sprite_xy_rightvarInteger_var89 =   $56
	sta sprite_xy_rightvarInteger_var89
	sty sprite_xy_rightvarInteger_var89+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda spr_y
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$50
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc sprite_xy_rightvarInteger_var89
sprite_xy_wordAdd87
	sta sprite_xy_rightvarInteger_var89
	; High-bit binop
	tya
	adc sprite_xy_rightvarInteger_var89+1
	tay
	lda sprite_xy_rightvarInteger_var89
	; Low bit binop:
	clc
	adc sprite_xy_rightvarInteger_var86
sprite_xy_wordAdd84
	sta sprite_xy_rightvarInteger_var86
	; High-bit binop
	tya
	adc sprite_xy_rightvarInteger_var86+1
	tay
	lda sprite_xy_rightvarInteger_var86
	sta spr_p
	sty spr_p+1
	; LineNumber: 370
	; memcpyfast
	ldy spr_len
	dey
sprite_xy_memcpy90
	lda (source_str),y
	sta (spr_p),y
	dey
	bpl sprite_xy_memcpy90
	; LineNumber: 372
	; Assigning single variable : spr_p
	; Generic 16 bit op
	ldy #0
	lda #$28
sprite_xy_rightvarInteger_var93 = $54
	sta sprite_xy_rightvarInteger_var93
	sty sprite_xy_rightvarInteger_var93+1
	; Generic 16 bit op
	ldy #0
	lda spr_x
sprite_xy_rightvarInteger_var96 =   $56
	sta sprite_xy_rightvarInteger_var96
	sty sprite_xy_rightvarInteger_var96+1
	; Generic 16 bit op
	lda #<level_strips
	ldy #>level_strips
sprite_xy_rightvarInteger_var99 =   $58
	sta sprite_xy_rightvarInteger_var99
	sty sprite_xy_rightvarInteger_var99+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda spr_y
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$50
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc sprite_xy_rightvarInteger_var99
sprite_xy_wordAdd97
	sta sprite_xy_rightvarInteger_var99
	; High-bit binop
	tya
	adc sprite_xy_rightvarInteger_var99+1
	tay
	lda sprite_xy_rightvarInteger_var99
	; Low bit binop:
	clc
	adc sprite_xy_rightvarInteger_var96
sprite_xy_wordAdd94
	sta sprite_xy_rightvarInteger_var96
	; High-bit binop
	tya
	adc sprite_xy_rightvarInteger_var96+1
	tay
	lda sprite_xy_rightvarInteger_var96
	; Low bit binop:
	clc
	adc sprite_xy_rightvarInteger_var93
sprite_xy_wordAdd91
	sta sprite_xy_rightvarInteger_var93
	; High-bit binop
	tya
	adc sprite_xy_rightvarInteger_var93+1
	tay
	lda sprite_xy_rightvarInteger_var93
	sta spr_p
	sty spr_p+1
	; LineNumber: 372
	; memcpyfast
	ldy spr_len
	dey
sprite_xy_memcpy100
	lda (source_str),y
	sta (spr_p),y
	dey
	bpl sprite_xy_memcpy100
	; LineNumber: 374
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : init_vars
	;    Procedure type : User-defined procedure
	; LineNumber: 381
	; LineNumber: 378
this_row	=   $08
	; LineNumber: 378
target_strip	=   $16
	; LineNumber: 379
iteration	dc.b	0
	; LineNumber: 380
homeplate	dc.b	$d3
init_vars_block101
init_vars
	; LineNumber: 382
	jsr cls
	; LineNumber: 385
	
; // Init the playfield
	; Assigning single variable : screenmemory
	lda #$00
	ldx #$80
	sta screenmemory
	stx screenmemory+1
	; LineNumber: 386
	; Assigning single variable : petscii_pointer
	lda #<level2
	ldx #>level2
	sta petscii_pointer
	stx petscii_pointer+1
	; LineNumber: 387
	; Copy full screen
	sta $4c
	lda petscii_pointer+1
	sta $4c+1
	lda screenmemory
	sta $4e
	lda screenmemory+1
	sta $4e+1
	; CopyFullscreen with pointers
	ldx #3
init_vars_outer102
	ldy #0
init_vars_inner103
	lda ($4c),y
	sta ($4e),y
	dey
	bne init_vars_inner103
	inc $4c+1
	inc $4e+1
	dex
	bne init_vars_outer102
	ldy #0
init_vars_final104
	lda ($4c),y
	sta ($4e),y
	iny
	cpy #232
	bne init_vars_final104
	; LineNumber: 388
	; Assigning single variable : this_row
	lda petscii_pointer
	ldx petscii_pointer+1
	sta this_row
	stx this_row+1
	; LineNumber: 389
	; Assigning single variable : target_strip
	lda #<level_strips
	ldx #>level_strips
	sta target_strip
	stx target_strip+1
	; LineNumber: 403
	; Assigning single variable : iteration
	lda #$1
	; Calling storevariable
	sta iteration
init_vars_forloop105
	; LineNumber: 393
	; LineNumber: 395
	
; // Obstacle Blanks
; // Copy the source twice
	; memcpyfast
	ldy #39
init_vars_memcpy117
	lda (this_row),y
	sta (target_strip),y
	dey
	bpl init_vars_memcpy117
	; LineNumber: 396
	; Assigning single variable : target_strip
	lda target_strip
	clc
	adc #$28
	sta target_strip+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc init_vars_WordAdd118
	inc target_strip+1
init_vars_WordAdd118
	; LineNumber: 397
	; memcpyfast
	ldy #39
init_vars_memcpy119
	lda (this_row),y
	sta (target_strip),y
	dey
	bpl init_vars_memcpy119
	; LineNumber: 398
	; Assigning single variable : target_strip
	lda target_strip
	clc
	adc #$28
	sta target_strip+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc init_vars_WordAdd120
	inc target_strip+1
init_vars_WordAdd120
	; LineNumber: 401
	
; // Next row
	; Assigning single variable : this_row
	lda this_row
	clc
	adc #$28
	sta this_row+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc init_vars_WordAdd121
	inc this_row+1
init_vars_WordAdd121
	; LineNumber: 402
init_vars_forloopcounter107
init_vars_loopstart108
	; Compare is onpage
	inc iteration
	lda #$19
	cmp iteration ;keep
	bcs init_vars_forloop105
init_vars_loopdone122: ;keep
init_vars_forloopend106
init_vars_loopend109
	; LineNumber: 405
	
; // Init the "sprites"
	; memcpy
	ldx #0
init_vars_memcpy123
	lda arr_crockr+ $00,x
	sta str_crockr,x
	inx
	cpx #$9
	bne init_vars_memcpy123
	; LineNumber: 406
	; memcpy
	ldx #0
init_vars_memcpy124
	lda arr_crockl+ $00,x
	sta str_crockl,x
	inx
	cpx #$9
	bne init_vars_memcpy124
	; LineNumber: 407
	; memcpy
	ldx #0
init_vars_memcpy125
	lda arr_logl+ $00,x
	sta str_logl,x
	inx
	cpx #$5
	bne init_vars_memcpy125
	; LineNumber: 408
	; memcpy
	ldx #0
init_vars_memcpy126
	lda arr_logr+ $00,x
	sta str_logr,x
	inx
	cpx #$5
	bne init_vars_memcpy126
	; LineNumber: 409
	; memcpy
	ldx #0
init_vars_memcpy127
	lda arr_turtles+ $00,x
	sta str_turtles,x
	inx
	cpx #$5
	bne init_vars_memcpy127
	; LineNumber: 410
	; memcpy
	ldx #0
init_vars_memcpy128
	lda arr_river_r+ $00,x
	sta str_river_r,x
	inx
	cpx #$5
	bne init_vars_memcpy128
	; LineNumber: 411
	; memcpy
	ldx #0
init_vars_memcpy129
	lda arr_river_l+ $00,x
	sta str_river_l,x
	inx
	cpx #$5
	bne init_vars_memcpy129
	; LineNumber: 413
	; memcpy
	ldx #0
init_vars_memcpy130
	lda arr_truckt_r+ $00,x
	sta str_truckt_r,x
	inx
	cpx #$8
	bne init_vars_memcpy130
	; LineNumber: 414
	; memcpy
	ldx #0
init_vars_memcpy131
	lda arr_truckb_r+ $00,x
	sta str_truckb_r,x
	inx
	cpx #$8
	bne init_vars_memcpy131
	; LineNumber: 415
	; memcpy
	ldx #0
init_vars_memcpy132
	lda arr_carl+ $00,x
	sta str_cart,x
	inx
	cpx #$4
	bne init_vars_memcpy132
	; LineNumber: 416
	; memcpy
	ldx #0
init_vars_memcpy133
	lda arr_carr+ $00,x
	sta str_carb,x
	inx
	cpx #$4
	bne init_vars_memcpy133
	; LineNumber: 420
	
; // Sprite start positions
	; Assigning single variable : spr_x
	lda #$a
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$0
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_crockr
	ldx #>str_crockr
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$9
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 421
	; Assigning single variable : spr_x
	lda #$18
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$0
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_logr
	ldx #>str_logr
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$5
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 423
	; Assigning single variable : spr_x
	lda #$1e
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$1
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_crockl
	ldx #>str_crockl
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$9
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 424
	; Assigning single variable : spr_x
	lda #$5
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$1
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_logl
	ldx #>str_logl
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$5
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 426
	; Assigning single variable : spr_x
	lda #$4
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$2
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_logr
	ldx #>str_logr
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$5
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 427
	; Assigning single variable : spr_x
	lda #$e
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$2
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_logr
	ldx #>str_logr
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$5
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 429
	; Assigning single variable : spr_x
	lda #$18
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$3
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_logl
	ldx #>str_logl
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$5
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 430
	; Assigning single variable : spr_x
	lda #$22
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$3
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_logl
	ldx #>str_logl
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$5
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 432
	; Assigning single variable : spr_x
	lda #$a
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$4
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_turtles
	ldx #>str_turtles
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$5
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 433
	; Assigning single variable : spr_x
	lda #$14
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$4
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_turtles
	ldx #>str_turtles
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$5
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 434
	; Assigning single variable : spr_x
	lda #$1e
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$4
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_turtles
	ldx #>str_turtles
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$5
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 436
	; Assigning single variable : spr_x
	lda #$22
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$5
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_cart
	ldx #>str_cart
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$4
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 437
	; Assigning single variable : spr_x
	lda #$22
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$6
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_carb
	ldx #>str_carb
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$4
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 438
	; Assigning single variable : spr_x
	lda #$13
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$7
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_cart
	ldx #>str_cart
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$4
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 439
	; Assigning single variable : spr_x
	lda #$13
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$8
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_carb
	ldx #>str_carb
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$4
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 440
	; Assigning single variable : spr_x
	lda #$a
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$9
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_truckt_r
	ldx #>str_truckt_r
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$8
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 441
	; Assigning single variable : spr_x
	lda #$a
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$a
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_truckb_r
	ldx #>str_truckb_r
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$8
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 442
	; Assigning single variable : spr_x
	lda #$13
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$b
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_truckt_r
	ldx #>str_truckt_r
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$8
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 443
	; Assigning single variable : spr_x
	lda #$13
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$c
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_truckb_r
	ldx #>str_truckb_r
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$8
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 446
	; Assigning single variable : frog_x
	lda #$14
	; Calling storevariable
	sta frog_x
	; LineNumber: 447
	; Assigning single variable : frog_y
	lda #$18
	; Calling storevariable
	sta frog_y
	; LineNumber: 449
	; Assigning single variable : KEYPRESS
	lda #$0
	; Calling storevariable
	sta KEYPRESS
	; LineNumber: 450
	; Assigning single variable : ALIVE
	lda #$1
	; Calling storevariable
	sta ALIVE
	; LineNumber: 451
	; Assigning single variable : WON_GAME
	lda #$0
	; Calling storevariable
	sta WON_GAME
	; LineNumber: 453
	; Assigning single variable : player_lives
	lda #$3
	; Calling storevariable
	sta player_lives
	; LineNumber: 454
	; Assigning single variable : player_score
	ldy #0
	lda #$0
	; Calling storevariable
	sta player_score
	sty player_score+1
	; LineNumber: 457
	
; // Home plates
	; Assigning single variable : x
	lda #$3
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$1
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<homeplate
	ldx #>homeplate
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 458
	; Assigning single variable : x
	lda #$a
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$1
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<homeplate
	ldx #>homeplate
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 459
	; Assigning single variable : x
	lda #$12
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$1
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<homeplate
	ldx #>homeplate
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 460
	; Assigning single variable : x
	lda #$18
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$1
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<homeplate
	ldx #>homeplate
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 461
	; Assigning single variable : x
	lda #$1f
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$1
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<homeplate
	ldx #>homeplate
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 462
	; Assigning single variable : x
	lda #$25
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$1
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<homeplate
	ldx #>homeplate
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 463
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : shit_delay
	;    Procedure type : User-defined procedure
	; LineNumber: 468
	; LineNumber: 467
temp_delay	dc.b	0
shit_delay_block134
shit_delay
	; LineNumber: 474
	; Assigning single variable : temp_delay
	lda #$1
	; Calling storevariable
	sta temp_delay
shit_delay_forloop135
	; LineNumber: 470
	; LineNumber: 471
shit_delay_while150
shit_delay_loopstart154
	; Binary clause Simplified: EQUALS
	lda ti
	; Compare with pure num / var optimization
	cmp oldti;keep
	bne shit_delay_elsedoneblock153
shit_delay_ConditionalTrueBlock151: ;Main true block ;keep 
	; LineNumber: 470
	; LineNumber: 471
	jmp shit_delay_while150
shit_delay_elsedoneblock153
shit_delay_loopend155
	; LineNumber: 472
	; Assigning single variable : oldti
	lda ti
	; Calling storevariable
	sta oldti
	; LineNumber: 473
shit_delay_forloopcounter137
shit_delay_loopstart138
	; Compare is onpage
	inc temp_delay
	lda GAME_SPEED
	cmp temp_delay ;keep
	bcs shit_delay_forloop135
shit_delay_loopdone158: ;keep
shit_delay_forloopend136
shit_delay_loopend139
	; LineNumber: 474
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : show_obstacles
	;    Procedure type : User-defined procedure
	; LineNumber: 481
	; LineNumber: 479
strip_num	dc.b	0
	; LineNumber: 479
this_strip	dc.b	0
	; LineNumber: 480
this_source_offset	=   $08
show_obstacles_block159
show_obstacles
	; LineNumber: 485
	
; // TRSE way of incrementing 
; // counter with loop back to 0
	inc obstacles_x_rl
	lda obstacles_x_rl
	cmp #$27 ; keep
	bne show_obstacles_incmax161
	lda #$0
	sta obstacles_x_rl
show_obstacles_incmax161
	; LineNumber: 486
	; Assigning single variable : obstacles_x_lr
	; 8 bit binop
	; Add/sub where right value is constant number
	lda #$28
	sec
	sbc obstacles_x_rl
	 ; end add / sub var with constant
	; Calling storevariable
	sta obstacles_x_lr
	; LineNumber: 506
	; Assigning single variable : strip_num
	lda #$0
	; Calling storevariable
	sta strip_num
show_obstacles_forloop162
	; LineNumber: 489
	; LineNumber: 490
	; Assigning single variable : this_strip
	; Load Byte array
	ldx strip_num
	lda obstacles_y,x
	; Calling storevariable
	sta this_strip
	; LineNumber: 491
	; Assigning single variable : screenmemory
	; Generic 16 bit op
	; Integer constant assigning
	ldy #$80
	lda #$00
show_obstacles_rightvarInteger_var190 = $54
	sta show_obstacles_rightvarInteger_var190
	sty show_obstacles_rightvarInteger_var190+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda this_strip
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$28
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc show_obstacles_rightvarInteger_var190
show_obstacles_wordAdd188
	sta show_obstacles_rightvarInteger_var190
	; High-bit binop
	tya
	adc show_obstacles_rightvarInteger_var190+1
	tay
	lda show_obstacles_rightvarInteger_var190
	sta screenmemory
	sty screenmemory+1
	; LineNumber: 493
	; Assigning single variable : this_source_offset
	; Generic 16 bit op
	lda #<level_strips
	ldy #>level_strips
show_obstacles_rightvarInteger_var193 = $54
	sta show_obstacles_rightvarInteger_var193
	sty show_obstacles_rightvarInteger_var193+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda this_strip
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$50
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc show_obstacles_rightvarInteger_var193
show_obstacles_wordAdd191
	sta show_obstacles_rightvarInteger_var193
	; High-bit binop
	tya
	adc show_obstacles_rightvarInteger_var193+1
	tay
	lda show_obstacles_rightvarInteger_var193
	sta this_source_offset
	sty this_source_offset+1
	; LineNumber: 495
	; Binary clause Simplified: EQUALS
	; Load Byte array
	ldx strip_num
	lda strip_direction,x
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne show_obstacles_elseblock196
show_obstacles_ConditionalTrueBlock195: ;Main true block ;keep 
	; LineNumber: 496
	; LineNumber: 497
	; Assigning single variable : this_source_offset
	lda this_source_offset
	clc
	adc obstacles_x_rl
	sta this_source_offset+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc show_obstacles_WordAdd203
	inc this_source_offset+1
show_obstacles_WordAdd203
	; LineNumber: 499
	jmp show_obstacles_elsedoneblock197
show_obstacles_elseblock196
	; LineNumber: 500
	; LineNumber: 501
	; Assigning single variable : this_source_offset
	lda this_source_offset
	clc
	adc obstacles_x_lr
	sta this_source_offset+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc show_obstacles_WordAdd205
	inc this_source_offset+1
show_obstacles_WordAdd205
	; LineNumber: 502
show_obstacles_elsedoneblock197
	; LineNumber: 503
	; memcpyfast
	ldy #39
show_obstacles_memcpy206
	lda (this_source_offset),y
	sta (screenmemory),y
	dey
	bpl show_obstacles_memcpy206
	; LineNumber: 505
show_obstacles_forloopcounter164
show_obstacles_loopstart165
	inc strip_num
	lda #$d
	cmp strip_num ;keep
	beq show_obstacles_loopdone207
show_obstacles_loopnotdone208
	jmp show_obstacles_forloop162
show_obstacles_loopdone207
show_obstacles_forloopend163
show_obstacles_loopend166
	; LineNumber: 508
	
; // RESET SCREEN MEMORY
	; Assigning single variable : screenmemory
	lda #$00
	ldx #$80
	sta screenmemory
	stx screenmemory+1
	; LineNumber: 510
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : kill_frog
	;    Procedure type : User-defined procedure
	; LineNumber: 513
kill_frog
	; LineNumber: 514
	; Assigning single variable : x
	lda frog_old_x
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda frog_old_y
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<previous_tile
	ldx #>previous_tile
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 515
	; Assigning single variable : x
	lda frog_x
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda frog_y
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<next_tile
	ldx #>next_tile
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 516
	; Assigning single variable : previous_tile
	lda #$20
	; Calling storevariable
	sta previous_tile
	; LineNumber: 517
	; Assigning single variable : next_tile
	; Calling storevariable
	sta next_tile
	; LineNumber: 518
	; Assigning single variable : frog_x
	lda #$14
	; Calling storevariable
	sta frog_x
	; LineNumber: 519
	; Assigning single variable : frog_y
	lda #$18
	; Calling storevariable
	sta frog_y
	; LineNumber: 520
	; Assigning single variable : frog_old_x
	lda frog_x
	; Calling storevariable
	sta frog_old_x
	; LineNumber: 521
	; Assigning single variable : frog_old_y
	lda frog_y
	; Calling storevariable
	sta frog_old_y
	; LineNumber: 522
	jsr burp
	; LineNumber: 523
	dec player_lives
	; LineNumber: 524
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : check_collisions
	;    Procedure type : User-defined procedure
	; LineNumber: 529
check_collisions
	; LineNumber: 531
	
; // CHECK COLLISSIONS
	; Assigning single variable : next_tile
	; Assigning single variable : sx
	lda frog_x
	; Calling storevariable
	sta sx
	; Assigning single variable : sy
	lda frog_y
	; Calling storevariable
	sta sy
	jsr getat
	; Calling storevariable
	sta next_tile
	; LineNumber: 537
	cmp frogcharA ;keep
	bne check_collisions_casenext213
	; LineNumber: 541
	; LineNumber: 542
	; Binary clause Simplified: LESS
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$18;keep
	bcs check_collisions_elsedoneblock218
check_collisions_ConditionalTrueBlock216: ;Main true block ;keep 
	; LineNumber: 543
	; LineNumber: 544
	
; // There is no function to search a string
; // or check an array, or return array size,
; // so we need to check each character individually
; // Can't occupy where already landed
	; Assigning single variable : frog_x
	lda frog_old_x
	; Calling storevariable
	sta frog_x
	; LineNumber: 545
	; Assigning single variable : frog_y
	lda frog_old_y
	; Calling storevariable
	sta frog_y
	; LineNumber: 546
check_collisions_elsedoneblock218
	; LineNumber: 547
	jmp check_collisions_caseend212
check_collisions_casenext213
	lda next_tile
	cmp frogcharB ;keep
	bne check_collisions_casenext221
	; LineNumber: 549
	; LineNumber: 550
	; Binary clause Simplified: LESS
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$18;keep
	bcs check_collisions_elsedoneblock226
check_collisions_ConditionalTrueBlock224: ;Main true block ;keep 
	; LineNumber: 551
	; LineNumber: 552
	; Assigning single variable : frog_x
	lda frog_old_x
	; Calling storevariable
	sta frog_x
	; LineNumber: 553
	; Assigning single variable : frog_y
	lda frog_old_y
	; Calling storevariable
	sta frog_y
	; LineNumber: 554
check_collisions_elsedoneblock226
	; LineNumber: 555
	jmp check_collisions_caseend212
check_collisions_casenext221
	lda next_tile
	cmp #$66 ;keep
	bne check_collisions_casenext229
	; LineNumber: 558
	; LineNumber: 559
	; Binary clause Simplified: LESS
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$18;keep
	bcs check_collisions_elsedoneblock234
check_collisions_ConditionalTrueBlock232: ;Main true block ;keep 
	; LineNumber: 560
	; LineNumber: 561
	
; // Scenery
	; Assigning single variable : frog_x
	lda frog_old_x
	; Calling storevariable
	sta frog_x
	; LineNumber: 562
	; Assigning single variable : frog_y
	lda frog_old_y
	; Calling storevariable
	sta frog_y
	; LineNumber: 563
check_collisions_elsedoneblock234
	; LineNumber: 564
	jmp check_collisions_caseend212
check_collisions_casenext229
	lda next_tile
	cmp #$68 ;keep
	bne check_collisions_casenext237
	; LineNumber: 567
	; LineNumber: 568
	; Assigning single variable : frog_x
	lda frog_old_x
	; Calling storevariable
	sta frog_x
	; LineNumber: 569
	; Assigning single variable : frog_y
	lda frog_old_y
	; Calling storevariable
	sta frog_y
	; LineNumber: 570
	jmp check_collisions_caseend212
check_collisions_casenext237
	lda next_tile
	cmp #$5c ;keep
	bne check_collisions_casenext239
	; LineNumber: 573
	; LineNumber: 574
	; Assigning single variable : frog_x
	lda frog_old_x
	; Calling storevariable
	sta frog_x
	; LineNumber: 575
	; Assigning single variable : frog_y
	lda frog_old_y
	; Calling storevariable
	sta frog_y
	; LineNumber: 576
	jmp check_collisions_caseend212
check_collisions_casenext239
	lda next_tile
	cmp #$20 ;keep
	bne check_collisions_casenext241
	; LineNumber: 582
	; LineNumber: 583
	; Binary clause Simplified: LESS
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$9;keep
	bcs check_collisions_elsedoneblock246
check_collisions_localsuccess248: ;keep
	; ; logical AND, second requirement
	; Optimization: replacing a > N with a >= N+1
	; Binary clause Simplified: GREATEREQUAL
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$4;keep
	bcc check_collisions_elsedoneblock246
check_collisions_ConditionalTrueBlock244: ;Main true block ;keep 
	; LineNumber: 584
	; LineNumber: 585
	
; // Water kills the frog for some reason?
	jsr kill_frog
	; LineNumber: 586
check_collisions_elsedoneblock246
	; LineNumber: 587
	jmp check_collisions_caseend212
check_collisions_casenext241
	lda next_tile
	cmp #$51 ;keep
	bne check_collisions_casenext250
	; LineNumber: 591
	; LineNumber: 592
	; Optimization: replacing a > N with a >= N+1
	; Binary clause Simplified: GREATEREQUAL
	lda frog_x
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc check_collisions_elsedoneblock255
check_collisions_ConditionalTrueBlock253: ;Main true block ;keep 
	; LineNumber: 593
	; LineNumber: 594
	
; // Ride turtles and logs etc
	dec frog_x
	; LineNumber: 595
check_collisions_elsedoneblock255
	; LineNumber: 596
	jmp check_collisions_caseend212
check_collisions_casenext250
	lda next_tile
	cmp #$a8 ;keep
	bne check_collisions_casenext260
	; LineNumber: 599
	; LineNumber: 600
	; Binary clause Simplified: LESS
	lda frog_x
	; Compare with pure num / var optimization
	cmp #$26;keep
	bcs check_collisions_elsedoneblock265
check_collisions_ConditionalTrueBlock263: ;Main true block ;keep 
	; LineNumber: 601
	; LineNumber: 602
	
; // (
	inc frog_x
	; LineNumber: 603
check_collisions_elsedoneblock265
	; LineNumber: 604
	jmp check_collisions_caseend212
check_collisions_casenext260
	lda next_tile
	cmp #$a9 ;keep
	bne check_collisions_casenext270
	; LineNumber: 607
	; LineNumber: 608
	; Optimization: replacing a > N with a >= N+1
	; Binary clause Simplified: GREATEREQUAL
	lda frog_x
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc check_collisions_elsedoneblock275
check_collisions_ConditionalTrueBlock273: ;Main true block ;keep 
	; LineNumber: 609
	; LineNumber: 610
	
; // ) 
	dec frog_x
	; LineNumber: 611
check_collisions_elsedoneblock275
	; LineNumber: 612
	jmp check_collisions_caseend212
check_collisions_casenext270
	lda next_tile
	cmp #$dc ;keep
	bne check_collisions_casenext280
	; LineNumber: 615
	; LineNumber: 616
	; Binary clause Simplified: LESS
	lda frog_x
	; Compare with pure num / var optimization
	cmp #$26;keep
	bcs check_collisions_elsedoneblock285
check_collisions_ConditionalTrueBlock283: ;Main true block ;keep 
	; LineNumber: 617
	; LineNumber: 618
	
; // Crock bod right
	inc frog_x
	; LineNumber: 619
check_collisions_elsedoneblock285
	; LineNumber: 621
	; Optimization: replacing a > N with a >= N+1
	; Binary clause Simplified: GREATEREQUAL
	lda frog_x
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc check_collisions_elsedoneblock293
check_collisions_localsuccess296: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne check_collisions_elsedoneblock293
check_collisions_ConditionalTrueBlock291: ;Main true block ;keep 
	; LineNumber: 622
	; LineNumber: 623
	dec frog_x
	; LineNumber: 624
check_collisions_elsedoneblock293
	; LineNumber: 625
	jmp check_collisions_caseend212
check_collisions_casenext280
	lda next_tile
	cmp #$f0 ;keep
	bne check_collisions_casenext299
	; LineNumber: 631
	; LineNumber: 632
	
; // Truck!
	jsr kill_frog
	; LineNumber: 633
	jmp check_collisions_caseend212
check_collisions_casenext299
	lda next_tile
	cmp #$d7 ;keep
	bne check_collisions_casenext301
	; LineNumber: 636
	; LineNumber: 637
	jsr kill_frog
	; LineNumber: 638
	jmp check_collisions_caseend212
check_collisions_casenext301
	lda next_tile
	cmp #$ed ;keep
	bne check_collisions_casenext303
	; LineNumber: 641
	; LineNumber: 642
	jsr kill_frog
	; LineNumber: 644
	jmp check_collisions_caseend212
check_collisions_casenext303
	lda next_tile
	cmp #$ee ;keep
	bne check_collisions_casenext305
	; LineNumber: 646
	; LineNumber: 647
	jsr kill_frog
	; LineNumber: 649
	jmp check_collisions_caseend212
check_collisions_casenext305
	lda next_tile
	cmp #$fd ;keep
	bne check_collisions_casenext307
	; LineNumber: 652
	; LineNumber: 653
	jsr kill_frog
	; LineNumber: 655
	jmp check_collisions_caseend212
check_collisions_casenext307
	lda next_tile
	cmp #$60 ;keep
	bne check_collisions_casenext309
	; LineNumber: 658
	; LineNumber: 659
	jsr kill_frog
	; LineNumber: 661
	jmp check_collisions_caseend212
check_collisions_casenext309
	lda next_tile
	cmp #$f3 ;keep
	bne check_collisions_casenext311
	; LineNumber: 664
	; LineNumber: 665
	jsr kill_frog
	; LineNumber: 667
	jmp check_collisions_caseend212
check_collisions_casenext311
	lda next_tile
	cmp #$eb ;keep
	bne check_collisions_casenext313
	; LineNumber: 670
	; LineNumber: 671
	jsr kill_frog
	; LineNumber: 673
	jmp check_collisions_caseend212
check_collisions_casenext313
	lda next_tile
	cmp #$c6 ;keep
	bne check_collisions_casenext315
	; LineNumber: 677
	; LineNumber: 678
	
; // Crock!
	jsr kill_frog
	; LineNumber: 680
	jmp check_collisions_caseend212
check_collisions_casenext315
	lda next_tile
	cmp #$a2 ;keep
	bne check_collisions_casenext317
	; LineNumber: 683
	; LineNumber: 684
	jsr kill_frog
	; LineNumber: 685
	jmp check_collisions_caseend212
check_collisions_casenext317
	lda next_tile
	cmp #$d6 ;keep
	bne check_collisions_casenext319
	; LineNumber: 690
	; LineNumber: 691
	
; // HOME
; // Occupied
	; Assigning single variable : frog_x
	lda frog_old_x
	; Calling storevariable
	sta frog_x
	; LineNumber: 692
	; Assigning single variable : frog_y
	lda frog_old_y
	; Calling storevariable
	sta frog_y
	; LineNumber: 693
	jmp check_collisions_caseend212
check_collisions_casenext319
	lda next_tile
	cmp #$d3 ;keep
	bne check_collisions_casenext321
	; LineNumber: 696
	; LineNumber: 697
	; Binary clause Simplified: NOTEQUALS
	lda frog_x
	; Compare with pure num / var optimization
	cmp frog_old_x;keep
	beq check_collisions_localfailed329
	jmp check_collisions_ConditionalTrueBlock324
check_collisions_localfailed329: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda frog_y
	; Compare with pure num / var optimization
	cmp frog_old_y;keep
	beq check_collisions_elsedoneblock326
check_collisions_ConditionalTrueBlock324: ;Main true block ;keep 
	; LineNumber: 698
	; LineNumber: 699
	
; // Success
	; Assigning single variable : player_score
	ldy #0
	lda player_score
	clc
	adc #$64
	sta player_score+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc check_collisions_WordAdd331
	inc player_score+1
check_collisions_WordAdd331
	; LineNumber: 700
	jsr ping
	; LineNumber: 701
	; Assigning single variable : frog_x
	lda #$14
	; Calling storevariable
	sta frog_x
	; LineNumber: 702
	; Assigning single variable : frog_y
	lda #$18
	; Calling storevariable
	sta frog_y
	; LineNumber: 703
	; Assigning single variable : frog_old_x
	lda frog_x
	; Calling storevariable
	sta frog_old_x
	; LineNumber: 704
	; Assigning single variable : frog_old_y
	lda frog_y
	; Calling storevariable
	sta frog_old_y
	; LineNumber: 705
check_collisions_elsedoneblock326
	; LineNumber: 706
	jmp check_collisions_caseend212
check_collisions_casenext321
	; LineNumber: 710
	; LineNumber: 712
	; Binary clause Simplified: NOTEQUALS
	lda KEYPRESS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq check_collisions_elsedoneblock336
check_collisions_ConditionalTrueBlock334: ;Main true block ;keep 
	; LineNumber: 713
	; LineNumber: 714
	
; // None of the cases were valid so go ahead
	inc player_score
	bne check_collisions_incdec340
	inc player_score +1
check_collisions_incdec340
	; LineNumber: 715
check_collisions_elsedoneblock336
	; LineNumber: 716
check_collisions_caseend212
	; LineNumber: 717
	rts
	; === main logic ============================================================================================ 
	; NodeProcedureDecl -1
	; ***********  Defining procedure : game_loop
	;    Procedure type : User-defined procedure
	; LineNumber: 727
game_loop
	; LineNumber: 730
game_loop_while342
game_loop_loopstart346
	; Binary clause Simplified: EQUALS
	lda ALIVE
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne game_loop_localfailed461
game_loop_localsuccess462: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda WON_GAME
	; Compare with pure num / var optimization
	cmp #$0;keep
	bne game_loop_localfailed461
	jmp game_loop_ConditionalTrueBlock343
game_loop_localfailed461
	jmp game_loop_elsedoneblock345
game_loop_ConditionalTrueBlock343: ;Main true block ;keep 
	; LineNumber: 731
	; LineNumber: 732
	; Assigning single variable : frog_old_x
	lda frog_x
	; Calling storevariable
	sta frog_old_x
	; LineNumber: 733
	; Assigning single variable : frog_old_y
	lda frog_y
	; Calling storevariable
	sta frog_old_y
	; LineNumber: 734
	; Assigning single variable : KEYPRESS
	jsr getkey
	; Calling storevariable
	sta KEYPRESS
	; LineNumber: 739
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$b8;keep
	bne game_loop_elsedoneblock467
game_loop_ConditionalTrueBlock465: ;Main true block ;keep 
	; LineNumber: 740
	; LineNumber: 741
	; Binary clause Simplified: GREATEREQUAL
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$2;keep
	bcc game_loop_elsedoneblock481
game_loop_ConditionalTrueBlock479: ;Main true block ;keep 
	; LineNumber: 742
	; LineNumber: 743
	
; // Uncomment to show key that was pressed
; // textat(30,20, #KEYPRESS,1);
	dec frog_y
	; LineNumber: 744
game_loop_elsedoneblock481
	; LineNumber: 745
game_loop_elsedoneblock467
	; LineNumber: 747
	; Binary clause Simplified: EQUALS
	lda KEYPRESS
	; Compare with pure num / var optimization
	cmp #$b6;keep
	bne game_loop_elsedoneblock489
game_loop_ConditionalTrueBlock487: ;Main true block ;keep 
	; LineNumber: 748
	; LineNumber: 749
	; Binary clause Simplified: LESS
	lda frog_x
	; Compare with pure num / var optimization
	cmp #$27;keep
	bcs game_loop_elsedoneblock503
game_loop_ConditionalTrueBlock501: ;Main true block ;keep 
	; LineNumber: 750
	; LineNumber: 751
	inc frog_x
	; LineNumber: 752
game_loop_elsedoneblock503
	; LineNumber: 753
game_loop_elsedoneblock489
	; LineNumber: 755
	; Binary clause Simplified: EQUALS
	lda KEYPRESS
	; Compare with pure num / var optimization
	cmp #$b2;keep
	bne game_loop_localfailed521
	jmp game_loop_ConditionalTrueBlock509
game_loop_localfailed521: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda KEYPRESS
	; Compare with pure num / var optimization
	cmp #$b5;keep
	bne game_loop_elsedoneblock511
game_loop_ConditionalTrueBlock509: ;Main true block ;keep 
	; LineNumber: 756
	; LineNumber: 757
	; Binary clause Simplified: LESS
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$18;keep
	bcs game_loop_elsedoneblock526
game_loop_ConditionalTrueBlock524: ;Main true block ;keep 
	; LineNumber: 758
	; LineNumber: 759
	inc frog_y
	; LineNumber: 760
game_loop_elsedoneblock526
	; LineNumber: 761
game_loop_elsedoneblock511
	; LineNumber: 763
	; Binary clause Simplified: EQUALS
	lda KEYPRESS
	; Compare with pure num / var optimization
	cmp #$b4;keep
	bne game_loop_elsedoneblock534
game_loop_ConditionalTrueBlock532: ;Main true block ;keep 
	; LineNumber: 764
	; LineNumber: 765
	; Binary clause Simplified: GREATEREQUAL
	lda frog_x
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc game_loop_elsedoneblock548
game_loop_ConditionalTrueBlock546: ;Main true block ;keep 
	; LineNumber: 766
	; LineNumber: 767
	dec frog_x
	; LineNumber: 768
game_loop_elsedoneblock548
	; LineNumber: 769
game_loop_elsedoneblock534
	; LineNumber: 772
	
; // Show the obstacles in new positions
	jsr show_obstacles
	; LineNumber: 775
	
; // "Collision detection"
	jsr check_collisions
	; LineNumber: 778
	; Binary clause Simplified: LESS
	lda player_lives
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcs game_loop_elsedoneblock556
game_loop_ConditionalTrueBlock554: ;Main true block ;keep 
	; LineNumber: 779
	; LineNumber: 781
	
; // Still alive?
; // Dead and didn't win :(
	; Assigning single variable : ALIVE
	lda #$0
	; Calling storevariable
	sta ALIVE
	; LineNumber: 783
game_loop_elsedoneblock556
	; LineNumber: 788
	; Binary clause Simplified: NOTEQUALS
	lda frog_x
	; Compare with pure num / var optimization
	cmp frog_old_x;keep
	beq game_loop_localfailed564
	jmp game_loop_ConditionalTrueBlock560
game_loop_localfailed564: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda frog_y
	; Compare with pure num / var optimization
	cmp frog_old_y;keep
	beq game_loop_elsedoneblock562
game_loop_ConditionalTrueBlock560: ;Main true block ;keep 
	; LineNumber: 789
	; LineNumber: 790
	
; // only undraw if different
	; Assigning single variable : x
	lda frog_old_x
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda frog_old_y
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<previous_tile
	ldx #>previous_tile
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 791
	; Assigning single variable : previous_tile
	; Assigning single variable : sx
	lda frog_x
	; Calling storevariable
	sta sx
	; Assigning single variable : sy
	lda frog_y
	; Calling storevariable
	sta sy
	jsr getat
	; Calling storevariable
	sta previous_tile
	; LineNumber: 792
game_loop_elsedoneblock562
	; LineNumber: 795
	; Binary clause Simplified: GREATEREQUAL
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$b;keep
	bcc game_loop_elseblock568
game_loop_ConditionalTrueBlock567: ;Main true block ;keep 
	; LineNumber: 796
	; LineNumber: 797
	
; // draw the frog because things might have changed onscreen
	; Assigning single variable : x
	lda frog_x
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda frog_y
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<frogcharA
	ldx #>frogcharA
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 799
	jmp game_loop_elsedoneblock569
game_loop_elseblock568
	; LineNumber: 800
	; LineNumber: 801
	; Assigning single variable : x
	lda frog_x
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda frog_y
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<frogcharB
	ldx #>frogcharB
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 802
game_loop_elsedoneblock569
	; LineNumber: 807
	
; // Score and lives
	; MoveTo optimization
	lda #$09
	sta screenmemory
	lda #>$8000
	clc
	adc #$00
	sta screenmemory+1
	; LineNumber: 807
	; integer assignment NodeVar
	ldy player_score+1 ; Next one
	lda player_score
	sta ipd_div_lo
	sty ipd_div_hi
	ldy #$3 ; optimized, look out for bugs
game_loop_printdecimal574
	jsr init_printdecimal_div10 
	ora #$30
	sta (screenmemory),y
	dey
	bpl game_loop_printdecimal574
	; LineNumber: 809
	; MoveTo optimization
	lda #$24
	sta screenmemory
	lda #>$8000
	clc
	adc #$00
	sta screenmemory+1
	; LineNumber: 809
	ldy #0
	lda player_lives
	sta ipd_div_lo
	sty ipd_div_hi
	ldy #$1 ; optimized, look out for bugs
game_loop_printdecimal575
	jsr init_printdecimal_div10 
	ora #$30
	sta (screenmemory),y
	dey
	bpl game_loop_printdecimal575
	; LineNumber: 813
	
; // Crappy delay
	jsr shit_delay
	; LineNumber: 814
	jmp game_loop_while342
game_loop_elsedoneblock345
game_loop_loopend347
	; LineNumber: 816
	rts
block1
	; LineNumber: 818
	; LineNumber: 821
MainProgram_while576
MainProgram_loopstart580
	; Binary clause Simplified: NOTEQUALS
	lda #$1
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock579
MainProgram_ConditionalTrueBlock577: ;Main true block ;keep 
	; LineNumber: 822
	; LineNumber: 823
	jsr title_screen
	; LineNumber: 824
	jsr init_vars
	; LineNumber: 825
	jsr game_loop
	; LineNumber: 826
	jsr score_screen
	; LineNumber: 827
	jmp MainProgram_while576
MainProgram_elsedoneblock579
MainProgram_loopend581
	; LineNumber: 831
	; End of program
	; Ending memory block
EndBlock410
