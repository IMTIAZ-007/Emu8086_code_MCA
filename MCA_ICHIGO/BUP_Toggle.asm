.MODEL SMALL  
.DATA  
MIXED DB 'Bangladesh University of Professionals was established in 2013'  
UPPER DB 62 DUP(?)  
CHANGED DB 0     
UNCHANGED DB 0    
.CODE  
MAIN: MOV AX,@DATA  
      MOV DS,AX  
      MOV SI,OFFSET MIXED  
      MOV BX,OFFSET UPPER  
      MOV CX,62  
BACK: MOV AL,[SI]  
      CMP AL,61H  
      JB UPPERS
      CMP AL,7AH  
      JA UPPERS  
      AND AL,11011111B  
      INC CHANGED     
      JMP STORE
UPPERS:
      CMP AL,41H  
      JB NOT_LETTER  
      CMP AL,5AH  
      JA NOT_LETTER  
      INC UNCHANGED   
NOT_LETTER:
STORE: MOV [BX],AL  
      INC SI  
      INC BX  
      LOOP BACK  
      MOV AH,4CH  
      INT 21H  
      END MAIN