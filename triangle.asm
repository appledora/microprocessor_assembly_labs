include 'emu8086.inc'
ORG 100H
print 'Enter number of nummbers'
putc 010
putc 013

CALL scan_num
putc 010
putc 013

MOV AX,1
pyramid:
  push CX
  spaceprint:
  print '*'
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
RET
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS


END
