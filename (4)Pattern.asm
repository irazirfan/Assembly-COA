.MODEL SMALL
.STACK 100H

.DATA
   A DB " 00000    9999999$"
   
   B DB "0     0   9     9$" 
   
   C DB  "0     0   9999999$"

   E DB  "0     0         9$"  


.CODE
    MAIN PROC
        
   MOV AX,@DATA
   MOV DS,AX
   
   
   
   MOV AH,9
   LEA DX,A
   INT 21H 
   
   
   
   
   MOV AH,2
   MOV DL,10
   INT 21H
   
   MOV AH,2
   MOV DL,13
   INT 21H
   
   MOV AH,9
   LEA DX,B
   INT 21H 
   
     MOV AH,2
   MOV DL,10
   INT 21H
   
   MOV AH,2
   MOV DL,13
   INT 21H
   
   MOV AH,9
   LEA DX,C
   INT 21H 
   
    MOV AH,2
   MOV DL,10
   INT 21H
   
   MOV AH,2
   MOV DL,13
   INT 21H
   
   MOV AH,9
   LEA DX,E
   INT 21H 
   
 
   
    MOV AH,2
   MOV DL,10
   INT 21H
   
   MOV AH,2
   MOV DL,13
   INT 21H
   
   MOV AH,9
   LEA DX,A
   INT 21H 
   
   
 
        
        MOV AH,4CH
        INT 21H
        
        
        MAIN ENDP
    END MAIN