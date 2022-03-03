.MODEL SMALL
.STACK 100H
.DATA
    CR EQU '0DH'
    LF EQU '0AH'
    
       
MSG1 DB 'Absolute value is: $'


 

.CODE

 

MAIN PROC
        
    MOV AX,@DATA 
    MOV DS,AX
    
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H 
    MOV DL, 0DH
    MOV DL, 0AH 
   
    
    
    MOV AX,-1 
    
        CMP AX,0
        JNL END_IF
        NEG AX 
        
    END_IF:
    

    MOV DX,AX
    MOV AH,2H
    INT 21H
    
    MAIN ENDP
END MAIN   
