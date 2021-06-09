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
bizkeys
	; LineNumber: 10
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
Key_Read_forloop4
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
	; LineNumber: 378
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : Key_Pressed
	;    Procedure type : User-defined procedure
	; LineNumber: 394
	; LineNumber: 393
Key_Pressed_block12
Key_Pressed
	; LineNumber: 396
	; ****** Inline assembler section
	
	sty Key_temp
	lda Key_keysPressed,x
	and Key_temp 	; contains column 
	
	; LineNumber: 404
	rts
block1
	; LineNumber: 13
	; LineNumber: 15
	; Assigning memory location
	; Assigning single variable : $8000
	; Integer constant assigning
	ldy #$80
	lda #$00
	; Calling storevariable
	sta $8000
	; LineNumber: 16
	; Assigning single variable : screenmemory
	ldx #$80
	sta screenmemory
	stx screenmemory+1
	; LineNumber: 21
MainProgram_while13
MainProgram_loopstart17
	; Binary clause Simplified: NOTEQUALS
	lda #$1
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_localfailed750
	jmp MainProgram_ConditionalTrueBlock14
MainProgram_localfailed750
	jmp MainProgram_elsedoneblock16
MainProgram_ConditionalTrueBlock14: ;Main true block ;keep 
	; LineNumber: 22
	; LineNumber: 23
	jsr Key_Read
	; LineNumber: 29
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$09
	ldy #$01
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock755
MainProgram_ConditionalTrueBlock753: ;Main true block ;keep 
	; LineNumber: 30
	; LineNumber: 32
	
; // Constants for detecting keys on Business keyboard
; // Top row
MainProgram_printstring_call760
	clc
	lda #<MainProgram_printstring_text761
	adc #$0
	ldy #>MainProgram_printstring_text761
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 33
MainProgram_elsedoneblock755
	; LineNumber: 37
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$01
	ldy #$01
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock765
MainProgram_ConditionalTrueBlock763: ;Main true block ;keep 
	; LineNumber: 38
	; LineNumber: 40
MainProgram_printstring_call770
	clc
	lda #<MainProgram_printstring_text771
	adc #$0
	ldy #>MainProgram_printstring_text771
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 41
MainProgram_elsedoneblock765
	; LineNumber: 44
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$00
	ldy #$01
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock775
MainProgram_ConditionalTrueBlock773: ;Main true block ;keep 
	; LineNumber: 45
	; LineNumber: 47
MainProgram_printstring_call780
	clc
	lda #<MainProgram_printstring_text781
	adc #$0
	ldy #>MainProgram_printstring_text781
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 48
MainProgram_elsedoneblock775
	; LineNumber: 50
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$02
	ldy #$09
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock785
MainProgram_ConditionalTrueBlock783: ;Main true block ;keep 
	; LineNumber: 51
	; LineNumber: 53
MainProgram_printstring_call790
	clc
	lda #<MainProgram_printstring_text791
	adc #$0
	ldy #>MainProgram_printstring_text791
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 54
MainProgram_elsedoneblock785
	; LineNumber: 56
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$01
	ldy #$02
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock795
MainProgram_ConditionalTrueBlock793: ;Main true block ;keep 
	; LineNumber: 57
	; LineNumber: 59
MainProgram_printstring_call800
	clc
	lda #<MainProgram_printstring_text801
	adc #$0
	ldy #>MainProgram_printstring_text801
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 60
MainProgram_elsedoneblock795
	; LineNumber: 62
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$00
	ldy #$02
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock805
MainProgram_ConditionalTrueBlock803: ;Main true block ;keep 
	; LineNumber: 63
	; LineNumber: 65
MainProgram_printstring_call810
	clc
	lda #<MainProgram_printstring_text811
	adc #$0
	ldy #>MainProgram_printstring_text811
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 66
MainProgram_elsedoneblock805
	; LineNumber: 68
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$09
	ldy #$04
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock815
MainProgram_ConditionalTrueBlock813: ;Main true block ;keep 
	; LineNumber: 69
	; LineNumber: 71
MainProgram_printstring_call820
	clc
	lda #<MainProgram_printstring_text821
	adc #$0
	ldy #>MainProgram_printstring_text821
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 72
MainProgram_elsedoneblock815
	; LineNumber: 74
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$01
	ldy #$02
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock825
MainProgram_ConditionalTrueBlock823: ;Main true block ;keep 
	; LineNumber: 75
	; LineNumber: 77
MainProgram_printstring_call830
	clc
	lda #<MainProgram_printstring_text831
	adc #$0
	ldy #>MainProgram_printstring_text831
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 78
MainProgram_elsedoneblock825
	; LineNumber: 80
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$00
	ldy #$01
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock835
MainProgram_ConditionalTrueBlock833: ;Main true block ;keep 
	; LineNumber: 81
	; LineNumber: 83
MainProgram_printstring_call840
	clc
	lda #<MainProgram_printstring_text841
	adc #$0
	ldy #>MainProgram_printstring_text841
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 84
MainProgram_elsedoneblock835
	; LineNumber: 86
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$09
	ldy #$08
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock845
MainProgram_ConditionalTrueBlock843: ;Main true block ;keep 
	; LineNumber: 87
	; LineNumber: 89
MainProgram_printstring_call850
	clc
	lda #<MainProgram_printstring_text851
	adc #$0
	ldy #>MainProgram_printstring_text851
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 90
MainProgram_elsedoneblock845
	; LineNumber: 92
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$07
	ldy #$10
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock855
MainProgram_ConditionalTrueBlock853: ;Main true block ;keep 
	; LineNumber: 93
	; LineNumber: 95
MainProgram_printstring_call860
	clc
	lda #<MainProgram_printstring_text861
	adc #$0
	ldy #>MainProgram_printstring_text861
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 96
MainProgram_elsedoneblock855
	; LineNumber: 98
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$09
	ldy #$20
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock865
MainProgram_ConditionalTrueBlock863: ;Main true block ;keep 
	; LineNumber: 99
	; LineNumber: 101
MainProgram_printstring_call870
	clc
	lda #<MainProgram_printstring_text871
	adc #$0
	ldy #>MainProgram_printstring_text871
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 102
MainProgram_elsedoneblock865
	; LineNumber: 104
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$00
	ldy #$08
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock875
MainProgram_ConditionalTrueBlock873: ;Main true block ;keep 
	; LineNumber: 105
	; LineNumber: 107
MainProgram_printstring_call880
	clc
	lda #<MainProgram_printstring_text881
	adc #$0
	ldy #>MainProgram_printstring_text881
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 108
MainProgram_elsedoneblock875
	; LineNumber: 110
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$01
	ldy #$20
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock885
MainProgram_ConditionalTrueBlock883: ;Main true block ;keep 
	; LineNumber: 111
	; LineNumber: 113
MainProgram_printstring_call890
	clc
	lda #<MainProgram_printstring_text891
	adc #$0
	ldy #>MainProgram_printstring_text891
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 114
MainProgram_elsedoneblock885
	; LineNumber: 116
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$00
	ldy #$20
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock895
MainProgram_ConditionalTrueBlock893: ;Main true block ;keep 
	; LineNumber: 117
	; LineNumber: 119
MainProgram_printstring_call900
	clc
	lda #<MainProgram_printstring_text901
	adc #$0
	ldy #>MainProgram_printstring_text901
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 120
MainProgram_elsedoneblock895
	; LineNumber: 122
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$09
	ldy #$10
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock905
MainProgram_ConditionalTrueBlock903: ;Main true block ;keep 
	; LineNumber: 123
	; LineNumber: 125
MainProgram_printstring_call910
	clc
	lda #<MainProgram_printstring_text911
	adc #$0
	ldy #>MainProgram_printstring_text911
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 126
MainProgram_elsedoneblock905
	; LineNumber: 130
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$04
	ldy #$10
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock915
MainProgram_ConditionalTrueBlock913: ;Main true block ;keep 
	; LineNumber: 131
	; LineNumber: 133
	
; // Second row
MainProgram_printstring_call920
	clc
	lda #<MainProgram_printstring_text921
	adc #$0
	ldy #>MainProgram_printstring_text921
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 134
MainProgram_elsedoneblock915
	; LineNumber: 136
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$05
	ldy #$01
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock925
MainProgram_ConditionalTrueBlock923: ;Main true block ;keep 
	; LineNumber: 137
	; LineNumber: 139
MainProgram_printstring_call930
	clc
	lda #<MainProgram_printstring_text931
	adc #$0
	ldy #>MainProgram_printstring_text931
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 140
MainProgram_elsedoneblock925
	; LineNumber: 142
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$04
	ldy #$02
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock935
MainProgram_ConditionalTrueBlock933: ;Main true block ;keep 
	; LineNumber: 143
	; LineNumber: 145
MainProgram_printstring_call940
	clc
	lda #<MainProgram_printstring_text941
	adc #$0
	ldy #>MainProgram_printstring_text941
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 146
MainProgram_elsedoneblock935
	; LineNumber: 148
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$05
	ldy #$02
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock945
MainProgram_ConditionalTrueBlock943: ;Main true block ;keep 
	; LineNumber: 149
	; LineNumber: 151
MainProgram_printstring_call950
	clc
	lda #<MainProgram_printstring_text951
	adc #$0
	ldy #>MainProgram_printstring_text951
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 152
MainProgram_elsedoneblock945
	; LineNumber: 154
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$04
	ldy #$02
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock955
MainProgram_ConditionalTrueBlock953: ;Main true block ;keep 
	; LineNumber: 155
	; LineNumber: 157
