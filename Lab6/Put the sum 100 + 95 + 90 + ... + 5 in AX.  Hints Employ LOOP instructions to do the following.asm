.MODEL  SMALL
.STACK 100H 

.CODE 

MAIN PROC
    
    MOV CX,100         ;'d'
    
    MOV AH,2
    
    
    MOV AL,100
    MOV DL,AL 
    INT 21H
     
    JCXZ EXIT 

    
    LOOP_D:
      
    ;MOV DL,'+'
    ;INT 21H 
     
    SUB AL,5
    MOV DL,AL
    INT 21H

    
      
    CMP AL,00
    JE EXIT
    
    LOOP LOOP_D
    
 
   
    
    EXIT:   ;DOS EXIT
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN