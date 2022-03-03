.MODEL SMALL
.STACK 100H
.DATA
    CR EQU '0DH'
    LF EQU '0AH'
    
       
MSG1 DB 'ENTER AN INPUT: $'
MSG2 DB '   POSITIVE $ '
MSG3 DB '   ZERO $ '  
MSG4 DB '   NEGATIVE $ '

 

.CODE

 

MAIN PROC
        
    MOV AX,@DATA
    MOV DS,AX

    
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H 
    
    
     
    ;MOV CL,-1
    ;MOV CL,0
    MOV CL,1
   
     
    
        
          CMP CL,0
          JL NEGATIVE
          JE ZERO
          JG POSITIVE
          
    NEGATIVE: 
            
    LEA DX,MSG4
    MOV AH,9
    INT 21H 
    JMP END_CASE
    
    
    
    ZERO:
            
    LEA DX,MSG3
    MOV AH,9
    INT 21H 
    JMP END_CASE
    
    
    
        
    POSITIVE:
            
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    JMP END_CASE
    
    
    
    END_CASE: 
    
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN   
