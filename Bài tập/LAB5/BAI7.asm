.MODEL SMALL
.STACK
.DATA
.CODE
    DAY:
        MOV AH,2AH
        INT 21H
        MOV AL,DL 
        AAM
        MOV BX,AX
        CALL DISP
        
        MOV DL,'/'
        MOV AH,02H
        INT 21H
    
    MONTH:
        MOV AH,2AH 
        INT 21H
        MOV AL,DH  
        AAM
        MOV BX,AX
        CALL DISP
        
        MOV DL,'/' 
        MOV AH,02H
        INT 21H
    
    YEAR:
        MOV AH,2AH  
        INT 21H
        ADD CX,0F830H
        MOV AX,CX    
        AAM
        MOV BX,AX
        CALL DISP
        
    MOV AH,4CH
    INT 21H
    
    DISP PROC
        MOV DL,BH
        ADD DL,30H
        MOV AH,02H
        INT 21H
        MOV DL,BL 
        ADD DL,30H
        MOV AH,02H
        INT 21H
        RET
    DISP ENDP

END
