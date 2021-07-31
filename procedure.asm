include 'emu8086.inc'
ORG 100h

MOV AL, 10
MOV BL, 2

CALL m2
CALL PRINT_NUM 

RET ; return to operating system.

m2 PROC
MUL BL ; AX = AL * BL.
RET ; return to caller.
m2 ENDP

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

END