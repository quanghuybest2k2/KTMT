.model small
.stack 100h
.data 
    
    tb1 db 13,10,"Hay nhap mot chu hoa thu 1(A-Z): $"
    tb2 db 13,10,"Hay nhap mot chu hoa thu 2(A-Z): $"
    tb3 db 13,10,"Ket qua: $"
    kyTu1 db ?
    kyTu2 db ?
.code
        mov ax, @data
        mov ds, ax

          
  input1:  
        ;xuat cau thong bao 1 
        mov ah, 9
        lea dx, tb1            
        int 21h
        ;nhap vao ky tu thu nhat
        mov ah, 1 
        int 21h
        
        ;so sanh input voi ky tu '0'
        cmp al, 'A'
        jb input1   ;lenh jb chi nhay khi dich < nguon
        ;so sanh input voi ky tu '9'
        cmp al, 'Z'
        ja input1   ;lenh ja chi nhay khi dich > nguon
   
        mov kyTu1, al    ;chuyen al vao kyTu1 luu tru
        
        
        
  input2: 
        ;xuat cau thong bao 2
        mov ah, 9
        lea dx, tb2            
        int 21h     
        ;nhap vao ky tu thu hai       
        mov ah, 1
        int 21h
        
        ;kiem tra ky tu 1
        cmp al, 'A'
        jb input2
        
        cmp al, 'Z'
        ja input2
          
        mov kyTu2, al      ;chuyen al vao kyTu2 luu tru
         

        mov ah, 9
        lea dx, tb3            
        int 21h 
        
        
        mov ah,2
        mov dl, kyTu1
        int 21h 
        mov ah,2
        mov dl, kyTu2
        int 21h
        
                         

        mov ah, 4ch   ;thoat chuong trinh
        int 21h
end 