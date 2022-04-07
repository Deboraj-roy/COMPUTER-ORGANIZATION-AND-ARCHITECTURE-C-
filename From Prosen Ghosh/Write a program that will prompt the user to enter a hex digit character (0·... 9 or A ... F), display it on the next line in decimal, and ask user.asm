.MODEL SMALL
.STACK 100H
.DATA
    PROMPT_TRY_MSG DB 'TRY AGAIN.$'
    PRMPT_MSG_1 DB 'ENTER A HEX DIGIT "0"..."9"  OR "A".."F": $'
    OUTPUT_PRMPT DB 0AH,0DH,'OUTPUT: $'
    ASK_PROMPT DB 0AH,0DH,'DO YOU WANT ANOTHER INPUT: $'
.CODE
MAIN PROC
 
    MOV AX,@DATA
    MOV DS,AX
 
    TOP:
        MOV AH,9
        LEA DX,PRMPT_MSG_1
        INT 21H
     
        MOV AH,1
        INT 21H
        MOV BL,AL
     
        CMP BL,30H
        JL  TRY_MSG
     
        CMP BL,46H
        JG  TRY_MSG
     
        CMP BL,39H
        JLE DIGIT
     
        MOV AH,9
        LEA DX,OUTPUT_PRMPT
        INT 21H
     
        SUB BL,11H
     
        MOV AH,2
        MOV DL,31H
        INT 21H
        MOV DL,BL
        INT 21H      
    AGAIN:
        MOV AH,9
        LEA DX,ASK_PROMPT
        INT 21H
     
        MOV AH,1
        INT 21H
        MOV BH,AL
        MOV AH,2
        MOV DL,0AH
        INT 21H
        MOV DL,0DH
        INT 21H
         
        CMP BH,'Y'
        JE TOP
        CMP BH,'y'
        JE TOP
        JMP END_
    DIGIT:
        MOV AH,9
        LEA DX,OUTPUT_PRMPT
        INT 21H
     
        MOV AH,2
        MOV DL,BL
        INT 21H
     
        JMP AGAIN
    TRY_MSG:
        MOV AH,9
        LEA DX,PROMPT_TRY_MSG
        INT 21H
        JMP TOP      
    END_:
 
    MOV AH,4CH
    INT 21H
     
    MAIN ENDP
END MAIN