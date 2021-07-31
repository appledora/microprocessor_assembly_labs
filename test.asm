include "emu8086.inc"
org 100h
mov AX, 5

mov AX, num

mov bx, 6h              
               
 
mov [BX], AX  


mov cx, [BX] 
mov dx, bx 


mov al, a[1]
putc a[2]
ret
 
num DW 7 
         

a Db 'h' ,'e', 'l'   
