;---------------------------------------------------------
; INITSSC - Initialize the SSC
; Y holds the desired slot number
;---------------------------------------------------------
INITSSC:
	tya
	asl
	asl
	asl
	asl		; NOW $S0
	adc #$88
	tax
	lda #$0B	; COMMAND: NO PARITY, RTS ON,
	sta $C002,X	; DTR ON, NO INTERRUPTS
	ldy PSPEED	; CONTROL: 8 DATA BITS, 1 STOP
	lda BPSCTRL,Y	; BIT, BAUD RATE DEPENDS ON
	sta $C003,X	; PSPEED
	stx MOD0+1	; SELF-MODS FOR $C088+S0
	stx MOD2+1	; IN MAIN LOOP
	stx MOD4+1	; AND IN SSCGET AND SSCPUT
	inx
	stx MOD1+1	; SELF-MODS FOR $C089+S0
	stx MOD3+1	; IN SSCGET AND SSCPUT
	jsr PATCHSSC
	rts

;---------------------------------------------------------
; SSCPUT - Send accumulator out the serial line
;---------------------------------------------------------
SSCPUT:
	pha		; Push A onto the stack
PUTC1:	lda $C000
	cmp #CHR_ESC	; Escape = abort
	beq PABORT

MOD1:	lda $C089	; Check status bits
	and #$70
	cmp #$10
	bne PUTC1	; Output register is full, so loop
	pla
MOD2:	sta $C088	; Put character
	rts


;---------------------------------------------------------
; SSCGET - Get a character from Super Serial Card (XY unchanged)
;---------------------------------------------------------
SSCGET:
	lda $C000
	cmp #CHR_ESC	; Escape = abort
	beq PABORT
MOD3:	lda $C089	; Check status bits
	and #$68
	cmp #$8
	bne SSCGET	; Input register empty, loop
MOD4:	lda $C088	; Get character
	rts

;---------------------------------------------------------
; RESETSSC - Clean up SSC
;---------------------------------------------------------
RESETSSC:
MOD0:	bit $C088	; CLEAR SSC INPUT REGISTER
	rts

;---------------------------------------------------------
; PATCHSSC - Patch the entry points of SSC processing
;---------------------------------------------------------
PATCHSSC:
	lda #<SSCPUT
	sta PUTC+1
	lda #>SSCPUT
	sta PUTC+2

	lda #<SSCGET
	sta GETC+1
	lda #>SSCGET
	sta GETC+2

	lda #<RESETSSC
	sta RESETIO+1
	lda #>RESETSSC
	sta RESETIO+2

	rts