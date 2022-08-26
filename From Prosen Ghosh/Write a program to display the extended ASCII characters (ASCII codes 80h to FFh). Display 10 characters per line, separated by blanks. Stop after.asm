.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC

    CALL INITIALIZE_FUNC
    TOP:
        CMP CL,10
        JE NEWLINE
        CALL DISPLAY_FUNC
       
        JMP TOP
    NEWLINE:
        CALL NEWLINE_FUNC
        JMP TOP  

    MAIN ENDP        

INITIALIZE_FUNC PROC
 
    MOV BL,80H
    MOV CL,0
    RET
 
    INITIALIZE_FUNC ENDP

DISPLAY_FUNC PROC
 
    INC CL
     
    MOV AH,2
    MOV DL,BL
    INT 21H
    INC BL
     
    CMP BL,0FFH
    JE END_
 
    RET
    END_:
        CALL END_FUNC
        RET
     
    DISPLAY_FUNC ENDP

NEWLINE_FUNC PROC  
 
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    MOV CL,0
    RET
     
    NEWLINE_FUNC ENDP

END_FUNC PROC  
 
    MOV AH,4CH
    INT 21H
    RET
 
    END_FUNC ENDP

END MAIN