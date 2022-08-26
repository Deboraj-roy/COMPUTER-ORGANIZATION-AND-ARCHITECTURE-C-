.MODEL  SMALL
.STACK 100H 

.CODE 

MAIN PROC
    
    MOV AH,2
    MOV CX,20
    MOV DL,1AH
     
    PRINT_LOOP:
    
    INT 21H
    INC DL
    DEC CX
    JNZ PRINT_LOOP
    
    ;DOS EXIT
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN
    
