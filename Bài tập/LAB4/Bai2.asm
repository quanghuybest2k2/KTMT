.MODEL SMALL
.STACK 100h
.DATA
    TB DB 13,10,"NHAP MOT KY TU (HOAC ESC): $"
    TB2 DB 13,10,"CHU HOA TUONG UNG LA: $"
    TB_CHU DB 13,10,"KY TU NHAP LA CHU!!!$"
    TB_SO DB 13,10,"KY TU NHAP LA SO!!!$"
    TB_KHAC DB 13,10,"KY TU NHAP KHAC CHU/SO!!!$"
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
   
   CMP AL, 1Bh
   JE THOAT
   
   CALL THU_TUC
   
   THOAT:
   MOV AH, 4Ch
   INT 21h
   
THU_TUC PROC    
   CMP AL, '0'
   JB KHAC
   
   CMP AL, '9'
   JBE SO 
    
   CMP AL, 'A'
   JB  KHAC
   
   CMP AL, 'Z'
   JBE CHU
   
   CMP AL, 'a'
   JB KHAC
   CMP AL, 'z'
   JBE CHU
    
   
CHU:
   MOV AH, 9
   LEA DX, TB_CHU
   INT 21h
   JMP INPUT
SO:
   MOV AH, 9
   LEA DX, TB_SO
   INT 21h
   JMP INPUT
KHAC:
   MOV AH, 9
   LEA DX, TB_KHAC
   INT 21h
   JMP INPUT
   
RET

THU_TUC ENDP

END