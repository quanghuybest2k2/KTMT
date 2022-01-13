.model small
.stack 100h
.data 
   tb1 db 13,10,"Hay nhap mot ky tu thuong (a-z) $"
   tb2 db 13,10,"Chu hoa tuong ung la: $"
   bien db ? 
.code
        mov ax, @data
        mov ds, ax
          
  input:  
        ;xuat thong bao chuong trinh
        mov ah, 9
        lea dx, tb1
        int 21h
        ;nhap vao mot ky tu
        mov ah, 8   ; giong ham 1 nhung khong hien ket qua chon
        int 21h 
        
        mov bien, al  ;input = bien
        
        cmp bien, 'a'
        jb input
        
        cmp bien, 'z'
        ja input
        
        sub bien, 20h ; tru 20h de lay chu hoa
           
        lea dx, tb2
        mov ah, 9
        int 21h
        
        ;xuat ky tu hoa ra man hinh
        mov ah, 2
        mov dl, bien
        int 21h   

        mov ah, 4ch   ;thoat chuong trinh
        int 21h
end 