MainProgram_printstring_call960
	clc
	lda #<MainProgram_printstring_text961
	adc #$0
	ldy #>MainProgram_printstring_text961
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 158
MainProgram_elsedoneblock955
	; LineNumber: 160
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$04
	ldy #$04
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock965
MainProgram_ConditionalTrueBlock963: ;Main true block ;keep 
	; LineNumber: 161
	; LineNumber: 163
MainProgram_printstring_call970
	clc
	lda #<MainProgram_printstring_text971
	adc #$0
	ldy #>MainProgram_printstring_text971
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 164
MainProgram_elsedoneblock965
	; LineNumber: 166
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$04
	ldy #$08
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock975
MainProgram_ConditionalTrueBlock973: ;Main true block ;keep 
	; LineNumber: 167
	; LineNumber: 169
MainProgram_printstring_call980
	clc
	lda #<MainProgram_printstring_text981
	adc #$0
	ldy #>MainProgram_printstring_text981
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 170
MainProgram_elsedoneblock975
	; LineNumber: 172
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$05
	ldy #$08
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock985
MainProgram_ConditionalTrueBlock983: ;Main true block ;keep 
	; LineNumber: 173
	; LineNumber: 175
MainProgram_printstring_call990
	clc
	lda #<MainProgram_printstring_text991
	adc #$0
	ldy #>MainProgram_printstring_text991
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 176
MainProgram_elsedoneblock985
	; LineNumber: 178
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$04
	ldy #$06
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock995
MainProgram_ConditionalTrueBlock993: ;Main true block ;keep 
	; LineNumber: 179
	; LineNumber: 181
MainProgram_printstring_call1000
	clc
	lda #<MainProgram_printstring_text1001
	adc #$0
	ldy #>MainProgram_printstring_text1001
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 182
MainProgram_elsedoneblock995
	; LineNumber: 184
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$05
	ldy #$20
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1005
MainProgram_ConditionalTrueBlock1003: ;Main true block ;keep 
	; LineNumber: 185
	; LineNumber: 187
MainProgram_printstring_call1010
	clc
	lda #<MainProgram_printstring_text1011
	adc #$0
	ldy #>MainProgram_printstring_text1011
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 188
MainProgram_elsedoneblock1005
	; LineNumber: 190
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$04
	ldy #$60
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1015
MainProgram_ConditionalTrueBlock1013: ;Main true block ;keep 
	; LineNumber: 191
	; LineNumber: 193
MainProgram_printstring_call1020
	clc
	lda #<MainProgram_printstring_text1021
	adc #$0
	ldy #>MainProgram_printstring_text1021
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 194
MainProgram_elsedoneblock1015
	; LineNumber: 196
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$05
	ldy #$40
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1025
MainProgram_ConditionalTrueBlock1023: ;Main true block ;keep 
	; LineNumber: 197
	; LineNumber: 199
MainProgram_printstring_call1030
	clc
	lda #<MainProgram_printstring_text1031
	adc #$0
	ldy #>MainProgram_printstring_text1031
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 200
MainProgram_elsedoneblock1025
	; LineNumber: 202
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$04
	ldy #$10
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1035
MainProgram_ConditionalTrueBlock1033: ;Main true block ;keep 
	; LineNumber: 203
	; LineNumber: 205
MainProgram_printstring_call1040
	clc
	lda #<MainProgram_printstring_text1041
	adc #$0
	ldy #>MainProgram_printstring_text1041
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 206
MainProgram_elsedoneblock1035
	; LineNumber: 208
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$05
	ldy #$10
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1045
MainProgram_ConditionalTrueBlock1043: ;Main true block ;keep 
	; LineNumber: 209
	; LineNumber: 211
MainProgram_printstring_call1050
	clc
	lda #<MainProgram_printstring_text1051
	adc #$0
	ldy #>MainProgram_printstring_text1051
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 212
MainProgram_elsedoneblock1045
	; LineNumber: 214
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$04
	ldy #$80
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1055
MainProgram_ConditionalTrueBlock1053: ;Main true block ;keep 
	; LineNumber: 215
	; LineNumber: 217
MainProgram_printstring_call1060
	clc
	lda #<MainProgram_printstring_text1061
	adc #$0
	ldy #>MainProgram_printstring_text1061
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 218
MainProgram_elsedoneblock1055
	; LineNumber: 223
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$02
	ldy #$01
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1065
MainProgram_ConditionalTrueBlock1063: ;Main true block ;keep 
	; LineNumber: 224
	; LineNumber: 226
	
