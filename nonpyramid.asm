include "emu8086.inc"
org 100h


print "print levels:"
putc 010
putc 013

call scan_num
putc 010
putc 013

mov ax, 1

triangle:
        push cx
        mov cx, ax
        item:
            putc '*'
        loop item
        
        putc 010
        putc 013
        add ax, 1
        pop cx

loop triangle

ret

DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end