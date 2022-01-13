.MODEL SMALL
.STACK 100H
.DATA 
      TB DB 13,10, "Nhap mot ky tu (hoac ESC): $"
      TBKhac DB 13,10,"Ky tu nhap khac chu/so$"
      TBChu DB 13,10, "Ky tu nhap la chu$"
      TBSo DB 13,10, "Ky tu nhap la so$" 
    
.CODE

    MOV AX, @DATA
    MOV DS, AX  
    
INPUT:  
    MOV AH, 9
    LEA DX, TB
    INT 21H
    
    ;Nhap mot ky tu
    MOV AH,1
    INT 21H
    
    CMP AL, 1Bh ;phim esc 1Bh
    JE KetThuc
    
    CMP AL, '0'
    JB Khac
    
    CMP AL, '9'
    JBE So 
    
    CMP AL, 'A'
    JB Khac
    
    CMP AL, 'Z'
    JBE Chu
    
    CMP AL, 'a'
    JB Khac
    
    CMP AL, 'z'
    JBE Chu

Khac:
    MOV AH, 9
    LEA DX, TBKhac
    INT 21H
    JMP INPUT         
So: 
    MOV AH, 9
    LEA DX, TBSo 
    INT 21H
    JMP INPUT
Chu:
    MOV AH, 9
    LEA DX, TBChu
    INT 21H
    JMP INPUT    
KetThuc:
    MOV AH, 4CH
    INT 21H   
END