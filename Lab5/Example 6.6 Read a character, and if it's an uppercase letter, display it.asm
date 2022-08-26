.MODEL  SMALL
.STACK 100H 

.CODE 

MAIN PROC
    
    MOV AH,1
    INT 21H 
    
    CMP AL, 'A'
    JNGE END_IF
    
    CMP AL,'Z'
    JNLE END_IF
      
    
    MOV DL,AL
    MOV AH,2
    INT 21H
   
    
    END_IF:   ;DOS EXIT
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN