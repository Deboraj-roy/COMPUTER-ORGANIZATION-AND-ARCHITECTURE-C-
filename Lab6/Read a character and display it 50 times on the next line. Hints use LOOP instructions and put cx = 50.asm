.MODEL  SMALL
.STACK 100H 

.CODE 

MAIN PROC
    
    MOV AH,1
    INT 21H
    MOV BL,AL
       
    MOV AH,2 
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    
    INT 21H
           
    MOV CX,50
    MOV AH,2 


    
    MOV DL,BL
    
    JCXZ SKIP 
    
    TOP:
      INT 21H
      LOOP TOP
      
   
    
    SKIP:  ;DOS EXIT
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN