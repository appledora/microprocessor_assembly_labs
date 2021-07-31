include "emu8086.inc"
org 100h

call scan_num  
putc 010
putc 013  
mov ax, 0

print 'Enter numbers:'
putc 010
putc 013

k:
    push cx
    call scan_num 
    putc 010
    putc 013
    add ax, cx
    pop cx

loop k 

print 'Print their sum: '
call print_num

putc 010
putc 013

ret

DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end