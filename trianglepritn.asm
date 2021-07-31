include "emu8086.inc"
ORG 100h

.MODEL small ;size of code
.DATA  ;data segment
    space DW 5 ;number of space on first line
    star DW 1  ;number of stars on first line

.CODE
  MAIN PROC

    mov CX, 5 ;number of levels.loop for outer
    outer:
      mov BX, CX ;storing vaue of cx into bx
                 ;so it doesn't change in the
                 ;following loops

      mov CX,space ;looplimit for spaceprint
      spaceprint:
         putc 32
         ;mov DL, 32 ; space == 32 ascii
         ;mov AH, 02h ;request display character
         ;int 21h ; terminates writing to terminal
      loop spaceprint
      dec space

      mov CX, star
      starprint:
         putc '*'
         ;mov DL, '*'
         ;mov AH, 02h
         ;int 21h
      loop starprint
      inc star
      inc star ; or add star, 2
               ;because it increments by two

    putc 0ah
    ;mov DL, 0Ah ;A ==10 == newline in ascii
    ;mov AH, 02h
    ;int 21h

    putc 0dh
    ;mov DL, 0Dh ;D ==13 == carriage return in ascii
    ;mov AH, 02h ;restarts the loop
    ;int 21h

    mov CX, BX ; without it the loop gets stuck
    loop outer

  ret

end MAIN
endp
