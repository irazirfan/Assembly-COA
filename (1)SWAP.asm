.MODEL SMALL
.STACK 100H
.DATA
      MSG1 DB "Enter First Digit  X: "
      MSG2 DB "Enter Second Digit Y: "
.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV CL,BL 
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN


