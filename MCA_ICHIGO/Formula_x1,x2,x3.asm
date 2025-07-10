.MODEL SMALL
.STACK 100H
.DATA
X1 DW 3
X2 DW 6
X3 DW 9
RESULT DW ?
REMAINDER DW ?        
.CODE
MAIN:
    MOV AX, @DATA
    MOV DS, AX
    MOV AX, X1
    MUL X2          
    MOV BX, AX      
    MOV AX, X2
    MUL X3
    ADD BX, AX    
    MOV AX, X3
    MUL X1
    ADD BX, AX      
    MOV AX, X1
    ADD AX, X2
    ADD AX, X3     
    MOV CX, AX     
    MOV AX, BX      
    XOR DX, DX     
    DIV CX          
    MOV RESULT, AX
    MOV REMAINDER, DX
    MOV AH, 4CH
    INT 21H
END MAIN




