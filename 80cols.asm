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
	; LineNumber: 114
	jmp block1
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
	; ***********  Defining procedure : uppercase
	;    Procedure type : User-defined procedure
	; LineNumber: 21
uppercase
	; LineNumber: 22
	; Assigning register : _a
	lda #$8e
	; LineNumber: 23
	jsr $FFD2
	; LineNumber: 24
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : cursor_return
	;    Procedure type : User-defined procedure
	; LineNumber: 35
cursor_return
	; LineNumber: 37
	; Assigning register : _a
	lda #$d
	; LineNumber: 38
	jsr $FFD2
	; LineNumber: 40
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : cursor_down
	;    Procedure type : User-defined procedure
	; LineNumber: 43
cursor_down
	; LineNumber: 45
	; Assigning register : _a
	lda #$11
	; LineNumber: 46
	jsr $FFD2
	; LineNumber: 48
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : basic_print
	;    Procedure type : User-defined procedure
	; LineNumber: 53
	; LineNumber: 52
next_ch	dc.b	0
	; LineNumber: 50
_ptr	= $02
basic_print_block5
basic_print
	; LineNumber: 55
	; Assigning single variable : next_ch
	lda #$0
	; Calling storevariable
	sta next_ch
	; LineNumber: 56
basic_print_while6
basic_print_loopstart10
	; Binary clause Simplified: NOTEQUALS
	; Load pointer array
	ldy next_ch
	lda (_ptr),y
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq basic_print_elsedoneblock9
basic_print_ConditionalTrueBlock7: ;Main true block ;keep 
	; LineNumber: 56
	; LineNumber: 58
	; Assigning register : _a
	; Load pointer array
	ldy next_ch
	lda (_ptr),y
	; LineNumber: 59
	jsr $FFD2
	; LineNumber: 60
	inc next_ch
	; LineNumber: 61
	jmp basic_print_while6
basic_print_elsedoneblock9
basic_print_loopend11
	; LineNumber: 63
	jsr cursor_return
	; LineNumber: 64
	jsr cursor_down
	; LineNumber: 66
	rts
	
; // Tests for Rom 4 explicitly
	; NodeProcedureDecl -1
	; ***********  Defining procedure : is_rom_4
	;    Procedure type : User-defined procedure
	; LineNumber: 70
is_rom_4
	; LineNumber: 72
	; Binary clause Simplified: EQUALS
	; 8 bit binop
	; Add/sub where right value is constant number
	; Peek
	lda $91 + $0
	and #$f0
	 ; end add / sub var with constant
	; Compare with pure num / var optimization
	cmp #$e0;keep
	bne is_rom_4_elsedoneblock20
is_rom_4_ConditionalTrueBlock18: ;Main true block ;keep 
	; LineNumber: 71
	; LineNumber: 72
	
; // Register check
	lda #$1
	rts
	; LineNumber: 74
is_rom_4_elsedoneblock20
	; LineNumber: 76
	; Binary clause Simplified: EQUALS
	; Peek
	lda $c353 + $0
	; Compare with pure num / var optimization
	cmp #$a0;keep
	bne is_rom_4_elsedoneblock26
is_rom_4_ConditionalTrueBlock24: ;Main true block ;keep 
	; LineNumber: 77
	; LineNumber: 77
	
; // Alternate test
	lda #$1
	rts
	; LineNumber: 79
is_rom_4_elsedoneblock26
	; LineNumber: 81
	
; //4.0 ROMS
; // Pretty sure not v4 at this point
	lda #$0
	rts
	; LineNumber: 83
	rts
	
; // Hacky way to check for 80 column screen
	; NodeProcedureDecl -1
	; ***********  Defining procedure : is_80_columns
	;    Procedure type : User-defined procedure
	; LineNumber: 92
	; LineNumber: 89
char	dc.b	0
	; LineNumber: 90
test_string		dc.b	147
	dc.b	17
	dc.b	43
	dc.b	0
	; LineNumber: 91
screen_pointer	= $02
is_80_columns_block29
is_80_columns
	; LineNumber: 94
	; Assigning single variable : screen_pointer
	lda #$00
	ldx #$80
	sta screen_pointer
	stx screen_pointer+1
	; LineNumber: 101
	; Assigning single variable : char
	lda #$0
	; Calling storevariable
	sta char
is_80_columns_forloop30
	; LineNumber: 97
	; LineNumber: 98
	; Assigning register : _a
	; Load Unknown type array
	ldx char
	lda test_string,x
	; LineNumber: 99
	jsr $FFD2
	; LineNumber: 100
is_80_columns_forloopcounter32
is_80_columns_loopstart33
	; Compare is onpage
	inc char
	lda #$3
	cmp char ;keep
	bne is_80_columns_forloop30
is_80_columns_loopdone37: ;keep
is_80_columns_forloopend31
is_80_columns_loopend34
	; LineNumber: 102
	; Binary clause Simplified: EQUALS
	; Load pointer array
	ldy #$50
	lda (screen_pointer),y
	; Compare with pure num / var optimization
	cmp #$2b;keep
	bne is_80_columns_elseblock40
is_80_columns_ConditionalTrueBlock39: ;Main true block ;keep 
	; LineNumber: 103
	; LineNumber: 104
	lda #$1
	rts
	; LineNumber: 106
	jmp is_80_columns_elsedoneblock41
is_80_columns_elseblock40
	; LineNumber: 107
	; LineNumber: 108
	lda #$0
	rts
	; LineNumber: 109
is_80_columns_elsedoneblock41
	; LineNumber: 111
	rts
block1
	; LineNumber: 117
	
; // Hacky way to check for 80 column screen
	; Assigning single variable : is_80
	jsr is_80_columns
	; Calling storevariable
	sta is_80
	; LineNumber: 118
	jsr cursor_down
	; LineNumber: 119
	jsr cursor_return
	; LineNumber: 120
	jsr uppercase
	; LineNumber: 121
	; Binary clause Simplified: EQUALS
	lda is_80
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne MainProgram_elseblock48
MainProgram_ConditionalTrueBlock47: ;Main true block ;keep 
	; LineNumber: 122
	; LineNumber: 123
	; Assigning single variable : _ptr
	lda #<eighty
	ldx #>eighty
	sta _ptr
	stx _ptr+1
	jsr basic_print
	; LineNumber: 125
	jmp MainProgram_elsedoneblock49
MainProgram_elseblock48
	; LineNumber: 126
	; LineNumber: 127
	; Assigning single variable : _ptr
	lda #<forty
	ldx #>forty
	sta _ptr
	stx _ptr+1
	jsr basic_print
	; LineNumber: 128
MainProgram_elsedoneblock49
	; LineNumber: 130
	jsr cursor_down
	; LineNumber: 133
	; Binary clause Simplified: EQUALS
	jsr is_rom_4
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne MainProgram_elseblock56
MainProgram_ConditionalTrueBlock55: ;Main true block ;keep 
	; LineNumber: 134
	; LineNumber: 135
	
; // Tests for Rom 4 explicitly
	; Assigning single variable : _ptr
	lda #<rom_4
	ldx #>rom_4
	sta _ptr
	stx _ptr+1
	jsr basic_print
	; LineNumber: 137
	jmp MainProgram_elsedoneblock57
MainProgram_elseblock56
	; LineNumber: 138
	; LineNumber: 139
	; Assigning single variable : _ptr
	lda #<not_rom_4
	ldx #>not_rom_4
	sta _ptr
	stx _ptr+1
	jsr basic_print
	; LineNumber: 140
MainProgram_elsedoneblock57
	; LineNumber: 145
	; End of program
	; Ending memory block
EndBlock410
