.MODEL SMALL
.STACK 100H
.DATA 
    TB DB 13,10,"HAY NHAP CHUOI KY TU (KET THUC BANG ENTER): $"
    TB2 DB 13,10,"CHUOI NGUOC: $"
    BIEN DB ?
    
.CODE
   MOV AX, @DATA
   MOV DS, AX
   
   MOV CX, 0
   
    MOV AH, 9
    LEA DX, TB
    INT 21h
    
    MOV AH, 1
    CALL INPUT
    
 INPUT PROC 
    POP BX
    INT 21h
    
    CMP AL, 13
    JE KETQUA
    
    MOV BL, AL
   
    PUSH BX 
    CALL INPUT
    RET
 INPUT ENDP
    
 KETQUA:
    MOV AH, 9
    LEA DX, TB2
    INT 21h
    JMP XUAT 
     
 XUAT:
     POP BX
     CMP SP, 100h
     JG THOAT
     MOV AH, 2
     MOV DX, BX
     INT 21h
     LOOP XUAT
   
 THOAT: 
   MOV AH, 4CH
   INT 21H 
END    