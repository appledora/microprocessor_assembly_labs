include 'emu8086.inc'
ORG 100H

print 'Enter fibonaccis to add'
putc 010
putc 013

CALL scan_num
putc 010
putc 013

dec CX
dec CX

MOV AX,0
MOV BX,1
print '0 1 '


fibo:
 MOV DX,0
 ADD  DX,AX
ADD DX,BX

mov ax, dx
call print_num
putc 032

MOV AX,BX
MOV BX, DX


loop fibo



MOV AX, DX
print 'Final: '
putc 010
putc 013

CALL PRINT_NUM

RET
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
