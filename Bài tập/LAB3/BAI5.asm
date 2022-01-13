.MODEL SMALL
.STACK 100H
.DATA 
    TB DB 13,10,"NHAP MOT KY TU: $" 
    TB2 DB 13,10,"NAM KY TU TIEP LA: $"
    BIEN DB ?
    
.CODE
   MOV AX, @DATA
   MOV DS, AX
   
INPUT:
   MOV AH, 9
   LEA DX, TB
   INT 21H
   
   MOV AH, 1
   INT 21H   ;AL = INPUT

   SUB AL, 6
   MOV BIEN, AL

   MOV AH, 9
   LEA DX, TB2
   INT 21H
   
   MOV CX, 5      ; so luong ky tu   
   
TANG: 
   
   MOV AH, 2
   INC BIEN ;cong them 1 de bat dau tang   
   MOV DL, BIEN    
   INT 21H
   DEC CX
   
   MOV AH, 2
   MOV DL, 0Ah
   INT 21H
   
   JNZ TANG
    
   MOV AH, 4CH
   INT 21H 
END    