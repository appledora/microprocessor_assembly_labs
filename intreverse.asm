include 'emu8086.inc'
ORG 100H

print 'enter integer: '
putc 010
putc 013

getnum:

MOV AH,01
int 21h
mov dl,al
and dx, 0xff
push dx
cmp dx, 0Dh
jne getnum
je printing


;continue:
;and dx, 0xff
;push dx
;jmp getnum


je printing

printing:
pop dx
cmp dx, 0dh
je newline

MOV ah,02
int 21h
cmp dx, 00
jne printing
je stop


newline:
putc 010
putc 013
jmp printing

stop:

DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

END
