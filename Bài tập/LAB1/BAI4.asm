.model small
.stack 100h
.data
    tb1 db 13,10,"Hay nhap  mot ky tu: $"  
    tb2 db 13,10,"dung truoc: $"  
    tb4 db 13,10,"da nhap: $"
    tb3 DB 13,10,"dung sau: $"
    kyTu db ?
.code
        mov ax, @data
        mov ds, ax
         
        ;xuat cau thong bao 1 
        mov ah, 9
        lea dx, tb1            
        int 21h

        mov ah, 1        
        int 21h
        
        ;chuyen ky tu vua nhap vao kyTu de luu tru
        mov kyTu, al
        
        ;xuat cau thong bao 2
        mov ah, 9
        lea dx, tb2            
        int 21h
        
        ;xuat ky tu truoc
        mov ah, 2       
        mov dl, kyTu        ;dua kyTu vao dl de xuat ra
        dec dl   ;dung lenh dec de giam no xuong => lay ky tu dung truoc. (Tra ky tu do trong ma ascii)
        int 21h  
        
        ;xuat cau thong bao 4
        mov ah, 9
        lea dx, tb4            
        int 21h 
         
        ;xuat ky tu da nhap
        mov ah,2 
        mov dl, al         ;boi vi ky tu vua nhap van con trong al nen chi can dua al vao trong dl.
        mov dl, kyTu  ;chuyen  kyTu vao dl de xuat ra nhe!
        int 21h

        ;xuat cau thong bao 3 
        mov ah, 9
        lea dx, tb3            
        int 21h
        
        ;xuat ky tu sau
        mov ah, 2        
        mov dl, kyTu
        inc dl         ;dung lenh inc de tang no len => lay ky tu dung sau
        int 21h

        mov ah, 4ch  ;thoat chuong trinh
        int 21h
end