include "emu8086.inc"

org 100h

mov cx,5 

level: 

putc 'y'

dec cx
cmp cx, 0

jnz level

;or alternatively


mov cx, 7

levels:

putc '*'

loop levels