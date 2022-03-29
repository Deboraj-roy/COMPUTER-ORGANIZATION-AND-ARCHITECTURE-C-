.MODEL  SMALL
.STACK 100H 

.CODE 

MAIN PROC
    
    MOV CX,80
    MOV AH,2
    MOV DL,'*'
    
    JCXZ SKIP 
    
    TOP:
      INT 21H
      LOOP TOP
      
   
    
    SKIP:  ;DOS EXIT
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN