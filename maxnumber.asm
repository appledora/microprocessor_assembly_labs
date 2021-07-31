include 'emu8086.inc'
ORG 100H

call scan_num
putc 010
putc 013

mov bx, cx
inc bx
input:
dec bx
cmp bx, 0
je printing
call scan_num
putc 010
putc 013
mov ax, cx
call print_num
print '  '
mov ax, max
call print_num
print '____'

cmp cx,max
jge swap
printn
jmp input


putc 010
putc 013

printing:
mov ax, max
print 'FINAL: '
call print_num
jmp stop

swap:
mov max,cx
je printing
printn

jmp input





RET

stop:
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

max dw 0
temp dw ?

END
