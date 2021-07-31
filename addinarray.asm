include 'emu8086.inc'
ORG 100H
mov dx, 1245h
lea di,arr

call scan_num
printn
mov a, cx

mov bx,1
input:
push cx
call scan_num
print n
mov arr[bx],cx
add bx, 2
pop cx
loop input

mov cx, a
mov a,0

mov bx,1
summation:
mov dx,arr[bx]
add a,dx
add bx,2
loop summation

mov ax, a

print "FINAL: "
call print_num

RET
stop:
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

a dw ?
arr dw 20 dup (0)

END
