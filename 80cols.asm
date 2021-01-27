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
	; LineNumber: 103
	jmp block1
	; LineNumber: 3
eighty		dc.b	"80COL"
	dc.b	0
	; LineNumber: 4
forty		dc.b	"40COL"
	dc.b	0
	; LineNumber: 5
rom_4		dc.b	"ROM4"
	dc.b	0
	; LineNumber: 6
not_rom_4		dc.b	"?ROM"
	dc.b	0
	; LineNumber: 7
is_80	dc.b	$00
	; NodeProcedureDecl -1
	; ***********  Defining procedure : cursor_return
	;    Procedure type : User-defined procedure
	; LineNumber: 26
cursor_return
	; LineNumber: 28
	; Assigning register : _a
	lda #$d
	; LineNumber: 29
	jsr $FFD2
	; LineNumber: 31
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : cursor_down
	;    Procedure type : User-defined procedure
	; LineNumber: 34
cursor_down
	; LineNumber: 36
	; Assigning register : _a
	lda #$11
	; LineNumber: 37
	jsr $FFD2
	; LineNumber: 39
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : basic_print
	;    Procedure type : User-defined procedure
	; LineNumber: 44
	; LineNumber: 43
next_ch	dc.b	0
	; LineNumber: 41
_ptr	= $02
basic_print_block4
basic_print
	; LineNumber: 46
	; Assigning single variable : next_ch
	lda #$0
	; Calling storevariable
	sta next_ch
	; LineNumber: 47
basic_print_while5
basic_print_loopstart9
	; Binary clause Simplified: NOTEQUALS
	; Load pointer array
	ldy next_ch
	lda (_ptr),y
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq basic_print_elsedoneblock8
basic_print_ConditionalTrueBlock6: ;Main true block ;keep 
	; LineNumber: 47
	; LineNumber: 49
	; Assigning register : _a
	; Load pointer array
	ldy next_ch
	lda (_ptr),y
	; LineNumber: 50
	jsr $FFD2
	; LineNumber: 51
	inc next_ch
	; LineNumber: 52
	jmp basic_print_while5
basic_print_elsedoneblock8
basic_print_loopend10
	; LineNumber: 54
	jsr cursor_return
	; LineNumber: 55
	jsr cursor_down
	; LineNumber: 57
	rts
	
; // Tests for Rom 4 explicitly
	; NodeProcedureDecl -1
	; ***********  Defining procedure : is_rom_4
	;    Procedure type : User-defined procedure
	; LineNumber: 61
is_rom_4
	; LineNumber: 63
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Peek
	lda $91 + $0
	and #$f0
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$e0;keep
	bne is_rom_4_elsedoneblock19
is_rom_4_ConditionalTrueBlock17: ;Main true block ;keep 
	; LineNumber: 62
	; LineNumber: 63
	
; // Register check
	lda #$1
	rts
	; LineNumber: 65
is_rom_4_elsedoneblock19
	; LineNumber: 67
	; Binary clause Simplified: EQUALS
	; Peek
	lda $c353 + $0
	; Compare with pure num / var optimization
	cmp #$a0;keep
	bne is_rom_4_elsedoneblock25
is_rom_4_ConditionalTrueBlock23: ;Main true block ;keep 
	; LineNumber: 68
	; LineNumber: 68
	
; // Alternate test
	lda #$1
	rts
	; LineNumber: 70
is_rom_4_elsedoneblock25
	; LineNumber: 72
	
; //4.0 ROMS
; // Pretty sure not v4 at this point
	lda #$0
	rts
	; LineNumber: 74
	rts
	
; // Hacky way to check for 80 column screen
	; NodeProcedureDecl -1
	; ***********  Defining procedure : is_80_columns
	;    Procedure type : User-defined procedure
	; LineNumber: 83
	; LineNumber: 80
char	dc.b	0
	; LineNumber: 81
test_string		dc.b	147
	dc.b	17
	dc.b	43
	dc.b	0
	; LineNumber: 82
screen_pointer	= $02
is_80_columns_block28
is_80_columns
	; LineNumber: 85
	; Assigning single variable : screen_pointer
	lda #$00
	ldx #$80
	sta screen_pointer
	stx screen_pointer+1
	; LineNumber: 92
	; Assigning single variable : char
	lda #$0
	; Calling storevariable
	sta char
is_80_columns_forloop29
	; LineNumber: 88
	; LineNumber: 89
	; Assigning register : _a
	; Load Unknown type array
	ldx char
	lda test_string,x
	; LineNumber: 90
	jsr $FFD2
	; LineNumber: 91
is_80_columns_forloopcounter31
is_80_columns_loopstart32
	; Compare is onpage
	inc char
	lda #$3
	cmp char ;keep
	bne is_80_columns_forloop29
is_80_columns_loopdone36: ;keep
is_80_columns_forloopend30
is_80_columns_loopend33
	; LineNumber: 93
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$50
	lda (screen_pointer),y
	; Compare with pure num / var optimization
	cmp #$2b;keep
	bne is_80_columns_elseblock39
is_80_columns_ConditionalTrueBlock38: ;Main true block ;keep 
	; LineNumber: 94
	; LineNumber: 95
	lda #$1
	rts
	; LineNumber: 97
	jmp is_80_columns_elsedoneblock40
is_80_columns_elseblock39
	; LineNumber: 98
	; LineNumber: 99
	lda #$0
	rts
	; LineNumber: 100
is_80_columns_elsedoneblock40
	; LineNumber: 102
	rts
block1
	; LineNumber: 106
	
; // Hacky way to check for 80 column screen
	; Assigning single variable : is_80
	jsr is_80_columns
	; Calling storevariable
	sta is_80
	; LineNumber: 107
	jsr cursor_down
	; LineNumber: 108
	jsr cursor_return
	; LineNumber: 110
	; Binary clause Simplified: EQUALS
	lda is_80
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne MainProgram_elseblock47
MainProgram_ConditionalTrueBlock46: ;Main true block ;keep 
	; LineNumber: 111
	; LineNumber: 112
	; Assigning single variable : _ptr
	lda #<eighty
	ldx #>eighty
	sta _ptr
	stx _ptr+1
	jsr basic_print
	; LineNumber: 114
	jmp MainProgram_elsedoneblock48
MainProgram_elseblock47
	; LineNumber: 115
	; LineNumber: 116
	; Assigning single variable : _ptr
	lda #<forty
	ldx #>forty
	sta _ptr
	stx _ptr+1
	jsr basic_print
	; LineNumber: 117
MainProgram_elsedoneblock48
	; LineNumber: 119
	jsr cursor_down
	; LineNumber: 122
	; Binary clause Simplified: EQUALS
	jsr is_rom_4
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne MainProgram_elseblock55
MainProgram_ConditionalTrueBlock54: ;Main true block ;keep 
	; LineNumber: 123
	; LineNumber: 124
	
; // Tests for Rom 4 explicitly
	; Assigning single variable : _ptr
	lda #<rom_4
	ldx #>rom_4
	sta _ptr
	stx _ptr+1
	jsr basic_print
	; LineNumber: 126
	jmp MainProgram_elsedoneblock56
MainProgram_elseblock55
	; LineNumber: 127
	; LineNumber: 128
	; Assigning single variable : _ptr
	lda #<not_rom_4
	ldx #>not_rom_4
	sta _ptr
	stx _ptr+1
	jsr basic_print
	; LineNumber: 129
MainProgram_elsedoneblock56
	; LineNumber: 130
	jmp * ; loop like (�/%
	; LineNumber: 131
	; End of program
	; Ending memory block
EndBlock410
