.MODEL SMALL  
.DATA   
GRADES DB 19H, 93H, 69H, 55H, 99H  
LOWEST  DB ?  
.CODE  
MAIN:  
    MOV AX, @DATA  
    MOV DS, AX  
    MOV BX, OFFSET GRADES  
    MOV AL, [BX]        
    MOV CX, 5           

NEXT:  
    CMP [BX], AL         
    JB  UPDATE            

SKIP:  
    INC BX               
    LOOP NEXT             
    MOV LOWEST, AL       
    MOV AH, 4CH  
    INT 21H  

UPDATE:  
    MOV AL, [BX]          
    JMP SKIP  

END MAIN
