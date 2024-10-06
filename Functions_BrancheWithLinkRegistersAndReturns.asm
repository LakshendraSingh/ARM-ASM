.global _start
_start:
	MOV R0, #1
	MOV R1, #3
	BL add2 @BL -> Branch Linked, Uses Register and stores itself the location of the code that follows this branch
	MOV R3, #4

add2:
	ADD R2, R0, R1
	bx lr @branch back to location stored in link register
