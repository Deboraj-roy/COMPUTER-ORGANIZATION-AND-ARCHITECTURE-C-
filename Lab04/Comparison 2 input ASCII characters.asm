.MODEL SMALL
.STACK 100H
.DATA
    CR EQU '0DH'
    LF EQU '0AH'                       
    MSG1 DB 'ENTER FIRST CHARACTER: $'
    MSG2 DB CR,LF, 'ENTER SECOND CHARACTER: $'
    MSG1 DB CR,LF, 'FIRST ASCII CHARACTER: $'
    
 

.CODE

MAIN PROC
        
    MOV AX,@DATA 
    MOV DS,AX   
              
    LEA DX,MSG1
    MOV AH,9H 
    INT 21H  
    MOV AH,1H
    INT 21H
    MOV BL,AL
              
              
    LEA DX,MSG2
    MOV AH,9H 
    INT 21H  
    MOV AH,1H
    INT 21H
    MOV CL,AL
    
    
    
    MOV AH,2H
    
    CMP AL,BL
    JNBE ELSE
    
    MOV DL,CL
    JMP DISPLAY
    
    
    
    ELSE:
         MOV DL,BL
    
    DISPLAY:
            INT 21H
            
    
    MOV AH,4CH
    INT 21H
MAIN ENDP
    END MAIN
  