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
Tex
	; LineNumber: 77
	jmp block1
	; LineNumber: 3
Key_temp	dc.b	0
	; LineNumber: 5
Key_keyState	dc.b	0
	; LineNumber: 7
Key_KeyRow = $e810
	; LineNumber: 8
Key_KeyRead = $e812
	; LineNumber: 9
Key_KeyInterrupt = $e813
	; LineNumber: 12
Key_keys	dc.b	 
	org Key_keys+10
	; LineNumber: 13
Key_keysLast	dc.b	 
	org Key_keysLast+10
	; LineNumber: 14
Key_keysPressed	dc.b	 
	org Key_keysPressed+10
	; LineNumber: 142
Key_screencodes	
 dc.b 69
 dc.b 72
 dc.b 74
 dc.b 34
	dc.b	$21, $23, $25, $26, $28, $39, $32, $34, $34
 dc.b 255
 dc.b 73
 dc.b 75
	dc.b	$24, $27, $29, $35, $35, $33, $35, $11, $05
 dc.b 70
	dc.b	$14, $15, $0f, $30, $37, $39, $17, $12, $19
 dc.b 255
	dc.b	$09, $10, $35, $35, $38, $2f, $01, $04, $07
 dc.b 255
	dc.b	$0a, $0c, $35, $35, $34, $36, $13, $06, $08
 dc.b 255
	dc.b	$0b, $3a, $35, $35, $35, $2a, $1a, $03, $02
 dc.b 71
 dc.b 44
	dc.b	$0d, $3b, $31, $31, $33, $18, $16, $0e, $34
 dc.b 255
 dc.b 65
 dc.b 255
	dc.b	$3f, $35, $35, $32, $2b, $35, $00, $1d, $35
 dc.b 66
 dc.b 67
	dc.b	$35, $3e, $36, $30, $2d, $37, $1b, $20, $3c
 dc.b 68
 dc.b 255
	dc.b	$38, $35, $35, $2e, $3d, 0
	; LineNumber: 11
Tex_tp	= $68
	; LineNumber: 12
Tex_pos	dc.b	0
	; LineNumber: 13
Tex_len	dc.b	0
	; LineNumber: 15
Tex_keyRepeat	dc.b	0
	; LineNumber: 16
Tex_keyDelay	dc.b	0
	; LineNumber: 18
Tex_invert	dc.b	$80
	; LineNumber: 20
Tex_i = $fd
	; LineNumber: 22
Tex_keyDown = $97
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Key_Key_GetKeyOffset
	;    Procedure type : User-defined procedure
	; LineNumber: 171
	; LineNumber: 170
	; LineNumber: 170
Key_Key_GetKeyOffset_block2
Key_Key_GetKeyOffset
	; LineNumber: 174
	; ****** Inline assembler section
	
	; pass with _a containing key to check 1, 2, 4, 8, 16, 32, 64, 128
	; and y the roww offset 0 - 9
	tya ; multiply by 8 to find starting pos in array
	asl
	asl
	asl ; *8
	sta TEMP_VAR1
	
	; use temporary variable as a pointer
	lda #>Key_screencodes
	sta TEMP_VAR2+1 ; high byte
	lda #<Key_screencodes
	sta TEMP_VAR2 ; low byte
	
	clc
	adc TEMP_VAR1
	sta TEMP_VAR1
	bcc getKey_NoOverflow
	inc TEMP_VAR2+1 ; byte overflow, update high byte
	
getKey_NoOverflow
	; then work out the offest 0 - 7
	
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
	cpx #8
	beq getKey_NotFound
	
	lda (TEMP_VAR2),y  ; load screencode + bit offset
	rts 
	
getKey_NotFound
	lda #KEY_NOKEY ; not found
	
	; LineNumber: 223
	rts
	
; // convert bit position to number*
; //Disables the keyboard interrupt which is needed to correctly detect
; //key presses and keys being held by this unit. Call once at the beginning
; //of your program. Use EnableKeyInt(); to enable the interrupt again.
; //*
	;*
