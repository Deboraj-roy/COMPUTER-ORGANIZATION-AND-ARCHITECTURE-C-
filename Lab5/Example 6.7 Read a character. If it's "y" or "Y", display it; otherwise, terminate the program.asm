.MODEL  SMALL
.STACK 100H 

.CODE 

MAIN PROC
    
    MOV AH,1
    INT 21H 
    
    
    CMP AL, 'y'
    JE THEN
    
    CMP AL,'Y'
    JE THEN 
    
    
    JMP ELSE_ 
    
    THEN:
   
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    
    
    ELSE_:   ;DOS EXIT
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN
