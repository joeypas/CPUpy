LOADI R0, #3	; R0 = 3
LOADI R7, #1	; R7 = 1 

ADDI  R6, R0, #0	; R6 = 3

SHFT  R6, R6, R7	; R6 = 6
ADDI  R1, R6, #0	; R1 = 6
ADDI  R2, R6, #0	; R2 = 6 

SHFT  R6, R6, R7	; R6 = 12
ADDI  R3, R6, #0	; R3 = 12

SHFT  R6, R6, R7	; R6 = 24
ADDI  R4, R6, #0	; R4 = 24

SHFT  R5, R4, R7	; R5 = 48  = 3 × 2⁴
SHFT  R6, R5, R7	; R6 = 96  = 3 × 2⁵
SHFT  R7, R6, R7	; R7 = 192 = 3 × 2⁶

HALT