; // Third row
MainProgram_printstring_call1070
	clc
	lda #<MainProgram_printstring_text1071
	adc #$0
	ldy #>MainProgram_printstring_text1071
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 227
MainProgram_elsedoneblock1065
	; LineNumber: 229
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$06
	ldy #$01
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1075
MainProgram_ConditionalTrueBlock1073: ;Main true block ;keep 
	; LineNumber: 230
	; LineNumber: 232
MainProgram_printstring_call1080
	clc
	lda #<MainProgram_printstring_text1081
	adc #$0
	ldy #>MainProgram_printstring_text1081
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 233
MainProgram_elsedoneblock1075
	; LineNumber: 235
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$03
	ldy #$01
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1085
MainProgram_ConditionalTrueBlock1083: ;Main true block ;keep 
	; LineNumber: 236
	; LineNumber: 238
MainProgram_printstring_call1090
	clc
	lda #<MainProgram_printstring_text1091
	adc #$0
	ldy #>MainProgram_printstring_text1091
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 239
MainProgram_elsedoneblock1085
	; LineNumber: 241
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$02
	ldy #$04
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1095
MainProgram_ConditionalTrueBlock1093: ;Main true block ;keep 
	; LineNumber: 242
	; LineNumber: 244
MainProgram_printstring_call1100
	clc
	lda #<MainProgram_printstring_text1101
	adc #$0
	ldy #>MainProgram_printstring_text1101
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 245
MainProgram_elsedoneblock1095
	; LineNumber: 247
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$03
	ldy #$02
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1105
MainProgram_ConditionalTrueBlock1103: ;Main true block ;keep 
	; LineNumber: 248
	; LineNumber: 250
MainProgram_printstring_call1110
	clc
	lda #<MainProgram_printstring_text1111
	adc #$0
	ldy #>MainProgram_printstring_text1111
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 251
MainProgram_elsedoneblock1105
	; LineNumber: 253
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$02
	ldy #$04
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1115
MainProgram_ConditionalTrueBlock1113: ;Main true block ;keep 
	; LineNumber: 254
	; LineNumber: 256
MainProgram_printstring_call1120
	clc
	lda #<MainProgram_printstring_text1121
	adc #$0
	ldy #>MainProgram_printstring_text1121
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 257
MainProgram_elsedoneblock1115
	; LineNumber: 259
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$03
	ldy #$04
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1125
MainProgram_ConditionalTrueBlock1123: ;Main true block ;keep 
	; LineNumber: 260
	; LineNumber: 262
MainProgram_printstring_call1130
	clc
	lda #<MainProgram_printstring_text1131
	adc #$0
	ldy #>MainProgram_printstring_text1131
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 263
MainProgram_elsedoneblock1125
	; LineNumber: 265
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$02
	ldy #$08
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1135
MainProgram_ConditionalTrueBlock1133: ;Main true block ;keep 
	; LineNumber: 266
	; LineNumber: 268
MainProgram_printstring_call1140
	clc
	lda #<MainProgram_printstring_text1141
	adc #$0
	ldy #>MainProgram_printstring_text1141
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 269
MainProgram_elsedoneblock1135
	; LineNumber: 271
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$03
	ldy #$08
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1145
MainProgram_ConditionalTrueBlock1143: ;Main true block ;keep 
	; LineNumber: 272
	; LineNumber: 274
MainProgram_printstring_call1150
	clc
	lda #<MainProgram_printstring_text1151
	adc #$0
	ldy #>MainProgram_printstring_text1151
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 275
MainProgram_elsedoneblock1145
	; LineNumber: 277
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$02
	ldy #$04
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1155
MainProgram_ConditionalTrueBlock1153: ;Main true block ;keep 
	; LineNumber: 278
	; LineNumber: 280
MainProgram_printstring_call1160
	clc
	lda #<MainProgram_printstring_text1161
	adc #$0
	ldy #>MainProgram_printstring_text1161
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 281
MainProgram_elsedoneblock1155
	; LineNumber: 283
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$03
	ldy #$20
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1165
MainProgram_ConditionalTrueBlock1163: ;Main true block ;keep 
	; LineNumber: 284
	; LineNumber: 286
MainProgram_printstring_call1170
	clc
	lda #<MainProgram_printstring_text1171
	adc #$0
	ldy #>MainProgram_printstring_text1171
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 287
MainProgram_elsedoneblock1165
	; LineNumber: 289
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$02
	ldy #$40
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1175
MainProgram_ConditionalTrueBlock1173: ;Main true block ;keep 
	; LineNumber: 290
	; LineNumber: 292
MainProgram_printstring_call1180
	clc
	lda #<MainProgram_printstring_text1181
	adc #$0
	ldy #>MainProgram_printstring_text1181
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 293
MainProgram_elsedoneblock1175
	; LineNumber: 295
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$03
	ldy #$40
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1185
MainProgram_ConditionalTrueBlock1183: ;Main true block ;keep 
	; LineNumber: 296
	; LineNumber: 298
