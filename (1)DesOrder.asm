.MODEL SMALL
.STACK 100H
.DATA
 m1 db 10,13," INPUT 1 : $" 
 m2 db 10,13," INPUT 2 : $"
 m3 db 10,13," INPUT 3 : $"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,M1
    MOV AH,9
    INT 21H
     
    MOV AH,1
    INT 21H
    MOV BL,AL 
    
    LEA DX,M2
    MOV AH,9
    INT 21H
     
    MOV AH,1
    INT 21H
    MOV BH,AL 
    
    LEA DX,M3
    MOV AH,9
    INT 21H
     
    MOV AH,1
    INT 21H
    MOV CH,AL
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
;----------CMP------------    
    CMP BL,BH
    JG CHK 
    JMP CHKK
     
    CHK:
    CMP BL,CH
    JG CHK2
    JMP PRINT2 
    
    CHK2:
    CMP CH,BH
    JG PRINT1
    JMP PRINT3
    
    PRINT1:
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H

    MOV AH,2
    MOV DL,CH
    INT 21H  
    
     MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H

    MOV AH,2
    MOV DL,BH
    INT 21H
    JMP EXITT 
    
    PRINT2:
    
     MOV AH,2
    MOV DL,CH
    INT 21H
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H

    MOV AH,2
    MOV DL,BL
    INT 21H  
    
     MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H

    MOV AH,2
    MOV DL,BH
    INT 21H
    JMP EXITT 
    
    PRINT3:
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H

    MOV AH,2
    MOV DL,BH
    INT 21H  
    
     MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H

    MOV AH,2
    MOV DL,CH
    INT 21H
    JMP EXITT 
    
    CHKK:
    CMP BH,CH
    JG CHKK1 
    JMP PRINTT6
    
    CHKK1:
    CMP CH,BL
    JG PRINTT4
    JMP PRINTT5
    
    PRINTT4:
     MOV AH,2
    MOV DL,BH
    INT 21H
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H

    MOV AH,2
    MOV DL,CH
    INT 21H  
    
     MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H

    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP EXITT 
    
    PRINTT5:
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H

    MOV AH,2
    MOV DL,BL
    INT 21H  
    
     MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H

    MOV AH,2
    MOV DL,CH
    INT 21H
    JMP EXITT
    
    PRINTT6:
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H

    MOV AH,2
    MOV DL,BH
    INT 21H  
    
     MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H

    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP EXITT

    
    EXITT:
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP 
    END MAIN
