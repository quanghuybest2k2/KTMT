.MODEL SMALL
.STACK 100H
.DATA
    CR EQU 13   ;CONSTANT
    LF EQU 10
    MSG1 DB "Enter a binary number:$"
    MSG2 DB CR,LF,"Your input number:$"
.CODE
    MOV AX, @DATA
    MOV DS, AX
    XOR BX, BX
    MOV AH, 9
    LEA DX, MSG1
    INT 21H
    MOV AH, 1
    
 N2:
    INT 21H
    CMP AL, CR
    JE N8
    AND AL, 0Fh ;Chuyen ky tu thanh so
    SHL BX, 1
    OR BL, AL
    JMP N2
 N8:
    MOV CX, 16
    MOV AH, 9
    LEA DX, MSG2
    INT 21H
    PRINTLOOP:
        ROL BX, 1
        JC PRINT1
        MOV DL, '0'
        MOV AH, 2
        INT 21H
        JMP EXIT1
    PRINT1:
        MOV DL, '1'
        MOV AH, 2
        INT 21H
    EXIT1:
        DEC CX
        CMP CX, 0
        JNE PRINTLOOP
    
    MOV AH, 4Ch
    INT 21H
    
END