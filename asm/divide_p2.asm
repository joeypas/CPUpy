; Division by powers of two
; Divides 448 by successive powers of 2

; Set the dividend
LOADI R0, #0xC0
LUI R0, #0x01	; R0 = 448

; How much we will shift by
LOADI R1, #0x01
LUI R1, #0x80	; R1 = "shift right by one"

; Here we basically store R0 >> R1 into each register and
; then increment R1 by one inbetween each shift

SHFT R2, R0, R1	; R2 = 448 >> 1 = 224
ADDI R1, R1, #1	; R1 = R1 + 1

SHFT R3, R0, R1	; R3 = 448 >> 2 = 112
ADDI R1, R1, #1	; R1 = R1 + 1

SHFT R4, R0, R1	; R4 = 448 >> 3 = 56
ADDI R1, R1, #1	; R1 = R1 + 1

SHFT R5, R0, R1	; R5 = 448 >> 4 = 28
ADDI R1, R1, #1	; R1 = R1 + 1

SHFT R6, R0, R1	; R6 = 448 >> 5 = 14
ADDI R1, R1, #1	; R1 = R1 + 1

SHFT R7, R0, R1	; R7 = 448 >> 6 = 7


HALT
