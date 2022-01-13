.model small
.stack 100h
.data 
    tb db 13,10,"Bay gio la (S)ang, (C)hieu hay (T)oi?$"
    sang db 13,10,"Chao buoi sang.$"
    chieu db 13,10,"Chao buoi chieu.$"
    toi db 13,10,"Chao buoi toi.$"
    
.code
        mov ax, @data
        mov ds, ax
          
  input:  
        ;xuat thong bao chuong trinh
        mov ah, 9
        lea dx, tb
        int 21h
        ;nhap vao mot ky tu S,s,C,c,T hay t
        mov ah, 1 
        int 21h
        
        ;so sanh input voi ky tu 'S'
        cmp al, 'S'
        je IsMorning   ;lenh JE chi nhay khi dich = nguon
        ;so sanh input voi ky tu 's'
        cmp al, 's'
        je IsMorning
   
        cmp al, 'C'
        je IsAfternoon
        
        cmp al, 'c'
        je IsAfternoon
        
        cmp al, 'T'
        je IsEvening
        
        cmp al, 't'
        je IsEvening
        
        jmp input     ;nhay ve input neu nhap sai ky tu
      
  IsMorning: 
        ;xuat cau thong bao 'chao buoi sang'
        lea dx, sang
        jmp Greeting
  IsAfternoon:
        ;xuat cau thong bao 'chao buoi chieu'
        lea dx, chieu
        jmp Greeting
  IsEvening:
        ;xuat cau thong bao 'chao buoi toi'
        lea dx, toi
        jmp Greeting
  Greeting:
        mov ah, 9
        int 21h             

        mov ah, 4ch   ;thoat chuong trinh
        int 21h
end 