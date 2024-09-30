.global _start
_start:
	MOV R0,#0xAA
	MOV R1,#22
	AND R2,R0,R1 @ AND operator R2 = R0 AND R1
	ANDS R2, R0, R1 @ AND operator that sets flags
	ORR R2,R0,R1 @ OR OPERATOR
	EOR R2, R0, R1 @ EXCLUSIVE OR operator
	MVN R0,R0 @ MOVE NEGATION, basically moves from the source the negation of the source to the destination. Here, R0 value is taken and Negated and Stored back in R0 NOTE : IT WORKS ON THE WHOLE REGISTER
	AND R0, R0, #0x000000FF @ This will set the first 6 bits from the right to 0 and the last 2 bits will have their initial values

