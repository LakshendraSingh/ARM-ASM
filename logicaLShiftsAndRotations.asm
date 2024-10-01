.global _start
_start:
	MOV R0, #10
	LSL R0, #1 @ Left shift R0 register 1 time
	LSR R0, #1 @ Right shift R0 register 1 time
	MOV R1, R0, LSL #1 @ Move value of R0 to R1 and Left shift it by 1, all at once
	ROR R0, #1 @ Rotate right R0 Register by 1
	ROR R0, #31 @ Rotate left R0 register by 31 i.e. rotate it left by 1. formula to rotate it left by n times is  :  ROR Rx, #(32-n) where x is register no. and n is the no. of times we want to rotate it left by
