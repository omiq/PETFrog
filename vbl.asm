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
MyProgram
	; LineNumber: 19
	jmp block1
	; LineNumber: 3
a	dc.b	0
	; LineNumber: 4
oldti	dc.w	0
	; LineNumber: 4
ti	dc.w	0
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
	; NodeProcedureDecl -1
	; ***********  Defining procedure : _ti
	;    Procedure type : User-defined procedure
	; LineNumber: 11
	; LineNumber: 10
ti_temp	dc.w	0
_ti_block4
_ti
	; LineNumber: 13
	; Assigning single variable : ti_temp
	; Generic 16 bit op
	; integer assignment NodeVar
	ldy ti_temp+1 ; Next one
	lda ti_temp
_ti_rightvarInteger_var7 = $54
	sta _ti_rightvarInteger_var7
	sty _ti_rightvarInteger_var7+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	; Peek
	lda $8D + $0
	sta mul16x8_num1
	lda #0
	sta mul16x8_num1Hi
	; Integer constant assigning
	ldy #$01
	lda #$00
	sta mul16x8_num2
	jsr mul16x8_procedure
	sta mul16x8_num1
	sty mul16x8_num1Hi
	; Integer constant assigning
	ldy #$01
	lda #$00
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc _ti_rightvarInteger_var7
_ti_wordAdd5
	sta _ti_rightvarInteger_var7
	; High-bit binop
	tya
	adc _ti_rightvarInteger_var7+1
	tay
	lda _ti_rightvarInteger_var7
	; Calling storevariable
	sta ti_temp
	sty ti_temp+1
	; LineNumber: 14
	; Assigning single variable : ti_temp
	; Generic 16 bit op
	; integer assignment NodeVar
	ldy ti_temp+1 ; Next one
_ti_rightvarInteger_var10 = $54
	sta _ti_rightvarInteger_var10
	sty _ti_rightvarInteger_var10+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	; Peek
	lda $8D + $1
	sta mul16x8_num1
	lda #0
	sta mul16x8_num1Hi
	; Integer constant assigning
	ldy #$01
	lda #$00
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc _ti_rightvarInteger_var10
_ti_wordAdd8
	sta _ti_rightvarInteger_var10
	; High-bit binop
	tya
	adc _ti_rightvarInteger_var10+1
	tay
	lda _ti_rightvarInteger_var10
	; Calling storevariable
	sta ti_temp
	sty ti_temp+1
	; LineNumber: 15
	; Assigning single variable : ti_temp
	; Generic 16 bit op
	; integer assignment NodeVar
	ldy ti_temp+1 ; Next one
_ti_rightvarInteger_var13 = $54
	sta _ti_rightvarInteger_var13
	sty _ti_rightvarInteger_var13+1
	; Peek
	lda $8D + $2
	; Low bit binop:
	clc
	adc _ti_rightvarInteger_var13
_ti_wordAdd11
	sta _ti_rightvarInteger_var13
	; High-bit binop
	tya
	adc _ti_rightvarInteger_var13+1
	tay
	lda _ti_rightvarInteger_var13
	; Calling storevariable
	sta ti_temp
	sty ti_temp+1
	; LineNumber: 17
	; LineNumber: 17
	; integer assignment NodeVar
	ldy ti_temp+1 ; Next one
	rts
block1
	; LineNumber: 19
	; LineNumber: 21
	; Assigning memory location
	; Assigning single variable : $8000
	; Integer constant assigning
	ldy #$80
	lda #$00
	; Calling storevariable
	sta $8000
	; LineNumber: 22
	; Assigning single variable : screenmemory
	ldx #$80
	sta screenmemory
	stx screenmemory+1
	; LineNumber: 24
MainProgram_while14
MainProgram_loopstart18
	; Binary clause Simplified: NOTEQUALS
	lda #$1
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_localfailed43
	jmp MainProgram_ConditionalTrueBlock15
MainProgram_localfailed43
	jmp MainProgram_elsedoneblock17
MainProgram_ConditionalTrueBlock15: ;Main true block ;keep 
	; LineNumber: 25
	; LineNumber: 26
	; Assigning single variable : oldti
	ldy #0
	jsr _ti
	; Calling storevariable
	sta oldti
	sty oldti+1
	; LineNumber: 28
	; Assigning single variable : a
	; Peek
	lda $E840 + $0
	; Calling storevariable
	sta a
	; LineNumber: 29
