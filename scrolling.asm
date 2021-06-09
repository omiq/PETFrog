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
Scrolling
	; LineNumber: 1531
	jmp block1
	; LineNumber: 7
Key_keys	dc.b	 
	org Key_keys+10
	; LineNumber: 8
Key_keysLast	dc.b	 
	org Key_keysLast+10
	; LineNumber: 9
Key_keysPressed	dc.b	 
	org Key_keysPressed+10
	; LineNumber: 12
Key_keyState	dc.b	0
	; LineNumber: 16
Key_temp	dc.b	0
	; LineNumber: 18
Key_KeyRow = $e810
	; LineNumber: 19
Key_KeyRead = $e812
	; LineNumber: 4
player_old_x	dc.b	0
	; LineNumber: 4
player_x	dc.b	0
	; LineNumber: 4
player_old_y	dc.b	0
	; LineNumber: 4
player_y	dc.b	0
	; LineNumber: 7
rally_screen	
	dc.b	32, 32, 32, 32, 242, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 241
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 242, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 242
	dc.b	241, 242, 241, 32, 32, 32, 32, 241, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 241, 32, 32, 32, 32, 32
	dc.b	32, 32, 242, 241, 242, 241, 242, 241, 104
	dc.b	104, 104, 241, 242, 241, 242, 241, 241, 242
	dc.b	241, 241, 242, 241, 241, 242, 241, 242, 241
	dc.b	241, 242, 241, 241, 242, 242, 241, 242, 32
	dc.b	32, 32, 32, 32, 32, 32, 241, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 242, 32, 32, 65, 32, 242, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 241, 32, 32, 32, 32, 32, 32
	dc.b	32, 242, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 241, 32, 32
	dc.b	32, 32, 241, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 79, 101, 32, 32, 242, 32, 32
	dc.b	32, 32, 32, 32, 32, 241, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 242, 32, 32, 242, 241, 242, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 251, 252, 32
	dc.b	32, 241, 32, 32, 32, 32, 32, 32, 32
	dc.b	242, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	85, 32, 32, 32, 32, 241, 32, 32, 32
	dc.b	46, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 251, 252, 32, 242, 32, 32, 32
	dc.b	32, 32, 32, 32, 241, 32, 32, 32, 32
	dc.b	32, 32, 32, 0, 75, 32, 32, 32, 32
	dc.b	242, 32, 32, 32, 94, 32, 32, 221, 206
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	241, 32, 32, 32, 32, 32, 32, 32, 242
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 241, 32, 32, 32, 34
	dc.b	32, 192, 32, 195, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 242, 241, 242, 241, 32
	dc.b	32, 32, 32, 241, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 242
	dc.b	32, 32, 32, 32, 32, 206, 200, 205, 32
	dc.b	32, 32, 32, 214, 214, 32, 32, 32, 241
	dc.b	32, 32, 32, 32, 32, 32, 32, 242, 32
	dc.b	32, 32, 32, 15, 114, 123, 96, 32, 32
	dc.b	32, 32, 32, 92, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 214, 214
	dc.b	32, 32, 32, 242, 32, 32, 32, 32, 32
	dc.b	32, 32, 92, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 96, 96, 32, 32, 92, 32
	dc.b	32, 32, 90, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 241, 32
	dc.b	32, 32, 32, 32, 32, 32, 92, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 96, 96
	dc.b	32, 32, 241, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 242, 32, 32, 32, 32, 32, 32
	dc.b	32, 242, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 242, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 241, 32, 32
	dc.b	32, 32, 32, 32, 32, 241, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 241, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 242, 32, 32, 32, 32, 32, 32, 32
	dc.b	242, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 242, 241, 242, 241
	dc.b	241, 242, 241, 241, 242, 241, 242, 241, 241
	dc.b	242, 241, 241, 242, 241, 241, 32, 32, 32
	dc.b	32, 32, 32, 32, 241, 32, 32, 32, 32
	dc.b	32, 46, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 242, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	242, 32, 32, 32, 32, 96, 96, 96, 242
	dc.b	32, 32, 32, 32, 32, 88, 32, 32, 96
	dc.b	32, 32, 32, 32, 32, 32, 83, 32, 32
	dc.b	32, 241, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 92, 32, 32, 32, 32
	dc.b	96, 96, 96, 241, 32, 32, 32, 32, 32
	dc.b	34, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 242, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 92
	dc.b	32, 32, 32, 32, 32, 32, 32, 242, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	92, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 241, 32, 32, 32, 32, 32
	dc.b	32, 32, 241, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 92, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 242, 32
	dc.b	32, 32, 32, 32, 32, 32, 242, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 241
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 241, 32, 32, 32, 242, 241, 241
	dc.b	242, 241, 241, 242, 241, 241, 242, 241, 242
	dc.b	241, 241, 242, 241, 242, 241, 241, 242, 241
	dc.b	241, 242, 241, 241, 242, 241, 242, 241, 241
	dc.b	242, 241, 241, 242, 241, 242, 242, 32, 32
	dc.b	32, 32, 32, 32, 32, 242, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	241, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 242, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	242, 241, 242, 241, 32, 32, 32, 32, 241
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 241, 32, 32, 32, 32
	dc.b	32, 32, 32, 242, 241, 242, 241, 242, 241
	dc.b	104, 104, 104, 241, 242, 241, 242, 241, 241
	dc.b	242, 241, 241, 242, 241, 241, 242, 241, 242
	dc.b	241, 241, 242, 241, 241, 242, 242, 241, 242
	dc.b	32, 32, 32, 32, 32, 32, 32, 241, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 242, 32, 32, 65, 32, 242
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 241, 32, 32, 32, 32, 32
	dc.b	32, 32, 242, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 241, 32
	dc.b	32, 32, 32, 241, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 79, 101, 32, 32, 242, 32
	dc.b	32, 32, 32, 32, 32, 32, 241, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 242, 32, 32, 242, 241, 242, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 251, 252
	dc.b	32, 32, 241, 32, 32, 32, 32, 32, 32
	dc.b	32, 242, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 85, 32, 32, 32, 32, 241, 32, 32
	dc.b	32, 46, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 251, 252, 32, 242, 32, 32
	dc.b	32, 32, 32, 32, 32, 241, 32, 32, 32
	dc.b	32, 32, 32, 32, 0, 75, 32, 32, 32
	dc.b	32, 242, 32, 32, 32, 94, 32, 32, 221
	dc.b	206, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 241, 32, 32, 32, 32, 32, 32, 32
	dc.b	242, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 241, 32, 32, 32
	dc.b	34, 32, 192, 32, 195, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 242, 241, 242, 241
	dc.b	32, 32, 32, 32, 241, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	242, 32, 32, 32, 32, 32, 206, 200, 205
	dc.b	32, 32, 32, 32, 214, 214, 32, 32, 32
	dc.b	241, 32, 32, 32, 32, 32, 32, 32, 242
	dc.b	32, 32, 32, 32, 15, 114, 123, 96, 32
	dc.b	32, 32, 32, 32, 92, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 214
	dc.b	214, 32, 32, 32, 242, 32, 32, 32, 32
	dc.b	32, 32, 32, 92, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 96, 96, 32, 32, 92
	dc.b	32, 32, 32, 90, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 241
	dc.b	32, 32, 32, 32, 32, 32, 32, 92, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 96
	dc.b	96, 32, 32, 241, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 242, 32, 32, 32, 32, 32
	dc.b	32, 32, 242, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 242, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 241, 32
	dc.b	32, 32, 32, 32, 32, 32, 241, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 241, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 242, 32, 32, 32, 32, 32, 32
	dc.b	32, 242, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 242, 241, 242
	dc.b	241, 241, 242, 241, 241, 242, 241, 242, 241
	dc.b	241, 242, 241, 241, 242, 241, 241, 32, 32
	dc.b	32, 32, 32, 32, 32, 241, 32, 32, 32
	dc.b	32, 32, 46, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 242, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 242, 32, 32, 32, 32, 96, 96, 96
	dc.b	242, 32, 32, 32, 32, 32, 88, 32, 32
	dc.b	96, 32, 32, 32, 32, 32, 32, 83, 32
	dc.b	32, 32, 241, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 92, 32, 32, 32
	dc.b	32, 96, 96, 96, 241, 32, 32, 32, 32
	dc.b	32, 34, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 242, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	92, 32, 32, 32, 32, 32, 32, 32, 242
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 92, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 241, 32, 32, 32, 32
	dc.b	32, 32, 32, 241, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 92, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 242
	dc.b	32, 32, 32, 32, 32, 32, 32, 242, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	241, 32, 32, 32, 32, 32, 32, 32, 32
	dc.b	32, 32, 32, 241, 32, 32, 32, 242, 241
	dc.b	241, 242, 241, 241, 242, 241, 241, 242, 241
	dc.b	242, 241, 241, 242, 241, 242, 241, 241, 242
	dc.b	241, 241, 242, 241, 241, 242, 241, 242, 241
	dc.b	241, 242, 241, 241, 242, 241, 242, 242, 32
	dc.b	32, 32, 0
	; LineNumber: 71