; //Enables the keyboard interrupt returning it to its default state.
; //Do this if you need to use the Kernal keyboard routines.
; //*
	;*
; //Read the full 10 row keyboard matrix 
; //and populate the keyboard flags
; //*
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Key_Read
	;    Procedure type : User-defined procedure
	; LineNumber: 254
Key_Read
	; LineNumber: 256
	; Assigning single variable : Key_keyState
	lda #$0
	; Calling storevariable
	sta Key_keyState
	; LineNumber: 285
	
; // row to test
	; Assigning single variable : Key_temp
	; Calling storevariable
	sta Key_temp
Key_Read_forloop4
	; LineNumber: 259
	; LineNumber: 261
	; Assigning single variable : Key_KeyRow
	lda Key_temp
	; Calling storevariable
	sta Key_KeyRow
	; LineNumber: 263
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
		adc Key_NoKey
		sta Key_NoKey
		
		
	; LineNumber: 284
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
	; LineNumber: 286
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Key_Held
	;    Procedure type : User-defined procedure
	; LineNumber: 289
	; LineNumber: 288
Key_Held_block12
Key_Held
	; LineNumber: 291
	; ****** Inline assembler section
	
	sty Key_temp
	lda Key_keys,x
	and Key_temp 	; contains column 
	
	
	; LineNumber: 299
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Key_Pressed
	;    Procedure type : User-defined procedure
	; LineNumber: 302
	; LineNumber: 301
Key_Pressed_block13
Key_Pressed
	; LineNumber: 304
	; ****** Inline assembler section
	
	sty Key_temp
	lda Key_keysPressed,x
	and Key_temp 	; contains column 
	
	; LineNumber: 312
	rts
	;*
; //Gets a key being held. If multiple keys 
; //are pressed, returns the first key found.
; //*
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Key_GetHeld
	;    Procedure type : User-defined procedure
	; LineNumber: 319
Key_GetHeld
	; LineNumber: 328
	; Assigning single variable : Key_temp
	lda #$0
	; Calling storevariable
	sta Key_temp
Key_GetHeld_forloop15
	; LineNumber: 322
	; LineNumber: 324
	; Assigning memory location
	; Assigning single variable : $5e
	; Assigning register : _a
	; Load Byte array
	ldx Key_temp
	lda Key_keys,x
	; Assigning register : _y
	ldy Key_temp
	jsr Key_Key_GetKeyOffset
	; Calling storevariable
	sta $5e
	; LineNumber: 325
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq Key_GetHeld_elsedoneblock31
Key_GetHeld_ConditionalTrueBlock29: ;Main true block ;keep 
	; LineNumber: 324
	lda $5e
	rts
Key_GetHeld_elsedoneblock31
	; LineNumber: 327
Key_GetHeld_forloopcounter17
Key_GetHeld_loopstart18
	; Compare is onpage
	inc Key_temp
	lda #$a
	cmp Key_temp ;keep
	bne Key_GetHeld_forloop15
Key_GetHeld_loopdone34: ;keep
Key_GetHeld_forloopend16
Key_GetHeld_loopend19
	; LineNumber: 330
	
; // no key held!
	lda #$ff
	rts
	; LineNumber: 332
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Key_SetupScreenCodes
	;    Procedure type : User-defined procedure
	; LineNumber: 335
Key_SetupScreenCodes
	; LineNumber: 337
	; Assigning memory location
	; Assigning single variable : $5e
	; Load Unknown type array
	ldx #$0
	lda Key_screencodes,x
	; Calling storevariable
	sta $5e
	; LineNumber: 339
	rts
	