MainProgram_printstring_call1190
	clc
	lda #<MainProgram_printstring_text1191
	adc #$0
	ldy #>MainProgram_printstring_text1191
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 299
MainProgram_elsedoneblock1185
	; LineNumber: 301
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$02
	ldy #$10
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1195
MainProgram_ConditionalTrueBlock1193: ;Main true block ;keep 
	; LineNumber: 302
	; LineNumber: 304
MainProgram_printstring_call1200
	clc
	lda #<MainProgram_printstring_text1201
	adc #$0
	ldy #>MainProgram_printstring_text1201
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 305
MainProgram_elsedoneblock1195
	; LineNumber: 307
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$03
	ldy #$10
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1205
MainProgram_ConditionalTrueBlock1203: ;Main true block ;keep 
	; LineNumber: 308
	; LineNumber: 310
MainProgram_printstring_call1210
	clc
	lda #<MainProgram_printstring_text1211
	adc #$0
	ldy #>MainProgram_printstring_text1211
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 311
MainProgram_elsedoneblock1205
	; LineNumber: 316
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$08
	ldy #$01
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1215
MainProgram_ConditionalTrueBlock1213: ;Main true block ;keep 
	; LineNumber: 317
	; LineNumber: 319
	
; // Bottom keys
MainProgram_printstring_call1220
	clc
	lda #<MainProgram_printstring_text1221
	adc #$0
	ldy #>MainProgram_printstring_text1221
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 320
MainProgram_elsedoneblock1215
	; LineNumber: 322
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$06
	ldy #$01
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1225
MainProgram_ConditionalTrueBlock1223: ;Main true block ;keep 
	; LineNumber: 323
	; LineNumber: 325
MainProgram_printstring_call1230
	clc
	lda #<MainProgram_printstring_text1231
	adc #$0
	ldy #>MainProgram_printstring_text1231
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 326
MainProgram_elsedoneblock1225
	; LineNumber: 328
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$07
	ldy #$01
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1235
MainProgram_ConditionalTrueBlock1233: ;Main true block ;keep 
	; LineNumber: 329
	; LineNumber: 331
MainProgram_printstring_call1240
	clc
	lda #<MainProgram_printstring_text1241
	adc #$0
	ldy #>MainProgram_printstring_text1241
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 332
MainProgram_elsedoneblock1235
	; LineNumber: 334
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$08
	ldy #$02
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1245
MainProgram_ConditionalTrueBlock1243: ;Main true block ;keep 
	; LineNumber: 335
	; LineNumber: 337
MainProgram_printstring_call1250
	clc
	lda #<MainProgram_printstring_text1251
	adc #$0
	ldy #>MainProgram_printstring_text1251
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 338
MainProgram_elsedoneblock1245
	; LineNumber: 340
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$06
	ldy #$02
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1255
MainProgram_ConditionalTrueBlock1253: ;Main true block ;keep 
	; LineNumber: 341
	; LineNumber: 343
MainProgram_printstring_call1260
	clc
	lda #<MainProgram_printstring_text1261
	adc #$0
	ldy #>MainProgram_printstring_text1261
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 344
MainProgram_elsedoneblock1255
	; LineNumber: 346
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$07
	ldy #$02
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1265
MainProgram_ConditionalTrueBlock1263: ;Main true block ;keep 
	; LineNumber: 347
	; LineNumber: 349
MainProgram_printstring_call1270
	clc
	lda #<MainProgram_printstring_text1271
	adc #$0
	ldy #>MainProgram_printstring_text1271
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 350
MainProgram_elsedoneblock1265
	; LineNumber: 352
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$06
	ldy #$04
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1275
MainProgram_ConditionalTrueBlock1273: ;Main true block ;keep 
	; LineNumber: 353
	; LineNumber: 355
	
; // V key	
MainProgram_printstring_call1280
	clc
	lda #<MainProgram_printstring_text1281
	adc #$0
	ldy #>MainProgram_printstring_text1281
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 356
MainProgram_elsedoneblock1275
	; LineNumber: 358
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$07
	ldy #$04
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1285
MainProgram_ConditionalTrueBlock1283: ;Main true block ;keep 
	; LineNumber: 359
	; LineNumber: 361
	
; // B key
MainProgram_printstring_call1290
	clc
	lda #<MainProgram_printstring_text1291
	adc #$0
	ldy #>MainProgram_printstring_text1291
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 362
MainProgram_elsedoneblock1285
	; LineNumber: 364
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$08
	ldy #$08
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1295
MainProgram_ConditionalTrueBlock1293: ;Main true block ;keep 
	; LineNumber: 365
	; LineNumber: 367
	
