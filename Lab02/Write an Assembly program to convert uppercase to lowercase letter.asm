;Write an Assembly program to convert uppercase to lowercase letter


.MODEL SMALL   
.STACK 100H
.DATA
    
    CR EQU 0DH
    LF EQU 0AH                             
MSG1 DB 'ENTER A UPPERCASE LETTER: $'
MSG2 DB CR,LF,'IN LOUERCASE IT IS: ' 

CHAR DB ?,'$' 

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    ;SUB AL,20H
    ADD AL,20H
    MOV CHAR,AL
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    MOV AH,4CH
    INT 21H
MAIN ENDP
    END MAIN