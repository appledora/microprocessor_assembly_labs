
include 'emu8086.inc'
org 100h

mov BX,0

mov CX,5

k1:
 add BX,1
 mov AL,'1'
 mov AH,0eH
 int 10H
 push CX
 mov CX,5
 putc AL
  k2:
   add BX,1
   mov AL, '2'
   mov AH,0eH
   int 10H
   push CX
   mov CX,5
   putc AL
    k3:
     add BX,1
     mov AL, '3'  
     mov AH,0eH
     int 10H
     loop k3
   pop CX
   loop k2
  pop CX
  loop k1

ret