MainProgram_while45
MainProgram_loopstart49
	; Binary clause Simplified: EQUALS
	lda a
	; Compare with pure num / var optimization
	cmp #$df;keep
	bne MainProgram_elsedoneblock48
MainProgram_ConditionalTrueBlock46: ;Main true block ;keep 
	; LineNumber: 30
	; LineNumber: 31
	; Assigning single variable : a
	; Peek
	lda $E840 + $0
	; Calling storevariable
	sta a
	; LineNumber: 32
	; MoveTo optimization
	lda #$00
	sta screenmemory
	lda #>$8000
	clc
	adc #$00
	sta screenmemory+1
	; LineNumber: 34
	
; //if(a<>255) then 
	ldy #0
	lda a
	sta ipd_div_lo
	sty ipd_div_hi
	ldy #$3 ; optimized, look out for bugs
MainProgram_printdecimal54
	jsr init_printdecimal_div10 
	ora #$30
	sta (screenmemory),y
	dey
	bpl MainProgram_printdecimal54
	; LineNumber: 35
	jmp MainProgram_while45
MainProgram_elsedoneblock48
MainProgram_loopend50
	; LineNumber: 37
	; MoveTo optimization
	lda #$50
	sta screenmemory
	lda #>$8000
	clc
	adc #$00
	sta screenmemory+1
	; LineNumber: 38
MainProgram_printstring_call55
	clc
	lda #<MainProgram_printstring_text56
	adc #$0
	ldy #>MainProgram_printstring_text56
	sta print_text+0
	sty print_text+1
	ldx #$4 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 39
	; MoveTo optimization
	lda #$a0
	sta screenmemory
	lda #>$8000
	clc
	adc #$00
	sta screenmemory+1
	; LineNumber: 40
	; integer assignment NodeVar
	ldy oldti+1 ; Next one
	lda oldti
	sta ipd_div_lo
	sty ipd_div_hi
	ldy #$2 ; optimized, look out for bugs
MainProgram_printdecimal57
	jsr init_printdecimal_div10 
	ora #$30
	sta (screenmemory),y
	dey
	bpl MainProgram_printdecimal57
	; LineNumber: 41
	; MoveTo optimization
	lda #$f0
	sta screenmemory
	lda #>$8000
	clc
	adc #$00
	sta screenmemory+1
	; LineNumber: 43
	; Assigning single variable : ti
	ldy #0
	jsr _ti
	; Calling storevariable
	sta ti
	sty ti+1
	; LineNumber: 44
MainProgram_while58
MainProgram_loopstart62
	; Binary clause INTEGER: EQUALS
	; Compare INTEGER with pure num / var optimization. GREATER. 
	lda ti+1   ; compare high bytes
	cmp oldti+1 ;keep
	bne MainProgram_elsedoneblock61
	lda ti
	cmp oldti ;keep
	bne MainProgram_elsedoneblock61
	jmp MainProgram_ConditionalTrueBlock59
MainProgram_ConditionalTrueBlock59: ;Main true block ;keep 
	; LineNumber: 45
	; LineNumber: 46
	; Assigning single variable : ti
	ldy #0
	jsr _ti
	; Calling storevariable
	sta ti
	sty ti+1
	; LineNumber: 47
	jmp MainProgram_while58
MainProgram_elsedoneblock61
MainProgram_loopend63
	; LineNumber: 48
	; integer assignment NodeVar
	ldy ti+1 ; Next one
	lda ti
	sta ipd_div_lo
	sty ipd_div_hi
	ldy #$2 ; optimized, look out for bugs
MainProgram_printdecimal66
	jsr init_printdecimal_div10 
	ora #$30
	sta (screenmemory),y
	dey
	bpl MainProgram_printdecimal66
	; LineNumber: 49
	jmp MainProgram_while14
MainProgram_elsedoneblock17
MainProgram_loopend19
	; LineNumber: 51
	; End of program
	; Ending memory block
EndBlock410
MainProgram_printstring_text56	dc.b	"DONE"
	dc.b	0
