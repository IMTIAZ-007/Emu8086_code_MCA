.MODEL SMALL  
.STACK 64H  
.DATA  
X DB  3 
Y  DB  4
Z  DB  6
  
    
Q  DB ?  
R  DB ?
.CODE  
MAIN:  
  
MOV AX,@DATA  
MOV DS,AX  
MOV AL,X  
ADD AL,Y  
MUL Z  
MOV BL,3  
DIV BL  
MOV Q,AL  
MOV R,AH  
MOV AH,4CH  
INT 21H  
END MAIN 