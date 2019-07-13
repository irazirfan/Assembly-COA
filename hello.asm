.model small
.stack 100h
.Data
    
 input db "? $"
 output  db "The output is: $"    
     
.code
MAIN PROC
    mov AX,@DATA
    mov DS,AX
    
    LEA dx,input
    mov ah,9
    int 21h
    
    ;input from user
        
    mov AH,1
    int 21h
    mov bl,al
    
    add bl,2
   
    ;new line    
    
    mov ah,2
    mov dl,0dh
    int 21h
    
    mov ah,2
    mov dl,0ah
    int 21h
    
    ;output
    
    LEA dx,output
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov AH,4CH
    int 21h
    
    MAIN ENDP
END MAIN