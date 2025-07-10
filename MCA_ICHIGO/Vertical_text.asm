.MODEL SMALL
.STACK 64H
.DATA
MSG DB 'Vertical Text Test','$'
.CODE
MAIN:
    MOV AX, @DATA
    MOV DS, AX

    LEA SI, MSG
    MOV DH, 5
    MOV DL, 10

PRINT_LOOP:
    MOV AL, [SI]
    CMP AL, '$'
    JE EXIT

    MOV AH, 02H
    INT 10H

    MOV AH, 0Eh
    INT 10H

    INC DL
    INC SI
    JMP PRINT_LOOP

EXIT:
    MOV AH, 4CH
    INT 21H
END MAIN

ret




