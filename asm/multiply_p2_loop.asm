LOADI R1, #5	; constant 5
LOADI R2, #1	; constant 1
LOADI R3, #0	; memory addr pointer
LOADI R4, #1	; exponent counter
LOADI R5, #10	; R5 == 10

; This is the first iteration of mul by pow 2
SHFT R6, R1, R2	; R6 = 5 << 1 = 5 * 2^1

LOOP:
	STORE R6, [R3]	; store R6 at addr in R3

	; double the number
	ADD R6, R6, R6 ; R6 = R6 + R6

	; incr pointer
	ADD R3, R3, R2	; R3 = R3 + 1

	; incr exponent counter
	ADD R4, R4, R2	; R4 = R4 + 1

	; if R4 - 10 = 0 we are done
	SUB R7, R4, R5	; R7 = R4 - 10
	BEQ R7, DONE	; If R7 == 0 then branch to DONE

	; else loop
	B LOOP
DONE:
	HALT
