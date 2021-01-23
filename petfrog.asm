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
	; LineNumber: 859
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
	dc.b	$12, $20, $20, 0
	; LineNumber: 30
score	
	dc.b	$20, $19, $0f, $15, $20, $13, $03, $0f, $12
	dc.b	$05, $04, $3a, 0
	; LineNumber: 31
space	
	dc.b	$10, $12, $05, $13, $13, $20, $13, $10, $01
	dc.b	$03, $05, $20, $14, $0f, $20, $03, $0f, $0e
	dc.b	$14, $09, $0e, $15, $05, 0
	; LineNumber: 34
ALIVE	dc.b	$01
	; LineNumber: 35
WON_GAME	dc.b	$00
	; LineNumber: 50
frogcharA	dc.b	$d6
	; LineNumber: 51
frogcharB	dc.b	$56
	; LineNumber: 52
frog_x	dc.b	$14
	; LineNumber: 52
frog_old_x	dc.b	$14
	; LineNumber: 53
frog_y	dc.b	$18
	; LineNumber: 53
frog_old_y	dc.b	$18
	; LineNumber: 54
previous_tile	dc.b	$20
	; LineNumber: 55
next_tile	dc.b	0
	; LineNumber: 56
player_lives	dc.b	$00
	; LineNumber: 57
player_score	dc.w	$00
	; LineNumber: 59
arr_crockr	dc.b $0c0, $0a2, $0dc, $0dc, $0dc, $0dc, $0dc, $062
	dc.b $079
	; LineNumber: 60
str_crockr	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 62
arr_crockl	dc.b $079, $062, $0dc, $0dc, $0dc, $0dc, $0dc, $0a2
	dc.b $0c0
	; LineNumber: 63
str_crockl	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 66
arr_logl	dc.b $0a8, $0a8, $0a8, $0a8, $0d1
	; LineNumber: 67
str_logl	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 69
arr_logr	dc.b $0d1, $0a9, $0a9, $0a9, $0a9
	; LineNumber: 70
str_logr	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 72
arr_turtles	dc.b $051, $051, $051, $051, $051
	; LineNumber: 73
str_turtles	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 75
arr_river_r	dc.b $06f, $064, $064, $06f, $064
	; LineNumber: 76
str_river_r	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 78
arr_river_l	dc.b $020, $064, $06f, $064, $064
	; LineNumber: 79
str_river_l	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 83
arr_carl	dc.b $0f0, $0cf, $0d0, $0e0
	; LineNumber: 84
str_cart	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 85
arr_carr	dc.b $0ed, $0d7, $0d7, $0a0
	; LineNumber: 86
str_carb	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 94
arr_truckb_r	dc.b $0a0, $0d7, $062, $0d7, $0f1, $0d7, $0fd, $0a0
	; LineNumber: 95
str_truckb_r	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 96
arr_truckt_r	dc.b $0e0, $060, $060, $060, $0fe, $0eb, $0ee, $0e0
	; LineNumber: 97
str_truckt_r	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 102
obstacles_y	dc.b $04, $05, $06, $07, $08, $0c, $0d, $0f
	dc.b $010, $012, $013, $015, $016
	; LineNumber: 103
strip_direction	dc.b $01, $00, $01, $00, $01, $01, $01, $01
	dc.b $01, $00, $00, $00, $00
	; LineNumber: 105
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
	; LineNumber: 108
obstacles_x_rl	dc.b	0
	; LineNumber: 108
obstacles_x_lr	dc.b	0
	; LineNumber: 112
logo	dc.b $072, $049, $070, $06e, $070, $072, $06e, $055
	dc.b $049, $020, $020, $020, $020, $06b, $04b, $06b
	dc.b $020, $020, $05d, $020, $06b, $055, $055, $049
	dc.b $055, $049, $071, $020, $06d, $07d, $020, $071
	dc.b $020, $04b, $071, $04a, $04b, $04a, $05d, $078
	dc.b $078, $078, $078, $078, $078, $078, $078, $078
	dc.b $078, $078, $04a, $04b
	; LineNumber: 120
title_screen_frog_pointer	= $02
	; LineNumber: 121
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
	; LineNumber: 149
rip	dc.b $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2
	dc.b $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2
	dc.b $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2
	dc.b $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2
	dc.b $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2
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
	dc.b $020, $020, $020, $020, $020, $020, $06c, $062
	dc.b $062, $07b, $020, $06c, $0a0, $0a0, $0a0, $0fc
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $06c, $0ec, $07e
	dc.b $07c, $0fb, $062, $0a0, $07e, $062, $07b, $0fb
	dc.b $061, $020, $020, $020, $020, $020, $020, $062
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0fc, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $0a0, $07f, $0a0
	dc.b $0a0, $07b, $0a0, $061, $0fe, $0a0, $0a0, $0e1
	dc.b $0a0, $020, $020, $020, $020, $06c, $0ec, $07e
	dc.b $062, $062, $07b, $020, $06c, $062, $07c, $0fc
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $0e1, $061, $0fe, $0ec
	dc.b $0e2, $0fc, $07c, $06c, $0ec, $062, $0fb, $061
	dc.b $0a0, $020, $020, $020, $020, $0ec, $0fe, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $062, $06c, $062, $07c
	dc.b $061, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $07c, $0fc, $0e1, $06c
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $061, $0fc
	dc.b $0e1, $0fc, $020, $020, $0e1, $07f, $0a0, $0ec
	dc.b $0fb, $0a0, $0a0, $0a0, $0a0, $07b, $062, $07b
	dc.b $0fb, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $06c, $061, $0a0, $0fe
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $061, $0a0, $07b, $020, $0a0, $0e1, $0a0, $06c
	dc.b $07b, $061, $0e1, $0a0, $0a0, $061, $07b, $0e2
	dc.b $0e1, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $0ec, $06c, $0a0, $0a0
	dc.b $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0a0, $0a0
	dc.b $0a0, $0e1, $061, $0a0, $061, $0a0, $061, $07c
	dc.b $06c, $07e, $0fe, $0a0, $0a0, $061, $0e2, $0e2
	dc.b $0e1, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $061, $0a0, $07e, $020
	dc.b $0e1, $061, $0fb, $020, $020, $020, $0e1, $0a0
	dc.b $0a0, $0e1, $0a0, $0a0, $07f, $0ec, $06c, $07b
	dc.b $0ec, $020, $0ec, $020, $0e1, $061, $0fb, $0fc
	dc.b $0e1, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $061, $0a0, $020, $020
	dc.b $07b, $0a0, $0fe, $07b, $0a0, $0fc, $07b, $0a0
	dc.b $061, $0a0, $0a0, $0a0, $0e1, $0a0, $0a0, $0fe
	dc.b $0a0, $0fe, $07e, $0fe, $020, $061, $07b, $0e2
	dc.b $0e1, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $0fc, $0fb, $062, $0fe
	dc.b $0fc, $0e1, $0a0, $061, $0a0, $0a0, $0a0, $0fe
	dc.b $06c, $0a0, $0a0, $061, $0fe, $0a0, $0a0, $0a0
	dc.b $0a0, $07e, $06c, $020, $0e1, $07e, $0fb, $061
	dc.b $0a0, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $0fb, $0ff, $0fb, $0a0
	dc.b $0a0, $062, $07c, $06c, $0a0, $0a0, $0a0, $07e
	dc.b $0fe, $0a0, $0a0, $07e, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0fc, $0a0, $0a0, $0a0, $0e1, $062, $020
	dc.b $0ec, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $0a0, $062, $07c
	dc.b $0e2, $0fb, $0a0, $0a0, $0a0, $0ec, $07e, $0fe
	dc.b $0a0, $0a0, $0a0, $0e1, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $06c, $07b, $0e1
	dc.b $061, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $07c, $0a0, $0a0
	dc.b $0a0, $0fc, $062, $062, $062, $062, $0a0, $0e2
	dc.b $0e2, $0fb, $0ec, $0ec, $020, $06c, $0fe, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0ec, $020, $07e, $0fe
	dc.b $07e, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $0a0, $0a0, $0fc
	dc.b $020, $020, $07e, $020, $020, $0fe, $020, $07c
	dc.b $0a0, $0ec, $0a0, $0a0, $061, $0fb, $061, $061
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $0a0, $07b, $020
	dc.b $06c, $0e1, $062, $0e1, $06c, $0e1, $061, $0fc
	dc.b $07c, $061, $07b, $0fb, $062, $07b, $06c, $0a0
	dc.b $0ec, $0e2, $0e2, $0a0, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $0a0, $0fc, $0e1
	dc.b $0e1, $07b, $0a0, $0fe, $0e1, $07c, $0fc, $0e1
	dc.b $0fc, $0fb, $0e1, $07b, $0fc, $0fe, $0e2, $06c
	dc.b $020, $062, $0fe, $07e, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $0a0, $0e1
	dc.b $0a0, $0a0, $0a0, $0a0, $0fe, $061, $0fb, $0e1
	dc.b $0a0, $061, $0e1, $061, $0e1, $07e, $06c, $061
	dc.b $0fe, $07e, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $0fc, $0fe
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0fe, $0a0, $0a0, $0fc, $0a0, $0fc
	dc.b $061, $020, $020, $020, $020, $020, $020, $020
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
	; LineNumber: 178
