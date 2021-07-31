include 'emu8086.inc'

  
call scan_num  

putc 010
putc 013

mov ax, cx

call scan_num   


putc 010
putc 013

mov bx, cx

call scan_num 

putc 010
putc 013
          
          
cmp ax, bx
jge lb1
jmp lb3

lb1:
    cmp ax, cx
    jge lb2
    print 'Largest number: '
    mov ax, cx
    call print_num
    putc 010
    putc 013
    jmp stop

lb2:
    print 'largest number: '
    call print_num
    putc 010
    putc 013
    jmp stop       
    
lb3:
    cmp bx, cx
    jge lb4 
    print 'Largest number: '
    mov ax, cx
    call print_num
    putc 010
    putc 013
    jmp stop
    
lb4:
    mov ax, bx
    print 'Largest number: '
    call print_num
    putc 010
    putc 013
    jmp stop


stop:  


ret
   
   
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end