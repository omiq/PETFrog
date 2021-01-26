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
Key
	; LineNumber: 347
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
	; LineNumber: 144
Key_screencodes	
	dc.b	$21, $23, $25, $26, 40, 69, 72, 74, 34
	dc.b	$24, $27, , 41, 255, 73, 75, $11, $05
	dc.b	$14, $15, $0f, 70, $37, $39, $17, $12, $19
	dc.b	$09, $10, 255, $38, $2f, $01, $04, $07, $0a
	dc.b	$0c, 255, $34, $36, $13, $06, $08, $0b, $3a
	dc.b	255, $35, $2a, $1a, $03, $02, $0d, $3b, 71
	dc.b	$31, $33, $18, $16, $0e, 44, $3f, 255, $32
	dc.b	$2b, 255, $00, $1d, 255, $3e, 255, $30, $2d
	dc.b	67, $1b, $20, $3c, 68, 255, $2e, $3d, 0
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Key__GetKeyOffset
	;    Procedure type : User-defined procedure
	; LineNumber: 175
	; LineNumber: 174
	; LineNumber: 174
Key__GetKeyOffset_block2
Key__GetKeyOffset
	; LineNumber: 178
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
	lda #>Key_screencodes
	sta TEMP_VAR2+1 ; high byte
	lda #<Key_screencodes
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
	
	; LineNumber: 230
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
	; LineNumber: 261
Key_Read
	; LineNumber: 263
	; Assigning single variable : Key_keyState
	lda #$0
	; Calling storevariable
	sta Key_keyState
	; LineNumber: 292
	
; // row to test
	; Assigning single variable : Key_temp
	; Calling storevariable
	sta Key_temp
Key_Read_forloop4
	; LineNumber: 266
	; LineNumber: 268
	; Assigning single variable : Key_KeyRow
	lda Key_temp
	; Calling storevariable
	sta Key_KeyRow
	; LineNumber: 270
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
		
		
	; LineNumber: 291
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
	; LineNumber: 293
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Key_Held
	;    Procedure type : User-defined procedure
	; LineNumber: 296
	; LineNumber: 295
Key_Held_block12
Key_Held
	; LineNumber: 298
	; ****** Inline assembler section
	
	sty Key_temp
	lda Key_keys,x
	and Key_temp 	; contains column 
	
	
	; LineNumber: 306
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Key_Pressed
	;    Procedure type : User-defined procedure
	; LineNumber: 309
	; LineNumber: 308
Key_Pressed_block13
Key_Pressed
	; LineNumber: 311
	; ****** Inline assembler section
	
	sty Key_temp
	lda Key_keysPressed,x
	and Key_temp 	; contains column 
	
	; LineNumber: 319
	rts
	;*
; //Gets a key being held. If multiple keys 
; //are pressed, returns the first key found.
; //*
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Key_GetHeld
	;    Procedure type : User-defined procedure
	; LineNumber: 326
Key_GetHeld
	; LineNumber: 335
	; Assigning single variable : Key_temp
	lda #$0
	; Calling storevariable
	sta Key_temp
Key_GetHeld_forloop15
	; LineNumber: 329
	; LineNumber: 331
	
; //addbreakpoint();
	; Assigning memory location
	; Assigning single variable : $5e
	; Assigning register : _a
	; Load Byte array
	ldx Key_temp
	lda Key_keys,x
	; Assigning register : _y
	ldy Key_temp
	jsr Key__GetKeyOffset
	; Calling storevariable
	sta $5e
	; LineNumber: 332
	; Binary clause Simplified: NOTEQUALS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq Key_GetHeld_elsedoneblock31
Key_GetHeld_ConditionalTrueBlock29: ;Main true block ;keep 
	; LineNumber: 331
	lda $5e
	rts
Key_GetHeld_elsedoneblock31
	; LineNumber: 334
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
	; LineNumber: 337
	
; // no key held!
	lda #$ff
	rts
	; LineNumber: 339
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Key_SetupScreenCodes
	;    Procedure type : User-defined procedure
	; LineNumber: 342
Key_SetupScreenCodes
	; LineNumber: 344
	; Assigning memory location
	; Assigning single variable : $5e
	; Load Unknown type array
	ldx #$0
	lda Key_screencodes,x
	; Calling storevariable
	sta $5e
	; LineNumber: 346
	rts
block1
	; End of program
	; Ending memory block
EndBlock410
