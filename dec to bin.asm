include 'emu8086.inc'
ORG 100H

print 'Enter Number to convert: '
putc 010
putc 013

CALL scan_num
putc 010
putc 013

mov ax, cx
mov cx, 31
mov bx,2

binary:
 div bx
 push DX
loop binary

MOV cx,31
popping:
pop dx
mov ax,dx
CALL print_num
loop popping

RET
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

temp dw ?

END