i	dc.w	$00
	; LineNumber: 81
DETECTED_SCREEN_WIDTH	dc.b	$28
	; LineNumber: 94
n_key_up	dc.w	0
	; LineNumber: 94
n_key_down	dc.w	0
	; LineNumber: 94
n_key_left	dc.w	0
	; LineNumber: 94
n_key_right	dc.w	0
	; LineNumber: 94
key_up	dc.w	0
	; LineNumber: 94
key_down	dc.w	0
	; LineNumber: 94
key_left	dc.w	0
	; LineNumber: 94
key_right	dc.w	0
	; LineNumber: 395
dude_head	
	dc.b	46, 0
	; LineNumber: 396
dude_body	
	dc.b	94, 0
	; LineNumber: 397
dude_legs	
	dc.b	34, 0
	; NodeProcedureDecl -1
	; ***********  Defining procedure : init16x8div
	;    Procedure type : Built-in function
	;    Requires initialization : no
initdiv16x8_divisor = $4c     ;$59 used for hi-byte
initdiv16x8_dividend = $4e	  ;$fc used for hi-byte
initdiv16x8_remainder = $50	  ;$fe used for hi-byte
initdiv16x8_result = $4e ;save memory by reusing divident to store the result
divide16x8	lda #0	        ;preset remainder to 0
	sta initdiv16x8_remainder
	sta initdiv16x8_remainder+1
	ldx #16	        ;repeat for each bit: ...
