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
pet_tests
	; LineNumber: 107
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
	; LineNumber: 5
eighty		dc.b	"80COL"
	dc.b	0
	; LineNumber: 6
forty		dc.b	"40COL"
	dc.b	0
	; LineNumber: 7
rom_4		dc.b	"ROM4"
	dc.b	0
	; LineNumber: 8
not_rom_4		dc.b	"?ROM"
	dc.b	0
	; LineNumber: 9
is_80	dc.b	$00
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Key__GetKeyOffset
	;    Procedure type : User-defined procedure
	; LineNumber: 291
	; LineNumber: 290
	; LineNumber: 290
Key__GetKeyOffset_block2
Key__GetKeyOffset
	; LineNumber: 294
	; ****** Inline assembler section
	
	; pass with _a containing key to check 1, 2, 4, 8, 16, 32, 64, 128
	; and y the row offset 0 - 9
	tax ; temp store key
	
	tya ; multiply row offset by 8 to find starting pos in array
	asl
	asl
	asl ; *8
	sta TEMP_VAR1
	
	; use temporary variable as a pointer
	lda #>Key_screencodes_graphic
	sta TEMP_VAR2+1 ; high byte
	lda #<Key_screencodes_graphic
	sta TEMP_VAR2 ; low byte
	
	clc
	adc TEMP_VAR1
	sta TEMP_VAR2
	bcc getKey_NoOverflow
	inc TEMP_VAR2+1 ; byte overflow, update high byte
	
getKey_NoOverflow
	; then work out the offest 0 - 7
	txa ; the key
	
	ldy #0  ; count the number of shifts
	ldx #8	; test all 8 bits
getKey_testLoop
	lsr ; bit put in carry
	bcs getKey_foundBit
	iny	; counter for next bit to test
	dex	; 
	bne getKey_testLoop
	
getKey_foundBit
	; x has the bit 0-7 or 8 if not found
	cpy #8
	beq getKey_NotFound
	
	lda (TEMP_VAR2),y  ; load screencode + bit offset
	rts 
	
getKey_NotFound
	lda #KEY_NOKEY ; not found
	
	; LineNumber: 346
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Key_Read
	;    Procedure type : User-defined procedure
	; LineNumber: 381
Key_Read
	; LineNumber: 383
	; Assigning single variable : Key_keyState
	lda #$0
	; Calling storevariable
	sta Key_keyState
	; LineNumber: 412
	
; // row to test
	; Assigning single variable : Key_temp
	; Calling storevariable
	sta Key_temp
Key_Read_forloop4
	; LineNumber: 386
	; LineNumber: 388
	; Assigning single variable : Key_KeyRow
	lda Key_temp
	; Calling storevariable
	sta Key_KeyRow
	; LineNumber: 390
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
		
		
	; LineNumber: 411
Key_Read_forloopcounter6
Key_Read_loopstart7
	; Compare is onpage
	inc Key_temp
	lda #$a
	cmp Key_temp ;keep
	bne Key_Read_forloop4
Key_Read_loopdone11: ;keep
Key_Read_forloopend5
Key_Read_loopend8
	; LineNumber: 413
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Key_GetHeld
	;    Procedure type : User-defined procedure
	; LineNumber: 460
	; LineNumber: 446
Key_screencodes_graphic	
	dc.b	$21, $23, $25, $26, 40, 255, 255, 255, 34
	dc.b	$24, $27, $1c, 41, 255, 255, 254, $11, $05
	dc.b	$14, $15, $0f, 70, $37, $39, $17, $12, $19
	dc.b	$09, $10, 255, $38, $2f, $01, $04, $07, $0a
	dc.b	$0c, 255, $34, $36, $13, $06, $08, $0b, $3a
	dc.b	255, $35, $2a, $1a, $03, $02, $0d, $3b, 255
	dc.b	$31, $33, $18, $16, $0e, 44, $3f, 255, $32
	dc.b	$2b, 255, $00, $1d, 255, $3e, 255, $30, $2d
	dc.b	255, $1b, $20, $3c, 255, 255, $2e, $3d 
Key_GetHeld_block12
Key_GetHeld
	; LineNumber: 469
	; Assigning single variable : Key_temp
	lda #$0
	; Calling storevariable
	sta Key_temp
Key_GetHeld_forloop13
	; LineNumber: 463
	; LineNumber: 465
	
; // Look up tables to convert key row / columns to screencodes
; // note: only text, numbers, punctuation and ins/del key are listed
; //       everything else is nokey so not detected in this table
	; Assigning memory location
	; Assigning single variable : $5e
	; Assigning register : _a
	; Load Byte array
	ldx Key_temp
	lda Key_keysPressed,x
	; Assigning register : _y
	ldy Key_temp
	jsr Key__GetKeyOffset
	; Calling storevariable
	sta $5e
	; LineNumber: 466
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq Key_GetHeld_elsedoneblock29
Key_GetHeld_ConditionalTrueBlock27: ;Main true block ;keep 
	; LineNumber: 465
	lda $5e
	rts
