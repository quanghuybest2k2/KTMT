.MODEL SMALL
.STACK 100H
.DATA 
    TB DB 13,10,"NHAP MOT KY TU: $" 
    TB2 DB 13,10,"NAM KY TU DUNG TRUOC: $" 
    TB3 DB 13,10,"NAM KY TU DUNG SAU: $"
    BIEN1 DB ?
    BIEN2 DB ?  
    endLine DB 10,"$"
    
.CODE
   MOV AX, @DATA
   MOV DS, AX
   
INPUT:
   MOV AH, 9
   LEA DX, TB
   INT 21H
   
   MOV AH, 1
   INT 21H   ;AL = INPUT
   
   MOV BIEN1, AL
   MOV BIEN2, AL
   
   MOV AL,BIEN1
   SUB AL,6
   MOV BIEN1,AL  
    
   MOV AH, 9
   LEA DX, TB2
   INT 21H
   
   MOV CX, 5      ; so luong ky tu   
   
GIAM: 
   
   MOV AH, 2
   INC BIEN1 ;cong them 1 de bat dau tang   
   MOV DL, BIEN1    
   INT 21H
   DEC CX 
   
   JNZ GIAM 
   
   MOV AH, 9
   LEA DX, TB3
   INT 21H
   
   MOV CX, 5
TANG:
   MOV AH, 2
   
   INC BIEN2 ;cong them 1 de bat dau tang   
   MOV DL, BIEN2
   INT 21H    
   
   
   LOOP TANG 
       
   MOV AH, 4CH
   INT 21H 
END    