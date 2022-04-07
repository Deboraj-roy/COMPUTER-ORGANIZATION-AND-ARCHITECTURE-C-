.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC
 
    CALL INPUT_MSG_FUNC
    CALL INPUT_FUNC
    CALL NEWLINE_FUNC
    CALL OUTPUT_FUNC
 
    MOV AH,4CH
    INT 21H
 
    MAIN ENDP        

INPUT_MSG_FUNC PROC
 
    MOV AH,2
    MOV DL,3FH
    INT 21H
    RET
 
    INPUT_MSG_FUNC ENDP

INPUT_FUNC PROC
 
    MOV AH,1
    INT 21H
    MOV BL,AL
    INT 21H
    MOV BH,AL
    RET
 
    INPUT_FUNC ENDP

NEWLINE_FUNC PROC
 
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    RET
 
    NEWLINE_FUNC ENDP

OUTPUT_FUNC PROC
 
    CMP BL,BH
    JNL PRINT_1
 
    PRINT-2:
    MOV AH,2
    MOV DL,BL
    INT 21H
 
    MOV DL,BH
    INT 21H
 
    JMP END_
 
    PRINT_1:
    MOV AH,2
    MOV DL,BH
    INT 21H
    MOV DL,BL
    INT 21H
 
    END_:
    RET
 
    OUTPUT_FUNC ENDP
END MAIN