; // N key	
MainProgram_printstring_call1300
	clc
	lda #<MainProgram_printstring_text1301
	adc #$0
	ldy #>MainProgram_printstring_text1301
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 368
MainProgram_elsedoneblock1295
	; LineNumber: 370
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$07
	ldy #$08
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1305
MainProgram_ConditionalTrueBlock1303: ;Main true block ;keep 
	; LineNumber: 371
	; LineNumber: 373
	
; // M key
MainProgram_printstring_call1310
	clc
	lda #<MainProgram_printstring_text1311
	adc #$0
	ldy #>MainProgram_printstring_text1311
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 374
MainProgram_elsedoneblock1305
	; LineNumber: 376
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$06
	ldy #$08
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1315
MainProgram_ConditionalTrueBlock1313: ;Main true block ;keep 
	; LineNumber: 377
	; LineNumber: 379
	
; // , key
MainProgram_printstring_call1320
	clc
	lda #<MainProgram_printstring_text1321
	adc #$0
	ldy #>MainProgram_printstring_text1321
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 380
MainProgram_elsedoneblock1315
	; LineNumber: 383
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$06
	ldy #$40
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1325
MainProgram_ConditionalTrueBlock1323: ;Main true block ;keep 
	; LineNumber: 384
	; LineNumber: 386
MainProgram_printstring_call1330
	clc
	lda #<MainProgram_printstring_text1331
	adc #$0
	ldy #>MainProgram_printstring_text1331
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 387
MainProgram_elsedoneblock1325
	; LineNumber: 389
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$07
	ldy #$40
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1335
MainProgram_ConditionalTrueBlock1333: ;Main true block ;keep 
	; LineNumber: 390
	; LineNumber: 392
	
; // Right Shift key
MainProgram_printstring_call1340
	clc
	lda #<MainProgram_printstring_text1341
	adc #$0
	ldy #>MainProgram_printstring_text1341
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 393
MainProgram_elsedoneblock1335
	; LineNumber: 395
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$08
	ldy #$10
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1345
MainProgram_ConditionalTrueBlock1343: ;Main true block ;keep 
	; LineNumber: 396
	; LineNumber: 398
	
; // Repeat key
MainProgram_printstring_call1350
	clc
	lda #<MainProgram_printstring_text1351
	adc #$0
	ldy #>MainProgram_printstring_text1351
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 399
MainProgram_elsedoneblock1345
	; LineNumber: 404
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$08
	ldy #$04
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1355
MainProgram_ConditionalTrueBlock1353: ;Main true block ;keep 
	; LineNumber: 405
	; LineNumber: 407
	
; // Clear Home key
; // Space bar
MainProgram_printstring_call1360
	clc
	lda #<MainProgram_printstring_text1361
	adc #$0
	ldy #>MainProgram_printstring_text1361
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 408
MainProgram_elsedoneblock1355
	; LineNumber: 413
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$01
	ldy #$10
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1365
MainProgram_ConditionalTrueBlock1363: ;Main true block ;keep 
	; LineNumber: 414
	; LineNumber: 416
	
; // Space key
; // Numeric Keypad
MainProgram_printstring_call1370
	clc
	lda #<MainProgram_printstring_text1371
	adc #$0
	ldy #>MainProgram_printstring_text1371
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 417
MainProgram_elsedoneblock1365
	; LineNumber: 419
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$00
	ldy #$10
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1375
MainProgram_ConditionalTrueBlock1373: ;Main true block ;keep 
	; LineNumber: 420
	; LineNumber: 422
	
; // 7 key
MainProgram_printstring_call1380
	clc
	lda #<MainProgram_printstring_text1381
	adc #$0
	ldy #>MainProgram_printstring_text1381
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 423
MainProgram_elsedoneblock1375
	; LineNumber: 425
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$01
	ldy #$80
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1385
MainProgram_ConditionalTrueBlock1383: ;Main true block ;keep 
	; LineNumber: 426
	; LineNumber: 428
	
; // 8 key
MainProgram_printstring_call1390
	clc
	lda #<MainProgram_printstring_text1391
	adc #$0
	ldy #>MainProgram_printstring_text1391
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 429
MainProgram_elsedoneblock1385
	; LineNumber: 432
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$05
	ldy #$80
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1395
MainProgram_ConditionalTrueBlock1393: ;Main true block ;keep 
	; LineNumber: 433
	; LineNumber: 435
	
; // 9 key
MainProgram_printstring_call1400
	clc
	lda #<MainProgram_printstring_text1401
	adc #$0
	ldy #>MainProgram_printstring_text1401
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 436
MainProgram_elsedoneblock1395
	; LineNumber: 438
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$02
	ldy #$80
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1405
MainProgram_ConditionalTrueBlock1403: ;Main true block ;keep 
	; LineNumber: 439
	; LineNumber: 441
	
