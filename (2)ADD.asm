.MODEL SMALL
.STACK 100H
.DATA
      MSG1 DB 'Enter First Digit: $'
      MSG2 DB 'Enter Second Digit: $'
      MSG3 DB 'The Sum is = $'
      X DB 0
      Y DB 0     
.CODE
MAIN PROC 
    MOV AX,@DATA            ;INT DATA SEG
    MOV DS,AX
    
    LEA DX,MSG1             ;PRINT MSG1
    MOV AH,9
    INT 21H
                            
    MOV AH,1                ;TAKE FIRST INPUT
    INT 21H
    SUB AL,48
    MOV X,AL
    
    MOV AH,2                ;NEWLINE
    MOV DL,0DH
    INT 21H
                            
    MOV AH,2                ;CARRIAGE RETURN
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG2             ;PRINT MSG2
    MOV AH,9
    INT 21H
    
    MOV AH,1                ;TAKE SECOND INPUT
    INT 21H
    SUB AL,48
    MOV Y,AL
                            ;ADD TWO INPUTS
    ADD AL,X               
    MOV AH,0                ;AX --> AL,AH
    AAA                     ;Adjust After Addition
    
    ADD AH,48
    ADD AL,48
    
    MOV BX,AX 
    
    MOV AH,2                ;NEWLINE
    MOV DL,0DH
    INT 21H
    
    MOV AH,2                ;CRET
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG3             ;PRINT MSG3
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,BH               ;HIGH
    INT 21H
    
    MOV AH,2                ;LOW
    MOV DL,BL
    INT 21H
               
    MOV AH,4CH              ;RETURN CONTROL TO OS
    INT 21H
    MAIN ENDP
END MAIN