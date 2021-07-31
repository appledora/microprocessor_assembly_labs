include 'emu8086.inc'
ORG 100H

print 'enter integer: '
putc 010
putc 013

call get_string

mov si, di

output:
putc di
printn
inc di
cmp di,032
jne output
je stop

RET
stop:
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

END