Key_GetHeld_elsedoneblock29
	; LineNumber: 468
Key_GetHeld_forloopcounter15
Key_GetHeld_loopstart16
	; Compare is onpage
	inc Key_temp
	lda #$a
	cmp Key_temp ;keep
	bne Key_GetHeld_forloop13
Key_GetHeld_loopdone32: ;keep
Key_GetHeld_forloopend14
Key_GetHeld_loopend17
	; LineNumber: 471
	
; // no key held!
	lda #$ff
	rts
	; LineNumber: 473
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : cursor_home
	;    Procedure type : User-defined procedure
	; LineNumber: 12
cursor_home
	; LineNumber: 14
	; Assigning register : _a
	lda #$13
	; LineNumber: 15
	jsr $FFD2
	; LineNumber: 17
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : cursor_clear
	;    Procedure type : User-defined procedure
	; LineNumber: 20
cursor_clear
	; LineNumber: 22
	; Assigning register : _a
	lda #$93
	; LineNumber: 23
	jsr $FFD2
	; LineNumber: 25
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : cursor_return
	;    Procedure type : User-defined procedure
	; LineNumber: 28
cursor_return
	; LineNumber: 30
	; Assigning register : _a
	lda #$d
	; LineNumber: 31
	jsr $FFD2
	; LineNumber: 33
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : cursor_down
	;    Procedure type : User-defined procedure
	; LineNumber: 36
cursor_down
	; LineNumber: 38
	; Assigning register : _a
	lda #$11
	; LineNumber: 39
	jsr $FFD2
	; LineNumber: 41
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : basic_print
	;    Procedure type : User-defined procedure
	; LineNumber: 46
	; LineNumber: 45
next_ch	dc.b	0
	; LineNumber: 43
_ptr	= $02
basic_print_block37
basic_print
	; LineNumber: 48
	; Assigning single variable : next_ch
	lda #$0
	; Calling storevariable
	sta next_ch
	; LineNumber: 49
basic_print_while38
basic_print_loopstart42
	; Binary clause Simplified: NOTEQUALS
	; Load pointer array
	ldy next_ch
	lda (_ptr),y
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq basic_print_elsedoneblock41
basic_print_ConditionalTrueBlock39: ;Main true block ;keep 
	; LineNumber: 49
	; LineNumber: 51
	; Assigning register : _a
	; Load pointer array
	ldy next_ch
	lda (_ptr),y
	; LineNumber: 52
	jsr $FFD2
	; LineNumber: 53
	inc next_ch
	; LineNumber: 54
	jmp basic_print_while38
basic_print_elsedoneblock41
basic_print_loopend43
	; LineNumber: 56
	jsr cursor_return
	; LineNumber: 57
	jsr cursor_down
	; LineNumber: 59
	rts
	
; // Tests for Rom 4 explicitly
	; NodeProcedureDecl -1
	; ***********  Defining procedure : is_rom_4
	;    Procedure type : User-defined procedure
	; LineNumber: 63
is_rom_4
	; LineNumber: 65
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Peek
	lda $91 + $0
	and #$f0
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$e0;keep
	bne is_rom_4_elsedoneblock52
is_rom_4_ConditionalTrueBlock50: ;Main true block ;keep 
	; LineNumber: 64
	; LineNumber: 65
	
; // Register check
	lda #$1
	rts
	; LineNumber: 67
is_rom_4_elsedoneblock52
	; LineNumber: 69
	; Binary clause Simplified: EQUALS
	; Peek
	lda $c353 + $0
	; Compare with pure num / var optimization
	cmp #$a0;keep
	bne is_rom_4_elsedoneblock58
is_rom_4_ConditionalTrueBlock56: ;Main true block ;keep 
	; LineNumber: 70
	; LineNumber: 70
	
; // Alternate test
	lda #$1
	rts
	; LineNumber: 72
is_rom_4_elsedoneblock58
	; LineNumber: 74
	
; //4.0 ROMS
; // Pretty sure not v4 at this point
	lda #$0
	rts
	; LineNumber: 76
	rts
	
; // Hacky way to check for 80 column screen
	; NodeProcedureDecl -1
	; ***********  Defining procedure : is_80_columns
	;    Procedure type : User-defined procedure
	; LineNumber: 85
	; LineNumber: 82
char	dc.b	0
	; LineNumber: 83
test_string		dc.b	147
	dc.b	17
	dc.b	43
	dc.b	0
	; LineNumber: 84
screen_pointer	= $02
is_80_columns_block61
is_80_columns
	; LineNumber: 87
	; Assigning single variable : screen_pointer
	lda #$00
	ldx #$80
	sta screen_pointer
	stx screen_pointer+1
	; LineNumber: 94
	; Assigning single variable : char
	lda #$0
	; Calling storevariable
	sta char
is_80_columns_forloop62
	; LineNumber: 90
	; LineNumber: 91
	; Assigning register : _a
	; Load Unknown type array
	ldx char
	lda test_string,x
	; LineNumber: 92
	jsr $FFD2
	; LineNumber: 93
