;Write an assembly program that prints Hello World five times and then prints Bye world. Hints: Use unconditional  CMP, conditional JE, JNE instruction
.MODEL SMALL
.STACK 100H
.DATA
    CR EQU '0DH'
    LF EQU '0AH'
    MSG DB 'HELLO WORLD $'

 

.CODE

 

MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
    MOV CX,5
    
 PRINT_:
    LEA DX,MSG
    MOV AH,9
    INT 21H 
     
         
    MOV AH, 2                    ; carriage return
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH                  ; line feed
    INT 21H
    
    DEC CX
    
    JNZ PRINT_
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN   


   