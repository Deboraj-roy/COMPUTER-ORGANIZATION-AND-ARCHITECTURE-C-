.MODEL  SMALL
.STACK 100H 

.CODE 

MAIN PROC
    
    MOV CX,49
    
    MOV AH,2
    
    
    MOV AL,'1'
    MOV DL,AL 
    INT 21H
     
    JCXZ EXIT 

    
    LOOP_D:
      
    ;MOV DL,'+'
    ;INT 21H 
     
    ADD AL,4
    MOV DL,AL
    INT 21H

    
      
    CMP AL,197
    JE EXIT
    
    LOOP LOOP_D
    
 
   
    
    EXIT:   ;DOS EXIT
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN
