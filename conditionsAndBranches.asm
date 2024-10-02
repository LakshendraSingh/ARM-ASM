.global _start
_start:
	MOV R0,#1
	MOV R1,#2
	CMP R0, R1 @Compare R0 And R1 BY PERFORMING (R0-R1) AND USINNG THE CPSR REGISTER TO SET FLAGS AND DETERMINE THE RESULT
	BGT Greater @Bracnh Greater than
	BGE G_Equals @Branch Greater than or Equals to
	BLT Less @Branch Less than
	BLE L_Equals @Branch Less than or Equals to
	BEQ Equals @Branch Equals
	BNE NotEquals @Branch Not Equals
	BAL Default @Branch Always
	
Greater : 
	MOV R2, #1
G_Equals :
	MOV R2, #2
Less :
	MOV R2, #3
L_Equals :
	MOV R2, #4
Equals :
	MOV R2, #5
NotEquals :
	MOV R2, #6
Default :
	MOV R2, #7


@Note - ASM CODE IS EXECUTED SEQUENTALLY SO USE 'BAL DEFAULT' AFTER ALL BRANCHES TO AVOID ERRORS 
