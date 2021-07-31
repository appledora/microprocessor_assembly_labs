include "emu8086.inc"

print "Enter loop number: "
putc 010
putc 013

call scan_num
putc 010
putc 013

mov AX, 0
sum:
    add ax,cx 
    call print_num
    putc 010
    putc 013
    

loop sum

call print_num 
putc 010
putc 013


ret

DEFINE_SCAN_NUM 
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end