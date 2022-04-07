.MODEL SMALL
.STACK 100H
.DATA
    OUTPUT_MSG DB 0AH,0DH,'OUTPUT IS: $'
.CODE

MAIN PROC
 
    MOV AX,@DATA
    MOV DS,AX
 
    MOV AH,2
    MOV DL,3FH
    INT 21H
 
    MOV CL,0
    TOP:
        MOV AH,1
        INT 21H
     
        CMP AL,0DH
        JE END_INPUT
     
        PUSH AX
        INC CL
        JMP TOP
    END_INPUT:
 
    MOV AH,9
    LEA DX,OUTPUT_MSG
    INT 21H
 
    OUTPUT:
        CMP CL,0
        JE END_OUTPUT
     
        MOV AH,2
        POP BX
        MOV DX,BX
        INT 21H
        DEC CL
        JMP OUTPUT
    END_OUTPUT:
 
    MOV AH,4CH
    INT 21H
     
    MAIN ENDP
END MAIN