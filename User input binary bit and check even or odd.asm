.MODEL  SMALL
.STACK 100H 

.CODE 

MAIN PROC
 
    MOV CX,8
        
    MOV BX,0
    MOV AH,1
    INT 21H
    
    WHILE_:
         CMP AL,0DH
         JE REVE
         AND AL,0FH
         SHL BX,1
         OR BL,AL
         INT 21H
         JMP WHILE_
      
    REVE:  
    
    MOV AH, 2                    ; carriage return
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH                  ; line feed
    INT 21H
    
 
           
    MOV CX,1 
    
    PRINT:
    
        MOV AH,2
        MOV DL,'E'
        TEST BL,1
        JZ ZERO
        
        MOV DL,'O'
        
        ZERO:
             INT 21H
             
       
    
    ;DOS EXIT
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN