include 'emu8086.inc'
ORG 100H

print 'Enter num1: '
putc 010
putc 013

call scan_num
putc 010
putc 013
mov num1,cx

print 'Enter num2: '
putc 010
putc 013

call scan_num
putc 010
putc 013
mov num2, cx

mov ax, num1
mov bx,num2

cmp bx, 0
jne gcd0

gcd0:
mov dx, 0
mov cx, bx
div bx

mov ax, cx
mov bx, dx

cmp bx, 0
jne gcd0

print 'final GCD: '
putc 010
putc 013

call print_num
putc 010
putc 013

mov ax, num1
mov bx , num2
mul bx
div cx

print 'LCM: '
putc 010
putc 013

call print_num
putc 010
putc 013

ret
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

num1 DW ?
num2 DW ?


end
