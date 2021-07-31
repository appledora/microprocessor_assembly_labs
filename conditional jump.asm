
include "emu8086.inc"

org 100h

mov AL, 0
mov BL,5

cmp AL,BL

JE equal

putc 'n'
JMP stop


equal:
putc 'y'

stop:
ret




