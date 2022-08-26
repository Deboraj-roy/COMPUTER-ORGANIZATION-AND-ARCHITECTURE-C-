.MODEL  SMALL
.STACK 100H 

.DATA
    
    CR EQU 0DH
    LF EQU 0AH 
    
    
    MSG1 DB 'TYPE A CHARACTER: $'
    MSG2 DB CR,LF, 'RESPECTIVE BINARY: $'
     
    MSG3 DB CR,LF, 'NUMBER OF 1 Is: $'
  
.CODE 

MAIN PROC
          
          
    MOV AX,@DATA
    MOV DS,AX       
          
     
    MOV AH,9
    LEA DX,MSG1
    INT 21H
      
 
    MOV AH,1
    INT 21H
    MOV BL,AL          
          
    MOV BH,'0'
    
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H      
           
           
    MOV CX,8 
    
    PRINT:
    
        MOV AH,2
        
        
        MOV DL,'0'
        
        SHL BL,1 
        
        JNC NEXT
        
        MOV DL,'1'
        
        INC BH
        
        NEXT:
             INT 21H
        
        LOOP PRINT
     
    MOV DL,'b'
    
    INT 21H
    
    ;DOS EXIT
   
 
    MOV AH,9
    LEA DX,MSG3
    INT 21H
    
    MOV AH,2
    MOV DL,BH
    INT 21H         
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN   