petscii_pointer	=    $04
	; LineNumber: 212
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
	; LineNumber: 247
cls
	; LineNumber: 248
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
	; LineNumber: 249
	; MoveTo optimization
	lda #$00
	sta screenmemory
	lda #>$8000
	clc
	adc #$00
	sta screenmemory+1
	; LineNumber: 250
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : getkey
	;    Procedure type : User-defined procedure
	; LineNumber: 255
getkey
	; LineNumber: 258
	; LineNumber: 259
	; Peek
	lda $97 + $0
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : sleep_delay
	;    Procedure type : User-defined procedure
	; LineNumber: 277
	; LineNumber: 276
temp_delay	dc.b	0
sleep_delay_block7
sleep_delay
	; LineNumber: 283
	; Assigning single variable : temp_delay
	lda #$1
	; Calling storevariable
	sta temp_delay
sleep_delay_forloop8
	; LineNumber: 279
	; LineNumber: 280
sleep_delay_while23
sleep_delay_loopstart27
	; Binary clause Simplified: EQUALS
	lda ti
	; Compare with pure num / var optimization
	cmp oldti;keep
	bne sleep_delay_elsedoneblock26
sleep_delay_ConditionalTrueBlock24: ;Main true block ;keep 
	; LineNumber: 279
	; LineNumber: 280
	jmp sleep_delay_while23
sleep_delay_elsedoneblock26
sleep_delay_loopend28
	; LineNumber: 281
	; Assigning single variable : oldti
	lda ti
	; Calling storevariable
	sta oldti
	; LineNumber: 282
sleep_delay_forloopcounter10
sleep_delay_loopstart11
	; Compare is onpage
	inc temp_delay
	lda GAME_SPEED
	cmp temp_delay ;keep
	bcs sleep_delay_forloop8
sleep_delay_loopdone31: ;keep
sleep_delay_forloopend9
sleep_delay_loopend12
	; LineNumber: 283
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : getat
	;    Procedure type : User-defined procedure
	; LineNumber: 289
	; LineNumber: 287
szp	=    $08
	; LineNumber: 285
sx	dc.b	0
	; LineNumber: 285
sy	dc.b	0
getat_block32
getat
	; LineNumber: 290
	; Assigning single variable : szp
	; Generic 16 bit op
	ldy #0
	lda sx
getat_rightvarInteger_var35 = $54
	sta getat_rightvarInteger_var35
	sty getat_rightvarInteger_var35+1
	; Generic 16 bit op
	; Integer constant assigning
	ldy #$80
	lda #$00
getat_rightvarInteger_var38 =    $56
	sta getat_rightvarInteger_var38
	sty getat_rightvarInteger_var38+1
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
	adc getat_rightvarInteger_var38
getat_wordAdd36
	sta getat_rightvarInteger_var38
	; High-bit binop
	tya
	adc getat_rightvarInteger_var38+1
	tay
	lda getat_rightvarInteger_var38
	; Low bit binop:
	clc
	adc getat_rightvarInteger_var35
getat_wordAdd33
	sta getat_rightvarInteger_var35
	; High-bit binop
	tya
	adc getat_rightvarInteger_var35+1
	tay
	lda getat_rightvarInteger_var35
	sta szp
	sty szp+1
	; LineNumber: 291
	; LineNumber: 292
	; Load pointer array
	ldy #$0
	lda (szp),y
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : textat
	;    Procedure type : User-defined procedure
	; LineNumber: 298
	; LineNumber: 296
zp	=    $08
	; LineNumber: 294
x	dc.b	0
	; LineNumber: 294
y	dc.b	0
	; LineNumber: 294
this_str	=    $16
	; LineNumber: 294
str_len	dc.b	0
textat_block39
textat
	; LineNumber: 299
	; Assigning single variable : zp
	; Generic 16 bit op
	ldy #0
	lda x
textat_rightvarInteger_var42 = $54
	sta textat_rightvarInteger_var42
	sty textat_rightvarInteger_var42+1
	; Generic 16 bit op
	; Integer constant assigning
	ldy #$80
	lda #$00
textat_rightvarInteger_var45 =    $56
	sta textat_rightvarInteger_var45
	sty textat_rightvarInteger_var45+1
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
	adc textat_rightvarInteger_var45
textat_wordAdd43
	sta textat_rightvarInteger_var45
	; High-bit binop
	tya
	adc textat_rightvarInteger_var45+1
	tay
	lda textat_rightvarInteger_var45
	; Low bit binop:
	clc
	adc textat_rightvarInteger_var42
textat_wordAdd40
	sta textat_rightvarInteger_var42
	; High-bit binop
	tya
	adc textat_rightvarInteger_var42+1
	tay
	lda textat_rightvarInteger_var42
	sta zp
	sty zp+1
	; LineNumber: 299
	; memcpyfast
	ldy str_len
	dey
textat_memcpy46
	lda (this_str),y
	sta (zp),y
	dey
	bpl textat_memcpy46
	; LineNumber: 301
	rts
	
; // =========================================
; // SOUND!
	; NodeProcedureDecl -1
	; ***********  Defining procedure : PlayNote
	;    Procedure type : User-defined procedure
	; LineNumber: 320
	; LineNumber: 319
note_duration	dc.b	0
	; LineNumber: 317
note	dc.b	0
	; LineNumber: 317
note_len	dc.b	0
PlayNote_block47
PlayNote
	; LineNumber: 321
	; Binary clause Simplified: EQUALS
	lda PLAY_SOUND
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne PlayNote_elsedoneblock51
PlayNote_ConditionalTrueBlock49: ;Main true block ;keep 
	; LineNumber: 322
	; LineNumber: 323
	; Assigning memory location
	; Assigning single variable : $e848
	lda note
	; Calling storevariable
	sta $e848
	; LineNumber: 325
	; Assigning single variable : note_duration
	lda #$0
	; Calling storevariable
	sta note_duration
PlayNote_forloop62
	; LineNumber: 323
	; Wait
	ldx #$c8 ; optimized, look out for bugs
	dex
	bne *-1
PlayNote_forloopcounter64
PlayNote_loopstart65
	; Compare is onpage
	inc note_duration
	lda note_len
	cmp note_duration ;keep
	bne PlayNote_forloop62
PlayNote_loopdone69: ;keep
PlayNote_forloopend63
PlayNote_loopend66
	; LineNumber: 325
PlayNote_elsedoneblock51
	; LineNumber: 326
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : burp
	;    Procedure type : User-defined procedure
	; LineNumber: 329
