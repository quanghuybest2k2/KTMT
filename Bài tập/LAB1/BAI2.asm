;Hay nhap mot ky tu: A
;Ky tu da nhap: A
.model small
.stack 100h
.data
     tb1 db "Hay nhap mot ky tu: $"
     tb2 db 13,10,"Ky tu da nhap: $"
     kyTu db ?
.code         
    mov ax, @data
    mov ds, ax
    
    ;Xuat cau thong bao 1
    mov ah, 9
    lea dx, tb1
    int 21h
    
    ;nhap vao mot ky tu
    mov ah, 1       ;luu trong al
    int 21h
    
    ;chuyen ky tu vua nhap vao trong kyTu de luu tru
    mov kyTu, al
    
    ;xuat cau thong bao 2
    mov ah, 9
    lea dx, tb2
    int 21h
    
    ;xuat ky tu vua nhap ra man hinh
    mov ah, 2
    mov dl, kyTu
    int 21h
   
    mov ah, 4ch
    int 21h 
end