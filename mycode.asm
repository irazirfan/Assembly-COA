org 100h
.model small
.stack 100h
.data
     x db 0
     ;m db "hello $"
.code
     mov ah,1  ;input
     int 21h
     mov x,al
     
     mov ah,2
     mov dl,0dh ;carriage return
     int 21h
     mov dl,0ah ;line feed
     int 21h
     
     mov ah,2 ;output
     mov dl,x
     int 21h 
     
     ;mov ah,9  ;string output
     ;lea dx,m
     ;int 21h