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
    
    
    MOV AL,BL
   
    MOV CX,8 
    
    
    REVERSE:
    
           SHL AL,1
           RCR BL,1
           
           LOOP REVERSE
           
           MOV AL,BL  
           
    MOV CX,8 
    
    PRINT:
    
        MOV AH,2
        MOV DL,'0'
        TEST BL, 10000000b
        JZ ZERO
        
        MOV DL,'1'
        
        ZERO:
             INT 21H
             
        SHL BL,1
        
        LOOP PRINT
     
    MOV DL,'b'
    
    INT 21H
    
    ;DOS EXIT
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN
