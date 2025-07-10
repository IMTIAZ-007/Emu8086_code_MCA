
org 100h

.MODEL SMALL
.STACK 64H

.DATA
NA      DB 'AlBeRt EiNsTeIn'
RESULT  DB 15 DUP(?)

.CODE
MAIN:
    MOV AX, @DATA
    MOV DS, AX
    MOV SI, OFFSET NA
    MOV DI, OFFSET RESULT
    MOV CX, 15

NEXT1:
    MOV AL, [SI]
    CMP CX, 8
    JG LOWERCASE     

    CMP AL, 'a'
    JB SKIP1
    CMP AL, 'z'
    JA SKIP1
    AND AL, 11011111B 
    JMP STORE1

LOWERCASE:
    CMP AL, 'B'
    JB SKIP1
    CMP AL, 'Z'
    JA SKIP1
    OR AL, 00100000B  

SKIP1:
STORE1:
    MOV [DI], AL
    INC SI
    INC DI
    LOOP NEXT1

    MOV AH, 4CH
    INT 21H
END MAIN


ret




