.MODEL SMALL
.STACK 100H
.DATA
    CR EQU '0DH'
    LF EQU '0AH'
    
 

.CODE

 

MAIN PROC
        
    MOV AX,@DATA 
    MOV DS,AX 
    
    MOV AL,'Z'
    MOV BL,'A'
  
    

    MOV AH,2 
    
    CMP AL,BL
    JNBE ELSE_
    
    MOV DL,AL
    JMP DISPLAY
    
    
    ELSE_:
          MOV DL,BL
    
    DISPLAY:
          INT 21H

    
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN   