burp
	; LineNumber: 330
	; Assigning memory location
	; Assigning single variable : $e84a
	lda #$f
	; Calling storevariable
	sta $e84a
	; LineNumber: 331
	; Assigning memory location
	; Assigning single variable : $e84b
	lda #$10
	; Calling storevariable
	sta $e84b
	; LineNumber: 332
	; Assigning single variable : note
	lda #$ee
	; Calling storevariable
	sta note
	; Assigning single variable : note_len
	lda #$ff
	; Calling storevariable
	sta note_len
	jsr PlayNote
	; LineNumber: 333
	; Assigning memory location
	; Assigning single variable : $e84b
	lda #$0
	; Calling storevariable
	sta $e84b
	; LineNumber: 334
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : ping
	;    Procedure type : User-defined procedure
	; LineNumber: 337
ping
	; LineNumber: 338
	; Assigning memory location
	; Assigning single variable : $e84a
	lda #$55
	; Calling storevariable
	sta $e84a
	; LineNumber: 339
	; Assigning memory location
	; Assigning single variable : $e84b
	lda #$10
	; Calling storevariable
	sta $e84b
	; LineNumber: 340
	; Assigning single variable : note
	lda #$ee
	; Calling storevariable
	sta note
	; Assigning single variable : note_len
	lda #$c8
	; Calling storevariable
	sta note_len
	jsr PlayNote
	; LineNumber: 341
	; Assigning single variable : note
	lda #$fb
	; Calling storevariable
	sta note
	; Assigning single variable : note_len
	lda #$c8
	; Calling storevariable
	sta note_len
	jsr PlayNote
	; LineNumber: 342
	; Assigning single variable : note
	lda #$d2
	; Calling storevariable
	sta note
	; Assigning single variable : note_len
	lda #$ff
	; Calling storevariable
	sta note_len
	jsr PlayNote
	; LineNumber: 343
	; Assigning single variable : note
	lda #$d2
	; Calling storevariable
	sta note
	; Assigning single variable : note_len
	lda #$ff
	; Calling storevariable
	sta note_len
	jsr PlayNote
	; LineNumber: 344
	; Assigning memory location
	; Assigning single variable : $e84b
	lda #$0
	; Calling storevariable
	sta $e84b
	; LineNumber: 345
	rts
	
; // =========================================
	; NodeProcedureDecl -1
	; ***********  Defining procedure : title_screen
	;    Procedure type : User-defined procedure
	; LineNumber: 350
title_screen
	; LineNumber: 353
	
; // Set up pointer to array:
	; Assigning single variable : title_screen_frog_pointer
	lda #<title_screen_frog
	ldx #>title_screen_frog
	sta title_screen_frog_pointer
	stx title_screen_frog_pointer+1
	; LineNumber: 355
	jsr cls
	; LineNumber: 358
	
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
title_screen_outer73
	ldy #0
title_screen_inner74
	lda ($4c),y
	sta ($4e),y
	dey
	bne title_screen_inner74
	inc $4c+1
	inc $4e+1
	dex
	bne title_screen_outer73
	ldy #0
title_screen_final75
	lda ($4c),y
	sta ($4e),y
	iny
	cpy #232
	bne title_screen_final75
	; LineNumber: 359
	; memcpyfast
	ldx #12
title_screen_memcpy76
	lda logo+ $00,x
	sta $8000,x
	dex
	bpl title_screen_memcpy76
	; LineNumber: 360
	; memcpyfast
	ldx #12
title_screen_memcpy77
	lda logo+ $0d,x
	sta $8028,x
	dex
	bpl title_screen_memcpy77
	; LineNumber: 361
	; memcpyfast
	ldx #12
title_screen_memcpy78
	lda logo+ $1a,x
	sta $8050,x
	dex
	bpl title_screen_memcpy78
	; LineNumber: 362
	; memcpyfast
	ldx #12
title_screen_memcpy79
	lda logo+ $27,x
	sta $8078,x
	dex
	bpl title_screen_memcpy79
	; LineNumber: 365
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
	; LineNumber: 366
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
	; LineNumber: 367
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
	; LineNumber: 371
title_screen_while80
title_screen_loopstart84
	; Binary clause Simplified: NOTEQUALS
	jsr getkey
	; Compare with pure num / var optimization
	cmp #$20;keep
	beq title_screen_elsedoneblock83
title_screen_ConditionalTrueBlock81: ;Main true block ;keep 
	; LineNumber: 372
	; LineNumber: 373
	; Assigning single variable : x
	lda #$4
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
	lda #$17
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 374
	jsr sleep_delay
	; LineNumber: 375
	; Assigning single variable : x
	lda #$4
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$18
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<title_screen_stringassignstr90
	sta this_str
	lda #>title_screen_stringassignstr90
	sta this_str+1
	; Assigning single variable : str_len
	lda #$17
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 376
	jsr sleep_delay
	; LineNumber: 377
	jmp title_screen_while80
title_screen_elsedoneblock83
title_screen_loopend85
	; LineNumber: 379
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : score_screen
	;    Procedure type : User-defined procedure
	; LineNumber: 382
score_screen
	; LineNumber: 383
	jsr cls
	; LineNumber: 385
	; Binary clause Simplified: EQUALS
	lda WON_GAME
	; Compare with pure num / var optimization
	cmp #$0;keep
	bne score_screen_elsedoneblock96
score_screen_ConditionalTrueBlock94: ;Main true block ;keep 
	; LineNumber: 385
	; LineNumber: 387
	; Assigning single variable : petscii_pointer
	lda #<rip
	ldx #>rip
	sta petscii_pointer
	stx petscii_pointer+1
	; LineNumber: 388
	; Copy full screen
	sta $4c
	lda petscii_pointer+1
	sta $4c+1
	lda #$00
	sta $4e
	lda #$80
	sta $4e+1
	; CopyFullscreen with pointers
	ldx #3
score_screen_outer102
	ldy #0
score_screen_inner103
	lda ($4c),y
	sta ($4e),y
	dey
	bne score_screen_inner103
	inc $4c+1
	inc $4e+1
	dex
	bne score_screen_outer102
	ldy #0
score_screen_final104
	lda ($4c),y
	sta ($4e),y
	iny
	cpy #232
	bne score_screen_final104
	; LineNumber: 389
score_screen_elsedoneblock96
	; LineNumber: 390
	; memcpyfast
	ldx #12
score_screen_memcpy105
	lda logo+ $00,x
	sta $8000,x
	dex
	bpl score_screen_memcpy105
	; LineNumber: 391
	; memcpyfast
	ldx #12
score_screen_memcpy106
	lda logo+ $0d,x
	sta $8028,x
	dex
	bpl score_screen_memcpy106
	; LineNumber: 392
	; memcpyfast
	ldx #12
score_screen_memcpy107
	lda logo+ $1a,x
	sta $8050,x
	dex
	bpl score_screen_memcpy107
	; LineNumber: 393
	; memcpyfast
	ldx #12
score_screen_memcpy108
	lda logo+ $27,x
	sta $8078,x
	dex
	bpl score_screen_memcpy108
	; LineNumber: 396
	; MoveTo optimization
	lda #$0d
	sta screenmemory
	lda #>$8000
	clc
	adc #$00
	sta screenmemory+1
	; LineNumber: 397
	clc
	lda #<over
	adc #$0
	ldy #>over
	sta print_text+0
	sty print_text+1
	ldx #$d ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 399
	; MoveTo optimization
	lda #$5d
	sta screenmemory
	lda #>$8000
	clc
	adc #$00
	sta screenmemory+1
	; LineNumber: 400
	clc
	lda #<score
	adc #$0
	ldy #>score
	sta print_text+0
	sty print_text+1
	ldx #$d ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 402
	; MoveTo optimization
	lda #$69
	sta screenmemory
	lda #>$8000
	clc
	adc #$00
	sta screenmemory+1
	; LineNumber: 402
	; integer assignment NodeVar
	ldy player_score+1 ; Next one
	lda player_score
	sta ipd_div_lo
	sty ipd_div_hi
	ldy #$3 ; optimized, look out for bugs
