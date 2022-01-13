.MODEL SMALL
.STACK 100H
.DATA 
    TB DB 13,10,"NHAP MOT KY TU: $" 
    TB2 DB 13,10,"NAM KY TU TIEP LA: $"
    BIEN DB ?  
    ;endLine DB 10,"$"
    
.CODE
   MOV AX, @DATA
   MOV DS, AX
   
INPUT:
   MOV AH, 9
   LEA DX, TB
   INT 21H
   
   MOV AH, 1
   INT 21H   ;AL = INPUT
   
   MOV BIEN, AL
   
   
   MOV AH, 9
   LEA DX, TB2
   INT 21H
   
   MOV CX, 5      ; so luong ky tu   
   
TANG: 
   
   MOV AH, 2
   ADD BIEN, 1h ;cong them 1 de bat dau tang   
   MOV DL, BIEN    
   INT 21H
   
   ;MOV AH, 9
   ;LEA DX, endLine
   ;INT 21H
   
   MOV AH, 2
   MOV DL, 0Ah
   INT 21H
   
   LOOP TANG
    
   MOV AH, 4CH
   INT 21H 
END    