; Multiplication by powers of two
; Multiplies 3 by successive powers of 2

; Set the constant
LOADI R0, #3	; R0 = 3

; How Much we will shift by
LOADI R1, #1	; R1 = 1


; Here we basically shift store R0 << R1 into each register
; and increment R1 by one inbetween each shift
SHFT R2, R0, R1	; R2 = 3 << 1 = 6
ADDI R1, R1, #1	; R1 = R1 + 1 = 2

SHFT R3, R0, R1	; R3 = 3 << 2 = 12
ADDI R1, R1, #1	; R1 = R1 + 1 = 3

SHFT R4, R0, R1	; R4 = 3 << 3 = 24
ADDI R1, R1, #1	; R1 = R1 + 1 = 4

SHFT R5, R0, R1	; R5 = 3 << 4 = 48
ADDI R1, R1, #1	; R1 = R1 + 1 = 5

SHFT R6, R0, R1	; R6 = 3 << 5 = 96
ADDI R1, R1, #1	; R1 = R1 + 1 = 6

SHFT R7, R0, R1	; R7 = 3 << 6 = 192


HALT