score_screen_printdecimal113
	jsr init_printdecimal_div10 
	ora #$30
	sta (screenmemory),y
	dey
	bpl score_screen_printdecimal113
	; LineNumber: 406
score_screen_while114
score_screen_loopstart118
	; Binary clause Simplified: NOTEQUALS
	jsr getkey
	; Compare with pure num / var optimization
	cmp #$20;keep
	beq score_screen_elsedoneblock117
score_screen_ConditionalTrueBlock115: ;Main true block ;keep 
	; LineNumber: 407
	; LineNumber: 408
	; Assigning single variable : x
	lda #$e
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
	lda #$17
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 409
	jsr sleep_delay
	; LineNumber: 410
	; Assigning single variable : x
	lda #$e
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$18
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<score_screen_stringassignstr124
	sta this_str
	lda #>score_screen_stringassignstr124
	sta this_str+1
	; Assigning single variable : str_len
	lda #$17
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 411
	jsr sleep_delay
	; LineNumber: 412
	jmp score_screen_while114
score_screen_elsedoneblock117
score_screen_loopend119
	; LineNumber: 414
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : sprite_xy
	;    Procedure type : User-defined procedure
	; LineNumber: 420
	; LineNumber: 418
spr_p	=    $08
	; LineNumber: 416
spr_x	dc.b	0
	; LineNumber: 416
spr_y	dc.b	0
	; LineNumber: 416
source_str	=    $16
	; LineNumber: 416
spr_len	dc.b	0
sprite_xy_block126
sprite_xy
	; LineNumber: 421
	; Assigning single variable : spr_p
	; Generic 16 bit op
	ldy #0
	lda spr_x
sprite_xy_rightvarInteger_var129 = $54
	sta sprite_xy_rightvarInteger_var129
	sty sprite_xy_rightvarInteger_var129+1
	; Generic 16 bit op
	lda #<level_strips
	ldy #>level_strips
sprite_xy_rightvarInteger_var132 =    $56
	sta sprite_xy_rightvarInteger_var132
	sty sprite_xy_rightvarInteger_var132+1
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
	adc sprite_xy_rightvarInteger_var132
sprite_xy_wordAdd130
	sta sprite_xy_rightvarInteger_var132
	; High-bit binop
	tya
	adc sprite_xy_rightvarInteger_var132+1
	tay
	lda sprite_xy_rightvarInteger_var132
	; Low bit binop:
	clc
	adc sprite_xy_rightvarInteger_var129
sprite_xy_wordAdd127
	sta sprite_xy_rightvarInteger_var129
	; High-bit binop
	tya
	adc sprite_xy_rightvarInteger_var129+1
	tay
	lda sprite_xy_rightvarInteger_var129
	sta spr_p
	sty spr_p+1
	; LineNumber: 421
	; memcpyfast
	ldy spr_len
	dey
sprite_xy_memcpy133
	lda (source_str),y
	sta (spr_p),y
	dey
	bpl sprite_xy_memcpy133
	; LineNumber: 423
	; Assigning single variable : spr_p
	; Generic 16 bit op
	ldy #0
	lda #$28
sprite_xy_rightvarInteger_var136 = $54
	sta sprite_xy_rightvarInteger_var136
	sty sprite_xy_rightvarInteger_var136+1
	; Generic 16 bit op
	ldy #0
	lda spr_x
sprite_xy_rightvarInteger_var139 =    $56
	sta sprite_xy_rightvarInteger_var139
	sty sprite_xy_rightvarInteger_var139+1
	; Generic 16 bit op
	lda #<level_strips
	ldy #>level_strips
sprite_xy_rightvarInteger_var142 =    $58
	sta sprite_xy_rightvarInteger_var142
	sty sprite_xy_rightvarInteger_var142+1
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
	adc sprite_xy_rightvarInteger_var142
sprite_xy_wordAdd140
	sta sprite_xy_rightvarInteger_var142
	; High-bit binop
	tya
	adc sprite_xy_rightvarInteger_var142+1
	tay
	lda sprite_xy_rightvarInteger_var142
	; Low bit binop:
	clc
	adc sprite_xy_rightvarInteger_var139
sprite_xy_wordAdd137
	sta sprite_xy_rightvarInteger_var139
	; High-bit binop
	tya
	adc sprite_xy_rightvarInteger_var139+1
	tay
	lda sprite_xy_rightvarInteger_var139
	; Low bit binop:
	clc
	adc sprite_xy_rightvarInteger_var136
sprite_xy_wordAdd134
	sta sprite_xy_rightvarInteger_var136
	; High-bit binop
	tya
	adc sprite_xy_rightvarInteger_var136+1
	tay
	lda sprite_xy_rightvarInteger_var136
	sta spr_p
	sty spr_p+1
	; LineNumber: 423
	; memcpyfast
	ldy spr_len
	dey
sprite_xy_memcpy143
	lda (source_str),y
	sta (spr_p),y
	dey
	bpl sprite_xy_memcpy143
	; LineNumber: 425
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : init_vars
	;    Procedure type : User-defined procedure
	; LineNumber: 432
	; LineNumber: 429
this_row	=    $08
	; LineNumber: 429
target_strip	=    $16
	; LineNumber: 430
iteration	dc.b	0
	; LineNumber: 431
homeplate	dc.b	$d3
init_vars_block144
init_vars
	; LineNumber: 433
	jsr cls
	; LineNumber: 436
	
; // Init the playfield
	; Assigning single variable : screenmemory
	lda #$00
	ldx #$80
	sta screenmemory
	stx screenmemory+1
	; LineNumber: 437
	; Assigning single variable : petscii_pointer
	lda #<level2
	ldx #>level2
	sta petscii_pointer
	stx petscii_pointer+1
	; LineNumber: 438
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
init_vars_outer145
	ldy #0
init_vars_inner146
	lda ($4c),y
	sta ($4e),y
	dey
	bne init_vars_inner146
	inc $4c+1
	inc $4e+1
	dex
	bne init_vars_outer145
	ldy #0
init_vars_final147
	lda ($4c),y
	sta ($4e),y
	iny
	cpy #232
	bne init_vars_final147
	; LineNumber: 439
	; Assigning single variable : this_row
	lda petscii_pointer
	ldx petscii_pointer+1
	sta this_row
	stx this_row+1
	; LineNumber: 440
	; Assigning single variable : target_strip
	lda #<level_strips
	ldx #>level_strips
	sta target_strip
	stx target_strip+1
	; LineNumber: 454
	; Assigning single variable : iteration
	lda #$1
	; Calling storevariable
	sta iteration
init_vars_forloop148
	; LineNumber: 444
	; LineNumber: 446
	
; // Obstacle Blanks
; // Copy the source twice
	; memcpyfast
	ldy #39
init_vars_memcpy160
	lda (this_row),y
	sta (target_strip),y
	dey
	bpl init_vars_memcpy160
	; LineNumber: 447
	; Assigning single variable : target_strip
	lda target_strip
	clc
	adc #$28
	sta target_strip+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc init_vars_WordAdd161
	inc target_strip+1
init_vars_WordAdd161
	; LineNumber: 448
	; memcpyfast
	ldy #39
init_vars_memcpy162
	lda (this_row),y
	sta (target_strip),y
	dey
	bpl init_vars_memcpy162
	; LineNumber: 449
	; Assigning single variable : target_strip
	lda target_strip
	clc
	adc #$28
	sta target_strip+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc init_vars_WordAdd163
	inc target_strip+1
init_vars_WordAdd163
	; LineNumber: 452
	
