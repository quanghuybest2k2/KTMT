.MODEL SMALL
.STACK 100h
.DATA
    TB DB 13,10,"Hay nhap mot chu thuong ( a - z ): $" 
    TB2 DB 13,10,"Chu hoa tuong ung la: $"
    BIEN DB ?
.CODE
   MOV AX, @DATA
   MOV DS, AX    
        
  
INPUT: 
   MOV AH, 9
   LEA DX, TB
   INT 21h
   
   MOV AH, 1
   INT 21h    
   
   CALL THU_TUC
   
   MOV AH, 4Ch
   INT 21h
THU_TUC PROC 
   
   CMP AL, 'a'
   JB INPUT
   
   CMP AL, 'z'
   JA INPUT
   
   MOV BIEN, AL 
   
   SUB BIEN, 20h 
   
   MOV AH, 9
   LEA DX, TB2
   INT 21h
   
   MOV AH, 2
   MOV DL, BIEN
   INT 21h
   
   RET      
   
THU_TUC ENDP 

END