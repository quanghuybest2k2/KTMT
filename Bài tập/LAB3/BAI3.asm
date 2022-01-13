.model small
.stack 100h
.data
    tb db "Hien thi cac chu hoa trong bo ma ASCII$" 
.code
    mov ax, @data
    mov ds, ax
    
    mov ah, 2
    mov cx, 26 ; do dai ky tu can hien thi
    mov dl, 41h ; bat dau tu 'A'
PrintLoop:    
    int 21h
    inc dl   
    loop PrintLoop
                                   
    mov ah, 4ch ; thoat chuong trinh
    int 21h

end