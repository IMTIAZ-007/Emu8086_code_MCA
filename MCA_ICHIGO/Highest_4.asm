.MODEL SMALL
.STACK 64
.DATA
GRADES  DW 1956H, 93A4H, 69B7H, 5C55H, 9999H
HIGHEST DW ?

.CODE
MAIN:
    MOV AX, @DATA
    MOV DS, AX
    MOV SI, OFFSET GRADES
    MOV CX, 5               
    MOV AX, [SI]            
    ADD SI, 2               
    DEC CX                  

FIND_MAX:
    MOV DX, [SI]            
    CMP AX, DX
    JAE SKIP                
    MOV AX, DX              

SKIP:
    ADD SI, 2              
    LOOP FIND_MAX
    MOV HIGHEST, AX        
    MOV AH, 4CH
    INT 21H
END MAIN
