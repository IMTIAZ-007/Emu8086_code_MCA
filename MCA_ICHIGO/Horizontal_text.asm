.MODEL SMALL
.STACK 64H
.DATA
MSG DB 'Horizontal Text Test','$'

.CODE
MAIN:
    MOV AX, @DATA
    MOV DS, AX

    LEA SI, MSG
    MOV DH, 5        
    MOV DL, 35       

PRINT_LOOP:
    MOV AL, [SI]
    CMP AL, '$'
    JE EXIT
   
    MOV AH, 02h
    MOV BH, 0
    INT 10h
 
    MOV AH, 0Eh
    INT 10h

    INC DH
    INC SI
    JMP PRINT_LOOP

EXIT:
    MOV AH, 4Ch
    INT 21h
END MAIN
