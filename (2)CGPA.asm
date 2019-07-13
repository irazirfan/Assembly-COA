 .MODEL SMALL
.STACK 100H
.DATA
 SUM DB 0 
 COUNT DB 0

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    MOV CX,4 
INPUT:
  MOV AH,1
  INT 21H  
  MOV BL,AL
  ;-----CMP------- 
  
  CMP BL,'A'
  JE ADD4
  CMP BL,'B'
  JE ADD3 
  CMP BL,'C'
  JE ADD2
  CMP BL,'D'
  JE ADD1
  
ADD4:
    ADD SUM,4
    JMP LOOPAGAIN 
 
ADD3:
    ADD SUM,3
    JMP LOOPAGAIN
 
ADD2:
    ADD SUM,2
    JMP LOOPAGAIN
 
ADD1:
   ADD SUM,1
   JMP LOOPAGAIN  
 
LOOPAGAIN:
   LOOP INPUT  

CALC:
    
     SUB SUM,4
     CMP SUM,0
     JL PRINTCGPA
     INC COUNT
     JMP CALC
     
PRINTCGPA:
    ADD COUNT,48
    MOV AH,2
    MOV DL,COUNT
    INT 21H
 
 EXITT:
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP 
    END MAIN