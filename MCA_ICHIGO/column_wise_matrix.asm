START:
    MOV AL, 10000000B     
    OUT 1EH, AL           
    MOV AL, 11111111B     
    OUT 18H, AL           
    MOV AL, 00000000B    
    OUT 1AH, AL           
SCROLL_LOOP:
    MOV AL, 00000001B    
    OUT 1CH, AL
    MOV AL, 00000010B     
    OUT 1CH, AL
    MOV AL, 00000100B    
    OUT 1CH, AL
    MOV AL, 00001000B     
    OUT 1CH, AL
    MOV AL, 00010000B    
    OUT 1CH, AL
    MOV AL, 00100000B     
    OUT 1CH, AL
    MOV AL, 01000000B     
    OUT 1CH, AL
    MOV AL, 10000000B     
    OUT 1CH, AL
    JMP SCROLL_LOOP       
ret

   ; EA+0C+10+00+00


