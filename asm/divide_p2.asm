LOADI R0, #0xC0
LUI R0, #0x01

LOADI R1, #0x06
LUI R1, #0x80

ADDI R2, R0, #-224
ADDI R3, R2, #112
ADDI R4, R3, #-280
ADDI R5, R4, #28
ADDI R6, R5, #-70

SHFT  R2, R0, R1       ; 448 >> 1 = 224
SHFT  R3, R2, R1       ; 224 >> 1 = 112
SHFT  R4, R3, R1       ; 112 >> 1 = 56
SHFT  R5, R4, R1       ; 56  >> 1 = 28
SHFT  R6, R5, R1       ; 28  >> 1 = 14
SHFT  R7, R6, R1       ; 14  >> 1 = 7