divloop16	asl initdiv16x8_dividend	;dividend lb & hb*2, msb -> Carry
	rol initdiv16x8_dividend+1
	rol initdiv16x8_remainder	;remainder lb & hb * 2 + msb from carry
	rol initdiv16x8_remainder+1
	lda initdiv16x8_remainder
	sec
	sbc initdiv16x8_divisor	;substract divisor to see if it fits in
	tay	        ;lb result -> Y, for we may need it later
	lda initdiv16x8_remainder+1
	sbc initdiv16x8_divisor+1
	bcc skip16	;if carry=0 then divisor didn't fit in yet
	sta initdiv16x8_remainder+1	;else save substraction result as new remainder,
	sty initdiv16x8_remainder
	inc initdiv16x8_result	;and INCrement result cause divisor fit in 1 times
skip16	dex
	bne divloop16
	rts
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
	; ***********  Defining procedure : init8x8div
	;    Procedure type : Built-in function
	;    Requires initialization : no
div8x8_c = $4c
div8x8_d = $4e
div8x8_e = $50
	; Normal 8x8 bin div
div8x8_procedure
	lda #$00
	ldx #$07
	clc
div8x8_loop1 rol div8x8_d
	rol
	cmp div8x8_c
	bcc div8x8_loop2
	sbc div8x8_c