; // 4 key
MainProgram_printstring_call1410
	clc
	lda #<MainProgram_printstring_text1411
	adc #$0
	ldy #>MainProgram_printstring_text1411
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 442
MainProgram_elsedoneblock1405
	; LineNumber: 444
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$03
	ldy #$80
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1415
MainProgram_ConditionalTrueBlock1413: ;Main true block ;keep 
	; LineNumber: 445
	; LineNumber: 447
	
; // 5 key
MainProgram_printstring_call1420
	clc
	lda #<MainProgram_printstring_text1421
	adc #$0
	ldy #>MainProgram_printstring_text1421
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 448
MainProgram_elsedoneblock1415
	; LineNumber: 451
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$08
	ldy #$80
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1425
MainProgram_ConditionalTrueBlock1423: ;Main true block ;keep 
	; LineNumber: 452
	; LineNumber: 454
	
; // 6 key
MainProgram_printstring_call1430
	clc
	lda #<MainProgram_printstring_text1431
	adc #$0
	ldy #>MainProgram_printstring_text1431
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 455
MainProgram_elsedoneblock1425
	; LineNumber: 457
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$07
	ldy #$80
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1435
MainProgram_ConditionalTrueBlock1433: ;Main true block ;keep 
	; LineNumber: 458
	; LineNumber: 460
	
; // 1 key
MainProgram_printstring_call1440
	clc
	lda #<MainProgram_printstring_text1441
	adc #$0
	ldy #>MainProgram_printstring_text1441
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 461
MainProgram_elsedoneblock1435
	; LineNumber: 463
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$06
	ldy #$80
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1445
MainProgram_ConditionalTrueBlock1443: ;Main true block ;keep 
	; LineNumber: 464
	; LineNumber: 466
	
; // 2 key
MainProgram_printstring_call1450
	clc
	lda #<MainProgram_printstring_text1451
	adc #$0
	ldy #>MainProgram_printstring_text1451
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 467
MainProgram_elsedoneblock1445
	; LineNumber: 470
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$07
	ldy #$10
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1455
MainProgram_ConditionalTrueBlock1453: ;Main true block ;keep 
	; LineNumber: 471
	; LineNumber: 473
	
; // 3 key
MainProgram_printstring_call1460
	clc
	lda #<MainProgram_printstring_text1461
	adc #$0
	ldy #>MainProgram_printstring_text1461
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 474
MainProgram_elsedoneblock1455
	; LineNumber: 476
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$06
	ldy #$10
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1465
MainProgram_ConditionalTrueBlock1463: ;Main true block ;keep 
	; LineNumber: 477
	; LineNumber: 479
	
; // 0 key
MainProgram_printstring_call1470
	clc
	lda #<MainProgram_printstring_text1471
	adc #$0
	ldy #>MainProgram_printstring_text1471
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 480
MainProgram_elsedoneblock1465
	; LineNumber: 483
	; Binary clause Simplified: NOTEQUALS
	; Assigning register : _xy
	ldx #$ff
	ldy #$00
	jsr Key_Pressed
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock1475
MainProgram_ConditionalTrueBlock1473: ;Main true block ;keep 
	; LineNumber: 484
	; LineNumber: 486
	
; // . key
MainProgram_printstring_call1480
	clc
	lda #<MainProgram_printstring_text1481
	adc #$0
	ldy #>MainProgram_printstring_text1481
	sta print_text+0
	sty print_text+1
	ldx #$3 ; optimized, look out for bugs
	jsr printstring
	; LineNumber: 487
MainProgram_elsedoneblock1475
	; LineNumber: 488
	; Wait
	lda #$e8
	ldy #$03
	tax
	dex
	bne *-1
	; LineNumber: 491
	jmp MainProgram_while13
MainProgram_elsedoneblock16
MainProgram_loopend18
	; LineNumber: 496
	; End of program
	; Ending memory block
EndBlock410
MainProgram_printstring_text761	dc.b	"<--"
	dc.b	0
MainProgram_printstring_text771	dc.b	"!  "
	dc.b	0
MainProgram_printstring_text781	dc.b	"'  "
	dc.b	0
MainProgram_printstring_text791	dc.b	"#  "
	dc.b	0
MainProgram_printstring_text801	dc.b	"$  "
	dc.b	0
MainProgram_printstring_text811	dc.b	"%  "
	dc.b	0
MainProgram_printstring_text821	dc.b	"&  "
	dc.b	0
MainProgram_printstring_text831	dc.b	"'' "
	dc.b	0
MainProgram_printstring_text841	dc.b	"("
	dc.b	0
MainProgram_printstring_text851	dc.b	")"
	dc.b	0
MainProgram_printstring_text861	dc.b	0
	dc.b	0
MainProgram_printstring_text871	dc.b	":  "
	dc.b	0
