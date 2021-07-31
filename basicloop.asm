
include "emu8086.inc"
org 100h

mov cx, 7
level:
    putc 'y'
    putc 0ah  
    putc 0dh ;carriage return
loop level

ret




