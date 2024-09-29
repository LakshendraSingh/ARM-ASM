.global _start
_start:
    MOV R0, #5
    MOV R1, #7
    MOV R5, #0XFFFFFFFF
    ADD R2, R0,R1 @ R2 = R0 + R1 (does not update cpsr flag)
    MUL R4, R0, R1 @ R4 = R0 * R1
    SUB R3, R0, R1 @ R3 = R0 - R1 (does not update cpsr flag)
    SUBS R3, R0, R1 @ R3 = R0 - R1 (updates cpsr flag)
    ADDS R3, R5, R1 @ R3 = R5 + R1 (updates cpsr flag)
    ADC R3, R5, R1 @  R3 = R5 + R1 + CARRY