MainProgram_printstring_text881	dc.b	"=  "
	dc.b	0
MainProgram_printstring_text891	dc.b	"^^^"
	dc.b	0
MainProgram_printstring_text901	dc.b	"<> "
	dc.b	0
MainProgram_printstring_text911	dc.b	"RUN"
	dc.b	0
MainProgram_printstring_text921	dc.b	"TAB"
	dc.b	0
MainProgram_printstring_text931	dc.b	"Q  "
	dc.b	0
MainProgram_printstring_text941	dc.b	"W  "
	dc.b	0
MainProgram_printstring_text951	dc.b	"E  "
	dc.b	0
MainProgram_printstring_text961	dc.b	"R  "
	dc.b	0
MainProgram_printstring_text971	dc.b	"T  "
	dc.b	0
MainProgram_printstring_text981	dc.b	"Y  "
	dc.b	0
MainProgram_printstring_text991	dc.b	"U  "
	dc.b	0
MainProgram_printstring_text1001	dc.b	"I  "
	dc.b	0
MainProgram_printstring_text1011	dc.b	"O  "
	dc.b	0
MainProgram_printstring_text1021	dc.b	"P  "
	dc.b	0
MainProgram_printstring_text1031	dc.b	"[  "
	dc.b	0
MainProgram_printstring_text1041	dc.b	"\  "
	dc.b	0
MainProgram_printstring_text1051	dc.b	"^V"
	dc.b	0
MainProgram_printstring_text1061	dc.b	"INS"
	dc.b	0
MainProgram_printstring_text1071	dc.b	"ESC"
	dc.b	0
MainProgram_printstring_text1081	dc.b	"SHL"
	dc.b	0
MainProgram_printstring_text1091	dc.b	"A  "
	dc.b	0
MainProgram_printstring_text1101	dc.b	"S  "
	dc.b	0
MainProgram_printstring_text1111	dc.b	"D  "
	dc.b	0
MainProgram_printstring_text1121	dc.b	"F  "
	dc.b	0
MainProgram_printstring_text1131	dc.b	"G  "
	dc.b	0
MainProgram_printstring_text1141	dc.b	"H  "
	dc.b	0
MainProgram_printstring_text1151	dc.b	"J  "
	dc.b	0
MainProgram_printstring_text1161	dc.b	"K  "
	dc.b	0
MainProgram_printstring_text1171	dc.b	"L  "
	dc.b	0
MainProgram_printstring_text1181	dc.b	";  "
	dc.b	0
MainProgram_printstring_text1191	dc.b	"@  "
	dc.b	0
MainProgram_printstring_text1201	dc.b	"]  "
	dc.b	0
MainProgram_printstring_text1211	dc.b	"RET"
	dc.b	0
MainProgram_printstring_text1221	dc.b	"REV"
	dc.b	0
MainProgram_printstring_text1231	dc.b	"LSH"
	dc.b	0
MainProgram_printstring_text1241	dc.b	"Z  "
	dc.b	0
MainProgram_printstring_text1251	dc.b	"X  "
	dc.b	0
MainProgram_printstring_text1261	dc.b	"C  "
	dc.b	0
MainProgram_printstring_text1271	dc.b	"V  "
	dc.b	0
MainProgram_printstring_text1281	dc.b	"B  "
	dc.b	0
MainProgram_printstring_text1291	dc.b	"N  "
	dc.b	0
MainProgram_printstring_text1301	dc.b	"M  "
	dc.b	0
MainProgram_printstring_text1311	dc.b	",  "
	dc.b	0
MainProgram_printstring_text1321	dc.b	".  "
	dc.b	0
MainProgram_printstring_text1331	dc.b	"RSH"
	dc.b	0
MainProgram_printstring_text1341	dc.b	"REP"
	dc.b	0
MainProgram_printstring_text1351	dc.b	"CLR"
	dc.b	0
MainProgram_printstring_text1361	dc.b	"SPC"
	dc.b	0
MainProgram_printstring_text1371	dc.b	7
	dc.b	0
MainProgram_printstring_text1381	dc.b	8
	dc.b	0
MainProgram_printstring_text1391	dc.b	9
	dc.b	0
MainProgram_printstring_text1401	dc.b	4
	dc.b	0
MainProgram_printstring_text1411	dc.b	5
	dc.b	0
MainProgram_printstring_text1421	dc.b	6
	dc.b	0
MainProgram_printstring_text1431	dc.b	1
	dc.b	0
MainProgram_printstring_text1441	dc.b	2
	dc.b	0
MainProgram_printstring_text1451	dc.b	3
	dc.b	0
MainProgram_printstring_text1461	dc.b	0
	dc.b	0
MainProgram_printstring_text1471	dc.b	" . "
	dc.b	0
MainProgram_printstring_text1481	dc.b	"   "
	dc.b	0