div8x8_loop2 dex
	bpl div8x8_loop1
	rol div8x8_d
	lda div8x8_d
div8x8_def_end
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
	;*
; //<p>Wait for the Vertical Blank to start. This is when the raster beam
; //has reached the bottom of the screen and is returning to the top left.
; 

	; NodeProcedureDecl -1
	; ***********  Defining procedure : Screen_WaitVblStart
	;    Procedure type : User-defined procedure
	; LineNumber: 24
Screen_WaitVblStart
	; LineNumber: 26
	; ****** Inline assembler section
	
waitVblStart
	lda $e840
	and #%00100000
	;cmp #%00100000
	beq waitVblStart
	
	; LineNumber: 36
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Key_Read
	;    Procedure type : User-defined procedure
	; LineNumber: 346
Key_Read
	; LineNumber: 348
	; Assigning single variable : Key_keyState
	lda #$0
	; Calling storevariable
	sta Key_keyState
	; LineNumber: 377
	
; // row to test
	; Assigning single variable : Key_temp
	; Calling storevariable
	sta Key_temp
Key_Read_forloop6
	; LineNumber: 351
	; LineNumber: 353
	; Assigning single variable : Key_KeyRow
	lda Key_temp
	; Calling storevariable
	sta Key_KeyRow
	; LineNumber: 355
	; ****** Inline assembler section
		lda Key_KeyRead ; get bits
		eor #$ff ; invert so the below works
		ldx Key_temp
		sta Key_keys,x
		eor Key_keysLast,x
		and Key_keys,x
		sta Key_keysPressed,x
		lda Key_keys,x
		sta Key_keysLast,x
		
		; record if no key pressed
		clc
		adc Key_keyState
		sta Key_keyState
		
		
	; LineNumber: 376
Key_Read_forloopcounter8
Key_Read_loopstart9
	; Compare is onpage
	inc Key_temp
	lda #$a
	cmp Key_temp ;keep
	bne Key_Read_forloop6
Key_Read_loopdone13: ;keep
Key_Read_forloopend7
Key_Read_loopend10
	; LineNumber: 378
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Key_Pressed
	;    Procedure type : User-defined procedure
	; LineNumber: 394
	; LineNumber: 393
Key_Pressed_block14
Key_Pressed
	; LineNumber: 396
	; ****** Inline assembler section
	
	sty Key_temp
	lda Key_keysPressed,x
	and Key_temp 	; contains column 
	
	; LineNumber: 404
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : cls
	;    Procedure type : User-defined procedure
	; LineNumber: 413
cls
	; LineNumber: 414
	; Clear screen with offset
	lda #$20
	ldx #$fa
cls_clearloop16
	dex
	sta $0000+$8000,x
	sta $00fa+$8000,x
	sta $01f4+$8000,x
	sta $02ee+$8000,x
	sta $03e8+$8000,x
	sta $04e2+$8000,x
	sta $05dc+$8000,x
	sta $06d6+$8000,x
	bne cls_clearloop16
	; LineNumber: 415
	; MoveTo optimization
	lda #$00
	sta screenmemory
	lda #>$8000
	clc
	adc #$00
	sta screenmemory+1
	; LineNumber: 416
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : textat
	;    Procedure type : User-defined procedure
	; LineNumber: 626
	; LineNumber: 624
zp	= $02
	; LineNumber: 622
x	dc.b	0
	; LineNumber: 622
y	dc.b	0
	; LineNumber: 622
this_str	= $04
	; LineNumber: 622
