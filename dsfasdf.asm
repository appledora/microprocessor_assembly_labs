include 'emu8086.inc'
org 100h

;lea bx, var

;mov [bx], 10 

;mov ax, var   

CALL scan_num

mov ax, cx     

putc 010
putc 013

CALL print_num  


putc 010
putc 013


            ;print var1
ret


    
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS 
DEFINE_SCAN_NUM 
DEFINE_PRINT_STRING
DEFINE_PTHIS

end