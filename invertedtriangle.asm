include 'emu8086.inc'
ORG 100H
print 'Enter number of numbers'
putc 010
putc 013

CALL scan_num
putc 010
putc 013

mov star, CX
mov AX, 2
mul star
dec AX
mov star, ax

mov AX, 1
pyramid:

MOV BX,CX
MOV CX, AX

space:
print '_'
loop space
inc ax

MOV CX,star
starprint:
print '*'
loop starprint
dec star
dec star

putc 010
putc 013

MOV CX,BX

loop pyramid




RET
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS


star DW ?




END
