;Chu y: Chay cau nao thi comment nhung cau con lai de tranh loi

;cau a)
MOV AX, 7FFFh  ;AX = 7FFFh
MOV BX, 1     ;BX = 1
ADD AX, BX     ;AX = 8000 

;AH=80, AL=00 =>  AX = 8000
;CF: 0, SF: 1, ZF: 0, PF: 1, OF: 1   

;cau b) 
;AL = 1, BL= FFh
MOV AL, 1
MOV BL, 0FFh
SUB AL, BL  ;AL=02         

;TOAN HANG DICH=> AL=02
;CF: 1, SF: 0, ZF: 0, PF: 0, OF: 0  

;cau c)
MOV AL, 0
DEC AL   ;GIAM XUONG 1

;TOAN HANG DICH=> AL=FF
;CF: 0, SF: 1, ZF: 0, PF: 1, OF: 0  

;cau d)

MOV AL, 7Fh
NEG AL ;BU 2 cua 7Fh

;TOAN HANG DICH=> AL=81
;CF: 1, SF: 1, ZF: 0, PF: 1, OF: 0 

;cau e) 

MOV AX, 1ABCh
MOV BX, 712Ah
XCHG AX, BX

;AH=71, AL=2A =>  AX = 712A
;CF: 0, SF: 0, ZF: 0, PF: 0, OF: 0 

;cau f)
          
MOV AL, 80h
MOV BL, 0FFh          
ADD AL, BL

;TOAN HANG DICH=> AL=7F
;CF: 1, SF: 0, ZF: 0, PF: 0, OF: 1

;cau g)

MOV AX, 0
MOV BX, 8000h
SUB AX, BX 

;AH=80, AL=00 =>  AX = 8000
;CF: 1, SF: 1, ZF: 0, PF: 1, OF: 1

;cau h)

MOV AX, 1
NEG AX
 
;AH=FF, AL=FF => AX = FFFF 
;CF: 1,SF: 1,ZF: 0,PF: 1, OF: 0 