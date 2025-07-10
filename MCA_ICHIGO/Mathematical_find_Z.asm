
.MODEL SMALL
.STACK 64
.DATA
X DB 15,24,17,12,14,23,11,22,16,12
Y DB 12,23,28,19,15,19,25,18,26,21
Z DW 0
N DB 10

.CODE
MAIN:
    MOV AX, @DATA
    MOV DS, AX
    MOV CH, 10
    MOV SI, OFFSET X
    MOV DI, OFFSET Y 
    
BACK:
    MOV AL, [SI]
    MOV DL, [DI]
    SUB AL,DL
    JNS SKIP_NEG
    NEG AL

SKIP_NEG:
   CBW
   ADD BX,AX
   INC SI
   INC DI
   DEC CH
   JNZ BACK
   MOV Z,BX
   MOV AX, 4CH
   INT 21H    
END MAIN


ret




