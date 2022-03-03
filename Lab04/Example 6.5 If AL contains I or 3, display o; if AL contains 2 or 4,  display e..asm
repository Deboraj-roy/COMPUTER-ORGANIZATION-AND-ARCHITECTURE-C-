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
    MOV DL, 0DH
    MOV DL, 0AH
    
    
    MOV AH,1
    INT 21H
    MOV CL,AL 
    SUB CL,48 
    
    
    MOV DL, 0AH 
    MOV AH,2
    INT 21H
     
    
        
          CMP CL,1
          JE ODD
          CMP CL,3 
          JE ODD
          
          CMP CL,2
          JE EVEN
          CMP CL,4
          JE EVEN 
          JMP END_CASE
          
          
          ODD:
             MOV DL,'O'
             JMP DISPLAY
             
             
          EVEN:
              MOV DL,'E'
              
          DISPLAY:
              MOV AH,2
              INT 21H
              
          END_CASE:
          
          
        
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN   

   

    