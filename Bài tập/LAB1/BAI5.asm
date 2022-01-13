.model small
.stack 100h
.data 
    tb  db "=============== Cong hai so xuat ra ky tu hexa ===============$"
    tb1 db 13,10,"Nhap ky tu thu nhat: $"
    tb2 db 13,10,"Nhap ky tu thu hai: $"
    tb3 db 13,10,"Ky tu tong: $"
    kyTu1 db ?
    kyTu2 db ?
    kyTuTong db ?
.code
        mov ax, @data
        mov ds, ax
        
        ;xuat thong bao chuong trinh
        mov ah, 9
        lea dx, tb
        int 21h
          
  input1:  
        ;xuat cau thong bao 1 
        mov ah, 9
        lea dx, tb1            
        int 21h
        ;nhap vao ky tu thu nhat
        mov ah, 1 
        int 21h
        
        ;so sanh input voi ky tu '0'
        cmp al, 30h
        jb input1   ;lenh jb chi nhay khi dich < nguon
        ;so sanh input voi ky tu '9'
        cmp al, 39h
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
        cmp al, 30h
        jb input2
        
        cmp al, 39h
        ja input2
          
        mov kyTu2, al      ;chuyen al vao kyTu2 luu tru
         
        ;================ CACH 1==============================            
        ;mov al,kyTu1 ;chuyen kyTu1 vao al
        ;mov bl,kyTu2 ;chuyen kyTu2 vao bl       
        ;add al, bl ;cong hai so lai             ;dung cach nay thi may thuc thi cham hon, vi tai nhieu dia chi
        ;mov kyTuTong, al
        ;=====================================================
        
        ;=============== CACH 2 ==============================
        mov al,kyTu1 ;chuyen kyTu1 vao al
        add al, kyTu2 ;cong hai so lai             ;dung cach nay thi may thuc thi nhanh hon, vi tai it dia chi
        mov kyTuTong, al  
        ;=====================================================   
                  
        ;xuat cau thong bao 3 
        mov ah, 9
        lea dx, tb3            
        int 21h 
        
        
        mov ah,2
        mov dl,kyTuTong
        int 21h 
        
                         

        mov ah, 4ch   ;thoat chuong trinh
        int 21h
end 