; //pointer to memory to store string
; //position in string
; //length of string
; //
; //table of chars -- row/col to screencodes
; //
; // pointer to the text string
; // position of 'cursor' in the text string
; // length of the text string
; // how fast to repeat keys
; // time on first press before 
; // set to 0 or 128
; // temp var - gap between screenmemory and colormemory pointers
; // interrupt populates key
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Tex_SetInputString
	;    Procedure type : User-defined procedure
	; LineNumber: 29
	; LineNumber: 28
	; LineNumber: 28
Tex_SetInputString_block36
Tex_SetInputString
	; LineNumber: 32
	
; // sets up the string to use for input 
; //(global params handle the assignment)
	; Assigning single variable : Tex_pos
	lda #$0
	; Calling storevariable
	sta Tex_pos
	; LineNumber: 34
	rts
	
; // set position to start of string
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Tex_ClearInputString
	;    Procedure type : User-defined procedure
	; LineNumber: 37
Tex_ClearInputString
	; LineNumber: 41
	; Assigning single variable : Tex_i
	lda #$0
	; Calling storevariable
	sta Tex_i
Tex_ClearInputString_forloop38
	; LineNumber: 39
	; Assigning single variable : Tex_tp
	; Store Variable simplified optimization : right-hand term is pure
	ldy Tex_i ; optimized, look out for bugs
	lda #$20
	sta (Tex_tp),y
Tex_ClearInputString_forloopcounter40
Tex_ClearInputString_loopstart41
	; Compare is onpage
	inc Tex_i
	lda Tex_len
	cmp Tex_i ;keep
	bne Tex_ClearInputString_forloop38
Tex_ClearInputString_loopdone45: ;keep
Tex_ClearInputString_forloopend39
Tex_ClearInputString_loopend42
	; LineNumber: 42
	rts
	;*
; //<p>Draw input string at current screenmemory pointer location.</p>
; //*
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Tex_Write
	;    Procedure type : User-defined procedure
	; LineNumber: 48
Tex_Write
	; LineNumber: 55
	; Assigning single variable : Tex_i
	lda #$0
	; Calling storevariable
	sta Tex_i
Tex_Write_forloop47
	; LineNumber: 53
	
; //if( tp[ i ] >= 64 and tp[ i ] <= 96 ) then
; //	screenmemory[ i ] := tp[ i ] - 64 | invert
; //else
	; Assigning single variable : screenmemory
	; 8 bit binop
	; Add/sub where right value is constant number
	; Load pointer array
	ldy Tex_i
	lda (Tex_tp),y
	ora Tex_invert
	 ; end add / sub var with constant
	; Calling storevariable
	; Storing to a pointer
	sta (screenmemory),y
Tex_Write_forloopcounter49
Tex_Write_loopstart50
	; Compare is onpage
	inc Tex_i
	lda Tex_len
	cmp Tex_i ;keep
	bne Tex_Write_forloop47
Tex_Write_loopdone54: ;keep
Tex_Write_forloopend48
Tex_Write_loopend51
	; LineNumber: 56
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Tex_Read
	;    Procedure type : User-defined procedure
	; LineNumber: 59
Tex_Read
	; LineNumber: 62
	
; // read the keyboard matrix
	jsr Key_Read
	; LineNumber: 64
	; Binary clause Simplified: EQUALS
	lda Key_keyState
	; Compare with pure num / var optimization
	cmp #$0;keep
	bne Tex_Read_elsedoneblock59
Tex_Read_ConditionalTrueBlock57: ;Main true block ;keep 
	; LineNumber: 63
	rts
Tex_Read_elsedoneblock59
	; LineNumber: 67
	
; //end;
	; LineNumber: 70
	
; // no key pressed
; //if( keyDown <> 255 ) then
; //if( keyDown >= 27 and keyDown <= 96 ) then
; //begin
	; Assigning single variable : Tex_tp
	jsr Key_GetHeld
	; Calling storevariable
	; Storing to a pointer
	ldy Tex_pos ; optimized, look out for bugs
	sta (Tex_tp),y
	; LineNumber: 73
	; LineNumber: 75
	rts
block1
	; End of program
	; Ending memory block
EndBlock410