; // Next row
	; Assigning single variable : this_row
	lda this_row
	clc
	adc #$28
	sta this_row+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc init_vars_WordAdd164
	inc this_row+1
init_vars_WordAdd164
	; LineNumber: 453
init_vars_forloopcounter150
init_vars_loopstart151
	; Compare is onpage
	inc iteration
	lda #$19
	cmp iteration ;keep
	bcs init_vars_forloop148
init_vars_loopdone165: ;keep
init_vars_forloopend149
init_vars_loopend152
	; LineNumber: 456
	
; // Init the "sprites"
	; memcpy
	ldx #0
init_vars_memcpy166
	lda arr_crockr+ $00,x
	sta str_crockr,x
	inx
	cpx #$9
	bne init_vars_memcpy166
	; LineNumber: 457
	; memcpy
	ldx #0
init_vars_memcpy167
	lda arr_crockl+ $00,x
	sta str_crockl,x
	inx
	cpx #$9
	bne init_vars_memcpy167
	; LineNumber: 458
	; memcpy
	ldx #0
init_vars_memcpy168
	lda arr_logl+ $00,x
	sta str_logl,x
	inx
	cpx #$5
	bne init_vars_memcpy168
	; LineNumber: 459
	; memcpy
	ldx #0
init_vars_memcpy169
	lda arr_logr+ $00,x
	sta str_logr,x
	inx
	cpx #$5
	bne init_vars_memcpy169
	; LineNumber: 460
	; memcpy
	ldx #0
init_vars_memcpy170
	lda arr_turtles+ $00,x
	sta str_turtles,x
	inx
	cpx #$5
	bne init_vars_memcpy170
	; LineNumber: 461
	; memcpy
	ldx #0
init_vars_memcpy171
	lda arr_river_r+ $00,x
	sta str_river_r,x
	inx
	cpx #$5
	bne init_vars_memcpy171
	; LineNumber: 462
	; memcpy
	ldx #0
init_vars_memcpy172
	lda arr_river_l+ $00,x
	sta str_river_l,x
	inx
	cpx #$5
	bne init_vars_memcpy172
	; LineNumber: 464
	; memcpy
	ldx #0
init_vars_memcpy173
	lda arr_truckt_r+ $00,x
	sta str_truckt_r,x
	inx
	cpx #$8
	bne init_vars_memcpy173
	; LineNumber: 465
	; memcpy
	ldx #0
init_vars_memcpy174
	lda arr_truckb_r+ $00,x
	sta str_truckb_r,x
	inx
	cpx #$8
	bne init_vars_memcpy174
	; LineNumber: 466
	; memcpy
	ldx #0
init_vars_memcpy175
	lda arr_carl+ $00,x
	sta str_cart,x
	inx
	cpx #$4
	bne init_vars_memcpy175
	; LineNumber: 467
	; memcpy
	ldx #0
init_vars_memcpy176
	lda arr_carr+ $00,x
	sta str_carb,x
	inx
	cpx #$4
	bne init_vars_memcpy176
	; LineNumber: 471
	
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
	; LineNumber: 472
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
	; LineNumber: 474
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
	; LineNumber: 475
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
	; LineNumber: 477
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
	; LineNumber: 478
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
	; LineNumber: 480
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
	; LineNumber: 481
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
	; LineNumber: 483
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
	; LineNumber: 484
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
	; LineNumber: 485
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
	; LineNumber: 487
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
	; LineNumber: 488
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
	; LineNumber: 489
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
	; LineNumber: 490
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
	; LineNumber: 491
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
	; LineNumber: 492
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
	; LineNumber: 493
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
	; LineNumber: 494
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
	; LineNumber: 497
	; Assigning single variable : frog_x
	lda #$14
	; Calling storevariable
	sta frog_x
	; LineNumber: 498
	; Assigning single variable : frog_y
	lda #$18
	; Calling storevariable
	sta frog_y
	; LineNumber: 500
	; Assigning single variable : KEYPRESS
	lda #$0
	; Calling storevariable
	sta KEYPRESS
	; LineNumber: 501
	; Assigning single variable : ALIVE
	lda #$1
	; Calling storevariable
	sta ALIVE
	; LineNumber: 502
	; Assigning single variable : WON_GAME
	lda #$0
	; Calling storevariable
	sta WON_GAME
	; LineNumber: 504
	; Assigning single variable : player_lives
	lda #$3
	; Calling storevariable
	sta player_lives
	; LineNumber: 505
	; Assigning single variable : player_score
	ldy #0
	lda #$0
	; Calling storevariable
	sta player_score
	sty player_score+1
	; LineNumber: 508
	
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
	; LineNumber: 509
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
	; LineNumber: 510
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
	; LineNumber: 511
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
	; LineNumber: 512
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
	; LineNumber: 513
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
	; LineNumber: 514
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : show_obstacles
	;    Procedure type : User-defined procedure
	; LineNumber: 522
	; LineNumber: 520
strip_num	dc.b	0
	; LineNumber: 520
this_strip	dc.b	0
	; LineNumber: 521
this_source_offset	=    $08
show_obstacles_block177
show_obstacles
	; LineNumber: 526
	
; // TRSE way of incrementing 
; // counter with loop back to 0
	inc obstacles_x_rl
	lda obstacles_x_rl
	cmp #$27 ; keep
	bne show_obstacles_incmax179
	lda #$0
	sta obstacles_x_rl
show_obstacles_incmax179
	; LineNumber: 527
	; Assigning single variable : obstacles_x_lr
	; 8 bit binop
	; Add/sub where right value is constant number
	lda #$28
	sec
	sbc obstacles_x_rl
	 ; end add / sub var with constant
	; Calling storevariable
	sta obstacles_x_lr
	; LineNumber: 547
	; Assigning single variable : strip_num
	lda #$0
	; Calling storevariable
	sta strip_num
show_obstacles_forloop180
	; LineNumber: 530
	; LineNumber: 531
	; Assigning single variable : this_strip
	; Load Byte array
	ldx strip_num
	lda obstacles_y,x
	; Calling storevariable
	sta this_strip
	; LineNumber: 532
	; Assigning single variable : screenmemory
	; Generic 16 bit op
	; Integer constant assigning
	ldy #$80
	lda #$00
show_obstacles_rightvarInteger_var208 = $54
	sta show_obstacles_rightvarInteger_var208
	sty show_obstacles_rightvarInteger_var208+1
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
	adc show_obstacles_rightvarInteger_var208
show_obstacles_wordAdd206
	sta show_obstacles_rightvarInteger_var208
	; High-bit binop
	tya
	adc show_obstacles_rightvarInteger_var208+1
	tay
	lda show_obstacles_rightvarInteger_var208
	sta screenmemory
	sty screenmemory+1
	; LineNumber: 534
	; Assigning single variable : this_source_offset
	; Generic 16 bit op
	lda #<level_strips
	ldy #>level_strips
show_obstacles_rightvarInteger_var211 = $54
	sta show_obstacles_rightvarInteger_var211
	sty show_obstacles_rightvarInteger_var211+1
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
	adc show_obstacles_rightvarInteger_var211
show_obstacles_wordAdd209
	sta show_obstacles_rightvarInteger_var211
	; High-bit binop
	tya
	adc show_obstacles_rightvarInteger_var211+1
	tay
	lda show_obstacles_rightvarInteger_var211
	sta this_source_offset
	sty this_source_offset+1
	; LineNumber: 536
	; Binary clause Simplified: EQUALS
	; Load Byte array
	ldx strip_num
	lda strip_direction,x
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne show_obstacles_elseblock214
show_obstacles_ConditionalTrueBlock213: ;Main true block ;keep 
	; LineNumber: 537
	; LineNumber: 538
	; Assigning single variable : this_source_offset
	lda this_source_offset
	clc
	adc obstacles_x_rl
	sta this_source_offset+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc show_obstacles_WordAdd221
	inc this_source_offset+1
