.MODEL SMALL
.STACK
.DATA  
    MSG1 DB 'NHAP SO NHI PHAN (TOI DA 16 BIT): $'
    MSG2 DB 13,10,'SO NHI PHAN DA NHAP: $'   
    KT DB ?
.CODE      
    MOV AX, @DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX, MSG1
    INT 21H
    
    MOV CX,16
    XOR BX,BX
NHAP:
    MOV AH,1
    INT 21H
    CMP AL,13
    JE XUAT
    
    AND AL,0FH
    SHL BX,1
    
    OR BL,AL
    LOOP NHAP
   
XUAT:
    MOV AH,9
    LEA DX, MSG2
    INT 21H 
    
    MOV CX,16
    MOV AH,2
LAP:
    SHL BX,1
    JC XUAT_RA

    MOV DL,'0'
    JMP XUATLAP

    XUAT_RA:
    MOV DL,'1'

XUATLAP:
    INT 21H
    LOOP LAP 
    
THOAT:
    MOV AH,4CH
    INT 21H
    
    
END