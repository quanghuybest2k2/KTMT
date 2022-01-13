;viet chuong trinh hien thi 3 cau chao
;Hello, world !
;Hello, solar system !
;Hello, universe !
.model small
.stack 100h
.data
     tb1 db "Hello, world !$"
     tb2 db 13,10,"Hello, solar system !$"
     tb3 db 13,10,"Hello, universe !$"
.code
    mov ax, @data
    mov ds, ax
    
    ;cau thong bao 1
    mov ah,09h
    mov dx, offset tb1 
    int 21h
    
    ;========== Cach 1 ============                              
    ;cau thong bao 2
    mov ah,09h
    mov dx, offset tb2 
    int 21h
    ;==============================
     
    ;========== Cach 2 ============                              
    ;cau thong bao 2
    ;mov ah,09h
    ;lea dx, tb2
    ;int 21h
    ;============================== 
    
    ;cau thong bao 3
    mov ah,09h
    mov dx, offset tb3 
    int 21h
                                   
    mov ah, 4ch ; thoat chuong trinh
    int 21h

end