str_len	dc.b	0
textat_block17
textat
	; LineNumber: 627
	; Assigning single variable : zp
	; Generic 16 bit op
	ldy #0
	lda x
textat_rightvarInteger_var20 = $54
	sta textat_rightvarInteger_var20
	sty textat_rightvarInteger_var20+1
	; Generic 16 bit op
	; Integer constant assigning
	ldy #$80
	lda #$00
textat_rightvarInteger_var23 = $56
	sta textat_rightvarInteger_var23
	sty textat_rightvarInteger_var23+1
	; Mul 16x8 setup
	ldy #0
	lda y
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda DETECTED_SCREEN_WIDTH
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc textat_rightvarInteger_var23
textat_wordAdd21
	sta textat_rightvarInteger_var23
	; High-bit binop
	tya
	adc textat_rightvarInteger_var23+1
	tay
	lda textat_rightvarInteger_var23
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
	sta zp
	sty zp+1
	; LineNumber: 627
	; memcpyfast
	ldy str_len
	dey
textat_memcpy24
	lda (this_str),y
	sta (zp),y
	dey
	bpl textat_memcpy24
	; LineNumber: 629
	rts
	; === main logic ============================================================================================ 
	; NodeProcedureDecl -1
	; ***********  Defining procedure : map_to_screen
	;    Procedure type : User-defined procedure
	; LineNumber: 1452
	; LineNumber: 1449
mc_row	dc.b	0
	; LineNumber: 1450
src_row	= $02
	; LineNumber: 1450
dest_row	= $04
map_to_screen_block25
map_to_screen
	; LineNumber: 1459
	; Assigning single variable : mc_row
	lda #$0
	; Calling storevariable
	sta mc_row
map_to_screen_forloop26
	; LineNumber: 1455
	; LineNumber: 1456
	; Assigning single variable : src_row
	; Generic 16 bit op
	lda #<rally_screen
	ldy #>rally_screen
map_to_screen_rightvarInteger_var44 = $54
	sta map_to_screen_rightvarInteger_var44
	sty map_to_screen_rightvarInteger_var44+1
	; Generic 16 bit op
	ldy #0
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	lda player_y
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$28
	sta mul16x8_num2
	jsr mul16x8_procedure
map_to_screen_rightvarInteger_var47 = $56
	sta map_to_screen_rightvarInteger_var47
	sty map_to_screen_rightvarInteger_var47+1
	; Generic 16 bit op
	ldy #0
	lda player_x
map_to_screen_rightvarInteger_var50 = $58
	sta map_to_screen_rightvarInteger_var50
	sty map_to_screen_rightvarInteger_var50+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda mc_row
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$28
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc map_to_screen_rightvarInteger_var50
map_to_screen_wordAdd48
	sta map_to_screen_rightvarInteger_var50
	; High-bit binop
	tya
	adc map_to_screen_rightvarInteger_var50+1
	tay
	lda map_to_screen_rightvarInteger_var50
	; Low bit binop:
	clc
	adc map_to_screen_rightvarInteger_var47
map_to_screen_wordAdd45
	sta map_to_screen_rightvarInteger_var47
	; High-bit binop
	tya
	adc map_to_screen_rightvarInteger_var47+1
	tay
	lda map_to_screen_rightvarInteger_var47
	; Low bit binop:
	clc
	adc map_to_screen_rightvarInteger_var44
map_to_screen_wordAdd42
	sta map_to_screen_rightvarInteger_var44
	; High-bit binop
	tya
	adc map_to_screen_rightvarInteger_var44+1
	tay
	lda map_to_screen_rightvarInteger_var44
	sta src_row
	sty src_row+1
	; LineNumber: 1457
	; Assigning single variable : x
	lda #$0
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda mc_row
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda src_row
	ldx src_row+1
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$14
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 1458
map_to_screen_forloopcounter28
map_to_screen_loopstart29
	inc mc_row
	lda #$18
	cmp mc_row ;keep
	bcc map_to_screen_loopdone51