show_obstacles_WordAdd221
	; LineNumber: 540
	jmp show_obstacles_elsedoneblock215
show_obstacles_elseblock214
	; LineNumber: 541
	; LineNumber: 542
	; Assigning single variable : this_source_offset
	lda this_source_offset
	clc
	adc obstacles_x_lr
	sta this_source_offset+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc show_obstacles_WordAdd223
	inc this_source_offset+1
show_obstacles_WordAdd223
	; LineNumber: 543
show_obstacles_elsedoneblock215
	; LineNumber: 544
	; memcpyfast
	ldy #39
show_obstacles_memcpy224
	lda (this_source_offset),y
	sta (screenmemory),y
	dey
	bpl show_obstacles_memcpy224
	; LineNumber: 546
show_obstacles_forloopcounter182
show_obstacles_loopstart183
	inc strip_num
	lda #$d
	cmp strip_num ;keep
	beq show_obstacles_loopdone225
show_obstacles_loopnotdone226
	jmp show_obstacles_forloop180
show_obstacles_loopdone225
show_obstacles_forloopend181
show_obstacles_loopend184
	; LineNumber: 549
	
; // RESET SCREEN MEMORY
	; Assigning single variable : screenmemory
	lda #$00
	ldx #$80
	sta screenmemory
	stx screenmemory+1
	; LineNumber: 551
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : kill_frog
	;    Procedure type : User-defined procedure
	; LineNumber: 554
kill_frog
	; LineNumber: 555
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
	; LineNumber: 556
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
	; LineNumber: 557
	; Assigning single variable : previous_tile
	lda #$20
	; Calling storevariable
	sta previous_tile
	; LineNumber: 558
	; Assigning single variable : next_tile
	; Calling storevariable
	sta next_tile
	; LineNumber: 559
	; Assigning single variable : frog_x
	lda #$14
	; Calling storevariable
	sta frog_x
	; LineNumber: 560
	; Assigning single variable : frog_y
	lda #$18
	; Calling storevariable
	sta frog_y
	; LineNumber: 561
	; Assigning single variable : frog_old_x
	lda frog_x
	; Calling storevariable
	sta frog_old_x
	; LineNumber: 562
	; Assigning single variable : frog_old_y
	lda frog_y
	; Calling storevariable
	sta frog_old_y
	; LineNumber: 563
	jsr burp
	; LineNumber: 564
	dec player_lives
	; LineNumber: 565
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : check_collisions
	;    Procedure type : User-defined procedure
	; LineNumber: 570
check_collisions
	; LineNumber: 572
	
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
	; LineNumber: 578
	cmp frogcharA ;keep
	bne check_collisions_casenext231
	; LineNumber: 582
	; LineNumber: 583
	; Binary clause Simplified: LESS
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$18;keep
	bcs check_collisions_elsedoneblock236
check_collisions_ConditionalTrueBlock234: ;Main true block ;keep 
	; LineNumber: 584
	; LineNumber: 585
	
; // There is no function to search a string
; // or check an array, or return array size,
; // so we need to check each character individually
; // Can't occupy where already landed
	; Assigning single variable : frog_x
	lda frog_old_x
	; Calling storevariable
	sta frog_x
	; LineNumber: 586
	; Assigning single variable : frog_y
	lda frog_old_y
	; Calling storevariable
	sta frog_y
	; LineNumber: 587
check_collisions_elsedoneblock236
	; LineNumber: 588
	jmp check_collisions_caseend230
check_collisions_casenext231
	lda next_tile
	cmp frogcharB ;keep
	bne check_collisions_casenext239
	; LineNumber: 590
	; LineNumber: 591
	; Binary clause Simplified: LESS
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$18;keep
	bcs check_collisions_elsedoneblock244
check_collisions_ConditionalTrueBlock242: ;Main true block ;keep 
	; LineNumber: 592
	; LineNumber: 593
	; Assigning single variable : frog_x
	lda frog_old_x
	; Calling storevariable
	sta frog_x
	; LineNumber: 594
	; Assigning single variable : frog_y
	lda frog_old_y
	; Calling storevariable
	sta frog_y
	; LineNumber: 595
check_collisions_elsedoneblock244
	; LineNumber: 596
	jmp check_collisions_caseend230
check_collisions_casenext239
	lda next_tile
	cmp #$66 ;keep
	bne check_collisions_casenext247
	; LineNumber: 599
	; LineNumber: 600
	; Binary clause Simplified: LESS
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$18;keep
	bcs check_collisions_elsedoneblock252
check_collisions_ConditionalTrueBlock250: ;Main true block ;keep 
	; LineNumber: 601
	; LineNumber: 602
	
; // Scenery
	; Assigning single variable : frog_x
	lda frog_old_x
	; Calling storevariable
	sta frog_x
	; LineNumber: 603
	; Assigning single variable : frog_y
	lda frog_old_y
	; Calling storevariable
	sta frog_y
	; LineNumber: 604
check_collisions_elsedoneblock252
	; LineNumber: 605
	jmp check_collisions_caseend230
check_collisions_casenext247
	lda next_tile
	cmp #$68 ;keep
	bne check_collisions_casenext255
	; LineNumber: 608
	; LineNumber: 609
	; Assigning single variable : frog_x
	lda frog_old_x
	; Calling storevariable
	sta frog_x
	; LineNumber: 610
	; Assigning single variable : frog_y
	lda frog_old_y
	; Calling storevariable
	sta frog_y
	; LineNumber: 611
	jmp check_collisions_caseend230
check_collisions_casenext255
	lda next_tile
	cmp #$5c ;keep
	bne check_collisions_casenext257
	; LineNumber: 614
	; LineNumber: 615
	; Assigning single variable : frog_x
	lda frog_old_x
	; Calling storevariable
	sta frog_x
	; LineNumber: 616
	; Assigning single variable : frog_y
	lda frog_old_y
	; Calling storevariable
	sta frog_y
	; LineNumber: 617
	jmp check_collisions_caseend230
check_collisions_casenext257
	lda next_tile
	cmp #$20 ;keep
	bne check_collisions_casenext259
	; LineNumber: 623
	; LineNumber: 624
	; Binary clause Simplified: LESS
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$9;keep
	bcs check_collisions_elsedoneblock264
check_collisions_localsuccess266: ;keep
	; ; logical AND, second requirement
	; Optimization: replacing a > N with a >= N+1
	; Binary clause Simplified: GREATEREQUAL
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$4;keep
	bcc check_collisions_elsedoneblock264
check_collisions_ConditionalTrueBlock262: ;Main true block ;keep 
	; LineNumber: 625
	; LineNumber: 626
	
; // Water kills the frog for some reason?
	jsr kill_frog
	; LineNumber: 627
check_collisions_elsedoneblock264
	; LineNumber: 628
	jmp check_collisions_caseend230
check_collisions_casenext259
	lda next_tile
	cmp #$51 ;keep
	bne check_collisions_casenext268
	; LineNumber: 632
	; LineNumber: 633
	; Optimization: replacing a > N with a >= N+1
	; Binary clause Simplified: GREATEREQUAL
	lda frog_x
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc check_collisions_elsedoneblock273
check_collisions_ConditionalTrueBlock271: ;Main true block ;keep 
	; LineNumber: 634
	; LineNumber: 635
	
; // Ride turtles and logs etc
	dec frog_x
	; LineNumber: 636
check_collisions_elsedoneblock273
	; LineNumber: 637
	jmp check_collisions_caseend230
check_collisions_casenext268
	lda next_tile
	cmp #$a8 ;keep
	bne check_collisions_casenext278
	; LineNumber: 640
	; LineNumber: 641
	; Binary clause Simplified: LESS
	lda frog_x
	; Compare with pure num / var optimization
	cmp #$26;keep
	bcs check_collisions_elsedoneblock283
check_collisions_ConditionalTrueBlock281: ;Main true block ;keep 
	; LineNumber: 642
	; LineNumber: 643
	
