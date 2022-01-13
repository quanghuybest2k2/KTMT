
.MODEL SMALL
.STACK 100h
.DATA

    MSG1 DB 10,13, 'NHAP VAO THAP LUC PHAN (HEX): $'
    MSG2 DB 10,13, 'SO THAP LUC PHAN (HEX) VUA NHAP LA: $'
    ERR1 DB 10,13, 'NHAP SAI! VUI LONG THU LAI!!!'
    ERR2 DB 10,13, 'NHAP QUA ROI!$'
    END1 DB 10,13, 'Nhan phim bat ky de thoat. . .$'

.CODE
    ; LAY DU LIEU TU DATA VAO DS
    MOV AX, @DATA
    MOV DS, AX    
    ; =========================================
    
    RESET:         
        ; Hien thi thong bao nhap chuoi hexa
        MOV AH, 9
        LEA DX, MSG1
        INT 21h
        
        XOR BX, BX
        XOR CX, CX
    
    INPUT:
        MOV AH, 1
        INT 21h
        

        CMP AL, 0Dh
        JE BREAK
        
        CMP AL, '0'
        JB XULY_LOI
        CMP AL, '9'
        JBE XULY_SO
        CMP AL, 'A'
        JB XULY_LOI
        CMP AL, 'F'
        JBE XULY_CHU
        
        XULY_LOI:
            MOV AH, 9
            LEA DX, ERR1
            INT 21h
            JMP RESET
            
        XULY_SO:    
            AND AL, 0Fh
            JMP LUU
        
        XULY_CHU:
            SUB AL, 37h
            
        LUU:
            SHL BX, 4
            OR BL, AL
            
            INC CX
            

        CMP CX, 4
        JB INPUT
        
        

        MOV AH, 9
        LEA DX, ERR2
        INT 21h
    
    BREAK:
 
        MOV AH, 9
        LEA DX, MSG2
        INT 21h
        
        MOV CX, 4
        
        PRINT:
            MOV DL, BH
            SHR DL, 4
            
            CMP DL, 9
            JBE XUAT_SO
            JA XUAT_CHU
            
            XUAT_SO:
                MOV AH, 2 
                OR DL, 30h
                INT 21h
                JMP CONTINUE
                
            XUAT_CHU:
                MOV AH, 2
                ADD DL, 37h
                INT 21h
            
            CONTINUE:
                ROL BX, 4
                LOOP PRINT
    MOV AH, 9
    LEA DX, END1
    INT 21h
    
    MOV AH, 7
    INT 21h
    
    MOV AH, 4Ch
    INT 21h
    
END