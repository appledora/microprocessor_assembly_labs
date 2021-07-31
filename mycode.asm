include "emu8086.inc"

mov cx,5

level: putc 'y'
dec cx
cmp cx,0

jz 