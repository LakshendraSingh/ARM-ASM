.global _start
_start:
	LDR R0, =list @ loads the first value to R0 i.e. moves data here 'list' to STACK Memory, DIRECT ADDRESSING
	LDR R1, [R0] @ loads data to R1, INDIRECT ADDRESSING
	LDR R2, [R0,#4] @ loads data of R0+4 i.e. r0+1 index to R2, 4 because arm uses 32 bit instruction set i.e. one word length is 4, INDIRECT ADDRESSING WITH OFFSET
	LDR R3, [R0,#4]! @ loads data of R0+4 i.e. r0+1 index to R2, AFTER incrementing r0 value to r0+4, 4 because arm uses 32 bit instruction set i.e. one word length is 4, PREINCRMENT ADDRESSING
	LDR R4,[R0],#4  @ loads data of R0+4 i.e. r0+1 index to R2, BEFORE incrementing r0 value to r0+4, 4 because arm uses 32 bit instruction set i.e. one word length is 4, POSTINCRMENT ADDRESSING

.data
list : 
	.word 4,5,-9,1,0,2,-3