map_to_screen_loopnotdone52
	jmp map_to_screen_forloop26
map_to_screen_loopdone51
map_to_screen_forloopend27
map_to_screen_loopend30
	; LineNumber: 1459
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : game_loop
	;    Procedure type : User-defined procedure
	; LineNumber: 1463
game_loop
	; LineNumber: 1466
	
; // Numeric Keypad
	; Assigning single variable : n_key_up
	; Integer constant assigning
	ldy #$40
	lda #$03
	; Calling storevariable
	sta n_key_up
	sty n_key_up+1
	; LineNumber: 1467
	; Assigning single variable : n_key_down
	; Integer constant assigning
	lda #$05
	; Calling storevariable
	sta n_key_down
	sty n_key_down+1
	; LineNumber: 1468
	; Assigning single variable : n_key_left
	; Integer constant assigning
	lda #$04
	; Calling storevariable
	sta n_key_left
	sty n_key_left+1
	; LineNumber: 1469
	; Assigning single variable : n_key_right
	; Integer constant assigning
	ldy #$80
	; Calling storevariable
	sta n_key_right
	sty n_key_right+1
	; LineNumber: 1472
	
; // Regular keys        
	; Assigning single variable : key_up
	; Integer constant assigning
	ldy #$01
	lda #$03
	; Calling storevariable
	sta key_up
	sty key_up+1
	; LineNumber: 1473
	; Assigning single variable : key_down
	; Integer constant assigning
	lda #$05
	; Calling storevariable
	sta key_down
	sty key_down+1
	; LineNumber: 1474
	; Assigning single variable : key_left
	; Integer constant assigning
	lda #$04
	; Calling storevariable
	sta key_left
	sty key_left+1
	; LineNumber: 1475
	; Assigning single variable : key_right
	; Integer constant assigning
	ldy #$02
	; Calling storevariable
	sta key_right
	sty key_right+1
	; LineNumber: 1478
game_loop_while54
game_loop_loopstart58
	; Binary clause Simplified: NOTEQUALS
	lda #$1
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq game_loop_localfailed153
	jmp game_loop_ConditionalTrueBlock55
game_loop_localfailed153
	jmp game_loop_elsedoneblock57
game_loop_ConditionalTrueBlock55: ;Main true block ;keep 
	; LineNumber: 1479
	; LineNumber: 1481
	jsr Key_Read
	; LineNumber: 1483
	; Assigning single variable : player_old_x
	lda player_x
	; Calling storevariable
	sta player_old_x
	; LineNumber: 1484
	; Assigning single variable : player_old_y
	lda player_y
	; Calling storevariable
	sta player_old_y
	; LineNumber: 1485
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx key_up
	ldy key_up+1
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq game_loop_localfailed168
	jmp game_loop_ConditionalTrueBlock156
game_loop_localfailed168: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx n_key_up
	ldy n_key_up+1
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq game_loop_elsedoneblock158
game_loop_ConditionalTrueBlock156: ;Main true block ;keep 
	; LineNumber: 1486
	; LineNumber: 1487
	; Binary clause Simplified: GREATEREQUAL
	lda player_y
	; Compare with pure num / var optimization
	cmp #$2;keep
	bcc game_loop_elsedoneblock173
game_loop_ConditionalTrueBlock171: ;Main true block ;keep 
	; LineNumber: 1488
	; LineNumber: 1489
	dec player_y
	; LineNumber: 1490
game_loop_elsedoneblock173
	; LineNumber: 1491
game_loop_elsedoneblock158
	; LineNumber: 1493
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx key_right
	ldy key_right+1
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq game_loop_localfailed191
	jmp game_loop_ConditionalTrueBlock179