; // (
	inc frog_x
	; LineNumber: 644
check_collisions_elsedoneblock283
	; LineNumber: 645
	jmp check_collisions_caseend230
check_collisions_casenext278
	lda next_tile
	cmp #$a9 ;keep
	bne check_collisions_casenext288
	; LineNumber: 648
	; LineNumber: 649
	; Optimization: replacing a > N with a >= N+1
	; Binary clause Simplified: GREATEREQUAL
	lda frog_x
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc check_collisions_elsedoneblock293
check_collisions_ConditionalTrueBlock291: ;Main true block ;keep 
	; LineNumber: 650
	; LineNumber: 651
	
; // ) 
	dec frog_x
	; LineNumber: 652
check_collisions_elsedoneblock293
	; LineNumber: 653
	jmp check_collisions_caseend230
check_collisions_casenext288
	lda next_tile
	cmp #$dc ;keep
	bne check_collisions_casenext298
	; LineNumber: 656
	; LineNumber: 657
	; Binary clause Simplified: LESS
	lda frog_x
	; Compare with pure num / var optimization
	cmp #$26;keep
	bcs check_collisions_elsedoneblock303
check_collisions_ConditionalTrueBlock301: ;Main true block ;keep 
	; LineNumber: 658
	; LineNumber: 659
	
; // Crock bod right
	inc frog_x
	; LineNumber: 660
check_collisions_elsedoneblock303
	; LineNumber: 662
	; Optimization: replacing a > N with a >= N+1
	; Binary clause Simplified: GREATEREQUAL
	lda frog_x
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc check_collisions_elsedoneblock311
check_collisions_localsuccess314: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$4;keep
	bne check_collisions_elsedoneblock311
check_collisions_ConditionalTrueBlock309: ;Main true block ;keep 
	; LineNumber: 663
	; LineNumber: 664
	dec frog_x
	; LineNumber: 665
check_collisions_elsedoneblock311
	; LineNumber: 666
	jmp check_collisions_caseend230
check_collisions_casenext298
	lda next_tile
	cmp #$f0 ;keep
	bne check_collisions_casenext317
	; LineNumber: 672
	; LineNumber: 673
	
; // Truck!
	jsr kill_frog
	; LineNumber: 674
	jmp check_collisions_caseend230
check_collisions_casenext317
	lda next_tile
	cmp #$d7 ;keep
	bne check_collisions_casenext319
	; LineNumber: 677
	; LineNumber: 678
	jsr kill_frog
	; LineNumber: 679
	jmp check_collisions_caseend230
check_collisions_casenext319
	lda next_tile
	cmp #$ed ;keep
	bne check_collisions_casenext321
	; LineNumber: 682
	; LineNumber: 683
	jsr kill_frog
	; LineNumber: 685
	jmp check_collisions_caseend230
check_collisions_casenext321
	lda next_tile
	cmp #$ee ;keep
	bne check_collisions_casenext323
	; LineNumber: 687
	; LineNumber: 688
	jsr kill_frog
	; LineNumber: 690
	jmp check_collisions_caseend230
check_collisions_casenext323
	lda next_tile
	cmp #$fd ;keep
	bne check_collisions_casenext325
	; LineNumber: 693
	; LineNumber: 694
	jsr kill_frog
	; LineNumber: 696
	jmp check_collisions_caseend230
check_collisions_casenext325
	lda next_tile
	cmp #$60 ;keep
	bne check_collisions_casenext327
	; LineNumber: 699
	; LineNumber: 700
	jsr kill_frog
	; LineNumber: 702
	jmp check_collisions_caseend230
check_collisions_casenext327
	lda next_tile
	cmp #$f3 ;keep
	bne check_collisions_casenext329
	; LineNumber: 705
	; LineNumber: 706
	jsr kill_frog
	; LineNumber: 708
	jmp check_collisions_caseend230
check_collisions_casenext329
	lda next_tile
	cmp #$eb ;keep
	bne check_collisions_casenext331
	; LineNumber: 711
	; LineNumber: 712
	jsr kill_frog
	; LineNumber: 714
	jmp check_collisions_caseend230
check_collisions_casenext331
	lda next_tile
	cmp #$c6 ;keep
	bne check_collisions_casenext333
	; LineNumber: 718
	; LineNumber: 719
	
; // Crock!
	jsr kill_frog
	; LineNumber: 721
	jmp check_collisions_caseend230
check_collisions_casenext333
	lda next_tile
	cmp #$a2 ;keep
	bne check_collisions_casenext335
	; LineNumber: 724
	; LineNumber: 725
	jsr kill_frog
	; LineNumber: 726
	jmp check_collisions_caseend230
check_collisions_casenext335
	lda next_tile
	cmp #$d6 ;keep
	bne check_collisions_casenext337
	; LineNumber: 731
	; LineNumber: 732
	
; // HOME
; // Occupied
	; Assigning single variable : frog_x
	lda frog_old_x
	; Calling storevariable
	sta frog_x
	; LineNumber: 733
	; Assigning single variable : frog_y
	lda frog_old_y
	; Calling storevariable
	sta frog_y
	; LineNumber: 734
	jmp check_collisions_caseend230
check_collisions_casenext337
	lda next_tile
	cmp #$d3 ;keep
	bne check_collisions_casenext339
	; LineNumber: 737
	; LineNumber: 738
	; Binary clause Simplified: NOTEQUALS
	lda frog_x
	; Compare with pure num / var optimization
	cmp frog_old_x;keep
	beq check_collisions_localfailed347
	jmp check_collisions_ConditionalTrueBlock342
check_collisions_localfailed347: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda frog_y
	; Compare with pure num / var optimization
	cmp frog_old_y;keep
	beq check_collisions_elsedoneblock344
check_collisions_ConditionalTrueBlock342: ;Main true block ;keep 
	; LineNumber: 739
	; LineNumber: 740
	
; // Success
	; Assigning single variable : player_score
	ldy #0
	lda player_score
	clc
	adc #$64
	sta player_score+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc check_collisions_WordAdd349
	inc player_score+1
check_collisions_WordAdd349
	; LineNumber: 741
	jsr ping
	; LineNumber: 742
	; Assigning single variable : frog_x
	lda #$14
	; Calling storevariable
	sta frog_x
	; LineNumber: 743
	; Assigning single variable : frog_y
	lda #$18
	; Calling storevariable
	sta frog_y
	; LineNumber: 744
	; Assigning single variable : frog_old_x
	lda frog_x
	; Calling storevariable
	sta frog_old_x
	; LineNumber: 745
	; Assigning single variable : frog_old_y
	lda frog_y
	; Calling storevariable
	sta frog_old_y
	; LineNumber: 746
check_collisions_elsedoneblock344
	; LineNumber: 747
	jmp check_collisions_caseend230
check_collisions_casenext339
	; LineNumber: 751
	; LineNumber: 753
	; Binary clause Simplified: NOTEQUALS
	lda KEYPRESS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq check_collisions_elsedoneblock354
check_collisions_ConditionalTrueBlock352: ;Main true block ;keep 
	; LineNumber: 754
	; LineNumber: 755
	
; // None of the cases were valid so go ahead
	inc player_score
	bne check_collisions_incdec358
	inc player_score +1
check_collisions_incdec358
	; LineNumber: 756
check_collisions_elsedoneblock354
	; LineNumber: 757
check_collisions_caseend230
	; LineNumber: 758
	rts
	; === main logic ============================================================================================ 
	; NodeProcedureDecl -1
	; ***********  Defining procedure : game_loop
	;    Procedure type : User-defined procedure
	; LineNumber: 768
game_loop
	; LineNumber: 771
game_loop_while360
game_loop_loopstart364
	; Binary clause Simplified: EQUALS
	lda ALIVE
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne game_loop_localfailed479
game_loop_localsuccess480: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda WON_GAME
	; Compare with pure num / var optimization
	cmp #$0;keep
	bne game_loop_localfailed479
	jmp game_loop_ConditionalTrueBlock361