is_80_columns_forloopcounter64
is_80_columns_loopstart65
	; Compare is onpage
	inc char
	lda #$3
	cmp char ;keep
	bne is_80_columns_forloop62
is_80_columns_loopdone69: ;keep
is_80_columns_forloopend63
is_80_columns_loopend66
	; LineNumber: 95
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$50
	lda (screen_pointer),y
	; Compare with pure num / var optimization
	cmp #$2b;keep
	bne is_80_columns_elseblock72
is_80_columns_ConditionalTrueBlock71: ;Main true block ;keep 
	; LineNumber: 96
	; LineNumber: 97
	lda #$1
	rts
	; LineNumber: 99
	jmp is_80_columns_elsedoneblock73
is_80_columns_elseblock72
	; LineNumber: 100
	; LineNumber: 101
	lda #$0
	rts
	; LineNumber: 102
is_80_columns_elsedoneblock73
	; LineNumber: 104
	rts
block1
	; LineNumber: 110
	
; // Hacky way to check for 80 column screen
	; Assigning single variable : is_80
	jsr is_80_columns
	; Calling storevariable
	sta is_80
	; LineNumber: 111
	jsr cursor_down
	; LineNumber: 112
	jsr cursor_return
	; LineNumber: 114
	; Binary clause Simplified: EQUALS
	lda is_80
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne MainProgram_elseblock80
MainProgram_ConditionalTrueBlock79: ;Main true block ;keep 
	; LineNumber: 115
	; LineNumber: 116
	; Assigning single variable : _ptr
	lda #<eighty
	ldx #>eighty
	sta _ptr
	stx _ptr+1
	jsr basic_print
	; LineNumber: 118
	jmp MainProgram_elsedoneblock81
MainProgram_elseblock80
	; LineNumber: 119
	; LineNumber: 120
	; Assigning single variable : _ptr
	lda #<forty
	ldx #>forty
	sta _ptr
	stx _ptr+1
	jsr basic_print
	; LineNumber: 121
MainProgram_elsedoneblock81
	; LineNumber: 123
	jsr cursor_down
	; LineNumber: 126
	; Binary clause Simplified: EQUALS
	jsr is_rom_4
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne MainProgram_elseblock88
MainProgram_ConditionalTrueBlock87: ;Main true block ;keep 
	; LineNumber: 127
	; LineNumber: 128
	
; // Tests for Rom 4 explicitly
	; Assigning single variable : _ptr
	lda #<rom_4
	ldx #>rom_4
	sta _ptr
	stx _ptr+1
	jsr basic_print
	; LineNumber: 130
	jmp MainProgram_elsedoneblock89
MainProgram_elseblock88
	; LineNumber: 131
	; LineNumber: 132
	; Assigning single variable : _ptr
	lda #<not_rom_4
	ldx #>not_rom_4
	sta _ptr
	stx _ptr+1
	jsr basic_print
	; LineNumber: 133
MainProgram_elsedoneblock89
	; LineNumber: 135
MainProgram_while94
MainProgram_loopstart98
	; Binary clause Simplified: NOTEQUALS
	lda #$1
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock97
MainProgram_ConditionalTrueBlock95: ;Main true block ;keep 
	; LineNumber: 136
	; LineNumber: 137
	jsr Key_Read
	; LineNumber: 138
	; Binary clause Simplified: LESS
	jsr Key_GetHeld
	; Compare with pure num / var optimization
	cmp #$ff;keep
	bcs MainProgram_elsedoneblock135
MainProgram_ConditionalTrueBlock133: ;Main true block ;keep 
	; LineNumber: 139
	; LineNumber: 142
	; Binary clause Simplified: EQUALS
	jsr Key_GetHeld
	; Compare with pure num / var optimization
	cmp #$de;keep
	bne MainProgram_elseblock152
MainProgram_ConditionalTrueBlock151: ;Main true block ;keep 
	; LineNumber: 143
	; LineNumber: 144
	jsr cursor_clear
	; LineNumber: 145
	jsr cursor_home
	; LineNumber: 146
	; Assigning single variable : _ptr
	lda #<MainProgram_stringassignstr159
	sta _ptr
	lda #>MainProgram_stringassignstr159
	sta _ptr+1
	jsr basic_print
	; LineNumber: 148
	jmp MainProgram_elsedoneblock153
MainProgram_elseblock152
	; LineNumber: 149
	; LineNumber: 150
	; Assigning single variable : _ptr
	jsr Key_GetHeld
	sta _ptr
	sty _ptr+1
	jsr basic_print
	; LineNumber: 151
MainProgram_elsedoneblock153
	; LineNumber: 152
MainProgram_elsedoneblock135
	; LineNumber: 153
	jmp MainProgram_while94
MainProgram_elsedoneblock97
MainProgram_loopend99
	; LineNumber: 155
	; End of program
	; Ending memory block
EndBlock410
MainProgram_stringassignstr159	.dc "999",0