game_loop_localfailed191: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx n_key_right
	ldy n_key_right+1
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq game_loop_elsedoneblock181
game_loop_ConditionalTrueBlock179: ;Main true block ;keep 
	; LineNumber: 1494
	; LineNumber: 1495
	; Binary clause Simplified: LESS
	lda player_x
	; Compare with pure num / var optimization
	cmp #$27;keep
	bcs game_loop_elsedoneblock196
game_loop_ConditionalTrueBlock194: ;Main true block ;keep 
	; LineNumber: 1496
	; LineNumber: 1497
	inc player_x
	; LineNumber: 1498
game_loop_elsedoneblock196
	; LineNumber: 1499
game_loop_elsedoneblock181
	; LineNumber: 1501
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx key_down
	ldy key_down+1
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq game_loop_localfailed214
	jmp game_loop_ConditionalTrueBlock202
game_loop_localfailed214: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx n_key_down
	ldy n_key_down+1
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq game_loop_elsedoneblock204
game_loop_ConditionalTrueBlock202: ;Main true block ;keep 
	; LineNumber: 1502
	; LineNumber: 1503
	; Binary clause Simplified: LESS
	lda player_y
	; Compare with pure num / var optimization
	cmp #$18;keep
	bcs game_loop_elsedoneblock219
game_loop_ConditionalTrueBlock217: ;Main true block ;keep 
	; LineNumber: 1504
	; LineNumber: 1505
	inc player_y
	; LineNumber: 1506
game_loop_elsedoneblock219
	; LineNumber: 1507
game_loop_elsedoneblock204
	; LineNumber: 1508
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx key_left
	ldy key_left+1
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq game_loop_localfailed237
	jmp game_loop_ConditionalTrueBlock225
game_loop_localfailed237: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx n_key_left
	ldy n_key_left+1
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq game_loop_elsedoneblock227
game_loop_ConditionalTrueBlock225: ;Main true block ;keep 
	; LineNumber: 1509
	; LineNumber: 1510
	; Binary clause Simplified: GREATEREQUAL
	lda player_x
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc game_loop_elsedoneblock242
game_loop_ConditionalTrueBlock240: ;Main true block ;keep 
	; LineNumber: 1511
	; LineNumber: 1512
	dec player_x
	; LineNumber: 1513
game_loop_elsedoneblock242
	; LineNumber: 1514
game_loop_elsedoneblock227
	; LineNumber: 1517
	jsr Screen_WaitVblStart
	; LineNumber: 1518
	jsr map_to_screen
	; LineNumber: 1521
	; Assigning single variable : x
	lda #$a
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$b
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<dude_head
	ldx #>dude_head
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 1522
	; Assigning single variable : x
	lda #$a
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$c
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<dude_body
	ldx #>dude_body
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 1523
	; Assigning single variable : x
	lda #$a
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$d
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<dude_legs
	ldx #>dude_legs
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 1525
	jmp game_loop_while54
game_loop_elsedoneblock57
game_loop_loopend59
	; LineNumber: 1527
	rts
block1
	; LineNumber: 1534
	; LineNumber: 1536
	; Assigning memory location
	; Assigning single variable : $8000
	; Integer constant assigning
	ldy #$80
	lda #$00
	; Calling storevariable
	sta $8000
	; LineNumber: 1537
	; Assigning single variable : screenmemory
	ldx #$80
	sta screenmemory
	stx screenmemory+1
	; LineNumber: 1540
	jsr cls
	; LineNumber: 1542
MainProgram_while247
MainProgram_loopstart251
	; Binary clause Simplified: NOTEQUALS
	lda #$1
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock250
MainProgram_ConditionalTrueBlock248: ;Main true block ;keep 
	; LineNumber: 1543
	; LineNumber: 1545
	jsr game_loop
	; LineNumber: 1547
	jmp MainProgram_while247
MainProgram_elsedoneblock250
MainProgram_loopend252
	; LineNumber: 1551
	; End of program
	; Ending memory block
EndBlock410
