.model small
.stack 100h
.data

msg1 db 'The Sum of '
a db ?
m2 db ' and '
b db ?
m3 db ' is '
v1 db ?  
m8 db '. However, if we multiply '
e db ?
m9 db ' and '
f db ?
m10 db ' the product will be '
v3 db ?
m4 db '. On the other hand if we subtract '
c db ?
m5 db ' and '
d db ?
m6 db ' ,the result will be '
v2 db ?
m7 db '$'

.code

main proc
    
    
    mov ax,@data        
    mov ds,ax
    
    mov ah,1             ;first input
    int 21h
    mov a,al
    
    int 21h              ;2nd input
    mov b,al
    
    int 21h              ;3rd input
    mov e,al
    
    int 21h              ;4th input
    mov f,al
    
    int 21h              ;5th input
    mov c,al 
    
    int 21h              ;6th input
    mov d,al
    
    mov ah,2             ;newline
    mov dl,0dh
    int 21h
    
    mov ah,2             ;cret
    mov dl,0ah
    int 21h
    
    mov bl,a             ;add
    add bl,b
    sub bl,48
    mov v1,bl  
    
    mov al,e             ;multiply
    sub al,48
    mov bh,f
    sub bh,48
    mul bh
    mov dl,al
    add dl,48
    mov v3,dl
        
    mov cl,c             ;subtract
    sub cl,d
    add cl,48
    mov v2,cl
    
    lea dx,msg1
    mov ah,9
    int 21h 
    
    mov ah,4ch           ;return control to os
    int 21h
    main endp
end main