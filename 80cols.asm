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
	; LineNumber: 51
	jmp block1
	; LineNumber: 3
eighty	
	dc.b	$38, $30, $20, $03, $0f, $0c, $15, $0d, $0e
	dc.b	$13, 0
	; LineNumber: 4
forty	
	dc.b	$34, $30, $20, $03, $0f, $0c, $15, $0d, $0e
	dc.b	$13, 0
	; LineNumber: 5
rom_4	
	dc.b	$12, $0f, $0d, $20, $34, 0
	; NodeProcedureDecl -1
	; ***********  Defining procedure : initmoveto
	;    Procedure type : Built-in function
	;    Requires initialization : no
	jmp initmoveto_moveto2
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
initmoveto_moveto2
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
	
; // Tests for Rom 4 explicitly
	; NodeProcedureDecl -1
	; ***********  Defining procedure : is_rom_4
	;    Procedure type : User-defined procedure
	; LineNumber: 9
is_rom_4
	; LineNumber: 12
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Peek
	lda $91 + $0
	and #$f0
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$e0;keep
	bne is_rom_4_elsedoneblock7
is_rom_4_ConditionalTrueBlock5: ;Main true block ;keep 
	; LineNumber: 11
	; LineNumber: 13
	; LineNumber: 14
is_rom_4_elsedoneblock7
	; LineNumber: 17
	; Binary clause Simplified: EQUALS
	; Peek
	lda $c353 + $0
	; Compare with pure num / var optimization
	cmp #$a0;keep
	bne is_rom_4_elsedoneblock13
is_rom_4_ConditionalTrueBlock11: ;Main true block ;keep 
	; LineNumber: 18
	; LineNumber: 20
	; LineNumber: 20
is_rom_4_elsedoneblock13
	; LineNumber: 24
	; LineNumber: 25
	rts
	
; //4.0 ROMS
; // Pretty sure not v4 at this point
; // Hacky way to check for 80 column screen
	; NodeProcedureDecl -1
	; ***********  Defining procedure : is_80_columns
	;    Procedure type : User-defined procedure
	; LineNumber: 33
	; LineNumber: 30
char	dc.b	0
	; LineNumber: 31
test_string		dc.b	147
	dc.b	17
	dc.b	43
	dc.b	0
is_80_columns_block16
is_80_columns
	; LineNumber: 39
	; Assigning single variable : char
	lda #$0
	; Calling storevariable
	sta char
is_80_columns_forloop17
	; LineNumber: 35
	; LineNumber: 36
	; Assigning register : _a
	; Load Unknown type array
	ldx char
	lda test_string,x
	; LineNumber: 37
	jsr $FFD2
	; LineNumber: 38
is_80_columns_forloopcounter19
is_80_columns_loopstart20
	; Compare is onpage
	inc char
	lda #$3
	cmp char ;keep
	bne is_80_columns_forloop17
is_80_columns_loopdone24: ;keep
is_80_columns_forloopend18
is_80_columns_loopend21
	; LineNumber: 40
	; Binary clause Simplified: EQUALS
	; Load Unknown type array
	ldx #$50
	lda $8000,x
	; Compare with pure num / var optimization
	cmp #$2b;keep
	bne is_80_columns_elseblock27
is_80_columns_ConditionalTrueBlock26: ;Main true block ;keep 
	; LineNumber: 41
	; LineNumber: 43
	; LineNumber: 44
	jmp is_80_columns_elsedoneblock28
is_80_columns_elseblock27
	; LineNumber: 45
	; LineNumber: 47
	; LineNumber: 47
is_80_columns_elsedoneblock28
	; LineNumber: 48
	rts
block1
	; LineNumber: 52
	; LineNumber: 54
	; Assigning memory location
	; Assigning single variable : $8000
	; Integer constant assigning
	ldy #$80
	lda #$00
	; Calling storevariable
	sta $8000
	; LineNumber: 55
	; Assigning single variable : screenmemory
	ldx #$80
	sta screenmemory
	stx screenmemory+1
	; LineNumber: 58
	; Binary clause Simplified: EQUALS
	jsr is_80_columns
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne MainProgram_elseblock35
MainProgram_ConditionalTrueBlock34: ;Main true block ;keep 
	; LineNumber: 59
	; LineNumber: 60
	
; // Hacky way to check for 80 column screen
	clc
	lda #<eighty
	adc #$0
	ldy #>eighty
	sta print_text+0
	sty print_text+1
	ldx #$a ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 62
	jmp MainProgram_elsedoneblock36
MainProgram_elseblock35
	; LineNumber: 63
	; LineNumber: 64
	clc
	lda #<forty
	adc #$0
	ldy #>forty
	sta print_text+0
	sty print_text+1
	ldx #$a ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 65
MainProgram_elsedoneblock36
	; LineNumber: 69
	; Binary clause Simplified: EQUALS
	jsr is_rom_4
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne MainProgram_elsedoneblock52
MainProgram_ConditionalTrueBlock50: ;Main true block ;keep 
	; LineNumber: 70
	; LineNumber: 71
	
; // Tests for Rom 4 explicitly
	; MoveTo optimization
	lda #$2a
	sta screenmemory
	lda #>$8000
	clc
	adc #$03
	sta screenmemory+1
	; LineNumber: 72
	clc
	lda #<rom_4
	adc #$0
	ldy #>rom_4
	sta print_text+0
	sty print_text+1
	ldx #$5 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 73
MainProgram_elsedoneblock52
	; LineNumber: 75
	jmp * ; loop like (�/%
	; LineNumber: 77
	; End of program
	; Ending memory block
EndBlock410
