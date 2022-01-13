
;cau a)
MOV AX, 2143h
MOV BX, 1986h
SUB AX, BX 
;OF=0
;ket qua lenh ADD AX, BX la: 07BD

;cau b)
MOV AX, 81FEh
MOV BX, 1986h
SUB AX, BX
;OF=1 
;ket qua lenh ADD AX, BX la: 6878

;cau c)
MOV AX, 19BCh
MOV BX, 81FEh
SUB AX, BX
;OF=1
;ket qua lenh ADD AX, BX la: 97BE 

;cau d)
MOV AX, 0002h
MOV BX, 0FE0Fh
SUB AX, BX
;OF=0
;ket qua lenh ADD AX, BX la: 01F3 

;cau e)
MOV AX, 8BCDh
MOV BX, 71ABh
SUB AX, BX
;OF=1
;ket qua lenh ADD AX, BX la: 1A22