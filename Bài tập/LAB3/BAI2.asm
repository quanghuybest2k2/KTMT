.MODEL SMALL
.STACK 100H
.DATA 
      TB    DB 13,10, "Nhap vao mot ky tu: $"
      TBKhac DB 13,10,"Ky tu nhap khac chu/so$"
      TBChu DB 13,10, "Ky tu nhap la chu$"
      TBSo DB 13,10, "Ky tu nhap la so$" 
    
.CODE

    MOV AX, @DATA
    MOV DS, AX 
    
    MOV AH, 9
    LEA DX, TB
    INT 21H
    
    ;Nhap mot ky tu
    MOV AH,1
    INT 21H
    
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
    LEA DX, TBKhac
    JMP KetThuc         
So:
    LEA DX, TBSo
    JMP KetThuc
Chu:
    LEA DX, TBChu
    JMP KetThuc    
KetThuc:
    MOV AH, 9
    INT 21H 
    
    MOV AH, 4CH
    INT 21H   
END