game_loop_localfailed479
	jmp game_loop_elsedoneblock363
game_loop_ConditionalTrueBlock361: ;Main true block ;keep 
	; LineNumber: 772
	; LineNumber: 773
	; Assigning single variable : frog_old_x
	lda frog_x
	; Calling storevariable
	sta frog_old_x
	; LineNumber: 774
	; Assigning single variable : frog_old_y
	lda frog_y
	; Calling storevariable
	sta frog_old_y
	; LineNumber: 775
	; Assigning single variable : KEYPRESS
	jsr getkey
	; Calling storevariable
	sta KEYPRESS
	; LineNumber: 780
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$b8;keep
	bne game_loop_elsedoneblock485
game_loop_ConditionalTrueBlock483: ;Main true block ;keep 
	; LineNumber: 781
	; LineNumber: 782
	; Binary clause Simplified: GREATEREQUAL
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$2;keep
	bcc game_loop_elsedoneblock499
game_loop_ConditionalTrueBlock497: ;Main true block ;keep 
	; LineNumber: 783
	; LineNumber: 784
	
; // Uncomment to show key that was pressed
; // textat(30,20, #KEYPRESS,1);
	dec frog_y
	; LineNumber: 785
game_loop_elsedoneblock499
	; LineNumber: 786
game_loop_elsedoneblock485
	; LineNumber: 788
	; Binary clause Simplified: EQUALS
	lda KEYPRESS
	; Compare with pure num / var optimization
	cmp #$b6;keep
	bne game_loop_elsedoneblock507
game_loop_ConditionalTrueBlock505: ;Main true block ;keep 
	; LineNumber: 789
	; LineNumber: 790
	; Binary clause Simplified: LESS
	lda frog_x
	; Compare with pure num / var optimization
	cmp #$27;keep
	bcs game_loop_elsedoneblock521
game_loop_ConditionalTrueBlock519: ;Main true block ;keep 
	; LineNumber: 791
	; LineNumber: 792
	inc frog_x
	; LineNumber: 793
game_loop_elsedoneblock521
	; LineNumber: 794
game_loop_elsedoneblock507
	; LineNumber: 796
	; Binary clause Simplified: EQUALS
	lda KEYPRESS
	; Compare with pure num / var optimization
	cmp #$b2;keep
	bne game_loop_localfailed539
	jmp game_loop_ConditionalTrueBlock527
game_loop_localfailed539: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda KEYPRESS
	; Compare with pure num / var optimization
	cmp #$b5;keep
	bne game_loop_elsedoneblock529
game_loop_ConditionalTrueBlock527: ;Main true block ;keep 
	; LineNumber: 797
	; LineNumber: 798
	; Binary clause Simplified: LESS
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$18;keep
	bcs game_loop_elsedoneblock544
game_loop_ConditionalTrueBlock542: ;Main true block ;keep 
	; LineNumber: 799
	; LineNumber: 800
	inc frog_y
	; LineNumber: 801
game_loop_elsedoneblock544
	; LineNumber: 802
game_loop_elsedoneblock529
	; LineNumber: 804
	; Binary clause Simplified: EQUALS
	lda KEYPRESS
	; Compare with pure num / var optimization
	cmp #$b4;keep
	bne game_loop_elsedoneblock552
game_loop_ConditionalTrueBlock550: ;Main true block ;keep 
	; LineNumber: 805
	; LineNumber: 806
	; Binary clause Simplified: GREATEREQUAL
	lda frog_x
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc game_loop_elsedoneblock566
game_loop_ConditionalTrueBlock564: ;Main true block ;keep 
	; LineNumber: 807
	; LineNumber: 808
	dec frog_x
	; LineNumber: 809
game_loop_elsedoneblock566
	; LineNumber: 810
game_loop_elsedoneblock552
	; LineNumber: 813
	
; // Show the obstacles in new positions
	jsr show_obstacles
	; LineNumber: 816
	
; // "Collision detection"
	jsr check_collisions
	; LineNumber: 819
	; Binary clause Simplified: LESS
	lda player_lives
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcs game_loop_elsedoneblock574
game_loop_ConditionalTrueBlock572: ;Main true block ;keep 
	; LineNumber: 820
	; LineNumber: 822
	
; // Still alive?
; // Dead and didn't win :(
	; Assigning single variable : ALIVE
	lda #$0
	; Calling storevariable
	sta ALIVE
	; LineNumber: 824
game_loop_elsedoneblock574
	; LineNumber: 829
	; Binary clause Simplified: NOTEQUALS
	lda frog_x
	; Compare with pure num / var optimization
	cmp frog_old_x;keep
	beq game_loop_localfailed582
	jmp game_loop_ConditionalTrueBlock578
game_loop_localfailed582: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda frog_y
	; Compare with pure num / var optimization
	cmp frog_old_y;keep
	beq game_loop_elsedoneblock580
game_loop_ConditionalTrueBlock578: ;Main true block ;keep 
	; LineNumber: 830
	; LineNumber: 831
	
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
	; LineNumber: 832
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
	; LineNumber: 833
game_loop_elsedoneblock580
	; LineNumber: 836
	; Binary clause Simplified: GREATEREQUAL
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$b;keep
	bcc game_loop_elseblock586
game_loop_ConditionalTrueBlock585: ;Main true block ;keep 
	; LineNumber: 837
	; LineNumber: 838
	
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
	; LineNumber: 840
	jmp game_loop_elsedoneblock587
game_loop_elseblock586
	; LineNumber: 841
	; LineNumber: 842
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
	; LineNumber: 843
game_loop_elsedoneblock587
	; LineNumber: 848
	
; // Score and lives
	; MoveTo optimization
	lda #$09
	sta screenmemory
	lda #>$8000
	clc
	adc #$00
	sta screenmemory+1
	; LineNumber: 848
	; integer assignment NodeVar
	ldy player_score+1 ; Next one
	lda player_score
	sta ipd_div_lo
	sty ipd_div_hi
	ldy #$3 ; optimized, look out for bugs
game_loop_printdecimal592
	jsr init_printdecimal_div10 
	ora #$30
	sta (screenmemory),y
	dey
	bpl game_loop_printdecimal592
	; LineNumber: 850
	; MoveTo optimization
	lda #$24
	sta screenmemory
	lda #>$8000
	clc
	adc #$00
	sta screenmemory+1
	; LineNumber: 850
	ldy #0
	lda player_lives
	sta ipd_div_lo
	sty ipd_div_hi
	ldy #$1 ; optimized, look out for bugs
game_loop_printdecimal593
	jsr init_printdecimal_div10 
	ora #$30
	sta (screenmemory),y
	dey
	bpl game_loop_printdecimal593
	; LineNumber: 854
	
; // delay
	jsr sleep_delay
	; LineNumber: 855
	jmp game_loop_while360
game_loop_elsedoneblock363
game_loop_loopend365
	; LineNumber: 857
	rts
block1
	; LineNumber: 859
	; LineNumber: 862
MainProgram_while594
MainProgram_loopstart598
	; Binary clause Simplified: NOTEQUALS
	lda #$1
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock597
MainProgram_ConditionalTrueBlock595: ;Main true block ;keep 
	; LineNumber: 863
	; LineNumber: 864
	jsr title_screen
	; LineNumber: 865
	jsr init_vars
	; LineNumber: 866
	jsr game_loop
	; LineNumber: 867
	jsr score_screen
	; LineNumber: 868
	jmp MainProgram_while594
MainProgram_elsedoneblock597
MainProgram_loopend599
	; LineNumber: 872
	; End of program
	; Ending memory block
EndBlock410
title_screen_stringassignstr90	.dc "                       ",0
score_screen_stringassignstr124	.dc "                       ",0
