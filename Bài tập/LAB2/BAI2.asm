;cau a)
MOV AX, 512Ch
MOV BX, 4185h
ADD AX, BX  
;OF=1
;ket qua lenh ADD AX, BX la: 92B1

;cau b)
MOV AX, 0FE12h
MOV BX, 01ACBh
ADD AX, BX
;OF=0 
;ket qua lenh ADD AX, BX la: 18DD

;cau c)
MOV AX, 0E1E4h
MOV BX, 0DAB3h
ADD AX, BX
;OF=0
;ket qua lenh ADD AX, BX la: BC97 

;cau d)
MOV AX, 7132h
MOV BX, 7000h
ADD AX, BX
;OF=1
;ket qua lenh ADD AX, BX la: E132 

;cau e)
MOV AX, 6389h
MOV BX, 1176h
ADD AX, BX
;OF=0
;ket qua lenh ADD AX, BX la: 74FF