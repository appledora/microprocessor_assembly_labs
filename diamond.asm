include 'emu8086.inc'
ORG 100H
print 'Enter number of nummbers'
putc 010
putc 013

CALL scan_num
putc 010
putc 013

MOV BX, CX
MOV AX,1
pyramid:
  push CX
  spaceprint:
  print ' '
  loop spaceprint
  MOV CX,AX

  starprint:
  print '^'
  loop starprint
  ADD AX,2

  putc 010
  putc 013

  pop CX

loop pyramid

MOV CX,BX
mov star, CX
mov AX, 2
mul star
dec AX
mov star, ax

mov AX, 1
ipyramid:

MOV BX,CX
MOV CX, AX

space:
print ' '
loop space
inc ax

MOV CX,star
starprint1:
print '*'
loop starprint1
dec star
dec star

putc 010
putc 013

MOV CX,BX

loop ipyramid




RET
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS


star DW ?
END
