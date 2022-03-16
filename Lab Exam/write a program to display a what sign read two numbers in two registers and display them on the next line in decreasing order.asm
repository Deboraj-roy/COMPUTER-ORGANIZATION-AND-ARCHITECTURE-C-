.MODEL SMALL
.STACK 100H
.DATA  


    CR EQU 0DH
    LF EQU 0AH   
                        
    MSG1 DB CR,LF, 'ENTER FIRST NUMBER: $'
    MSG2 DB CR,LF, 'ENTER SECOND NUMBER: $'
    
 

.CODE

MAIN PROC
        
    MOV AX,@DATA 
    MOV DS,AX   
	
	
	MOV AH,2
    MOV DL,'?'
    INT 21H
    
              
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
    CMP CL,BL  
    
              
    JGE THEN

    
    
    JMP ELSE
    
    
    
    THEN:  
    
            
         MOV DL,0DH
         INT 21H
         MOV DL,0AH
         INT 21H
     
         MOV DL,CL
         INT 21H
    
            
         MOV DL,0DH
         INT 21H
         MOV DL,0AH
         INT 21H
     
         
         MOV DL,BL
         INT 21H
         
         
       
         
         JMP END_CASE
         
          
         
    
    ELSE: 
    
            
         MOV DL,0DH
         INT 21H
         MOV DL,0AH
         INT 21H
      
         MOV DL,BL
         INT 21H 
         
            
         MOV DL,0DH
         INT 21H
         MOV DL,0AH
         INT 21H
     
         
         MOV DL,CL
         INT 21H  
                 
        
         
         
         JMP END_CASE
         
    
 END_CASE:     
    
    MOV AH,4CH
    INT 21H
MAIN ENDP
    END MAIN
