.MODEL SMALL
.STACK 64
.DATA
GRADES DW 19A2H, 93B1H, 6991H, 55B4H, 99A9H
LOWEST DW ?

.CODE
MAIN:
    MOV AX, @DATA
    MOV DS, AX
    MOV SI, OFFSET GRADES
    MOV CX, 5
    MOV AX, [SI]       
    ADD SI, 2
    DEC CX             

FIND_LOW:
    MOV DX, [SI]       
    CMP AX, DX
    JBE SKIP_UPDATE    
    MOV AX, DX        

SKIP_UPDATE:
    ADD SI, 2
    LOOP FIND_LOW
    MOV LOWEST, AX     
    MOV AH, 4CH
    INT 21H
END MAIN
