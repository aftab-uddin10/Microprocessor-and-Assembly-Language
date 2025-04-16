
; aftabu363@gmail.com


org 100h

.model small
.stack 100h

.data
msg db 'Welcome $'
msg1 db 'Enter a lowerCharacter: $'
msg2 db 'Enter a upperCharacter: $' 
a db ?
b db ?

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov dl,0dh
    mov ah,2
    int 21h 
    mov dl,0ah
    mov ah,2
    int 21h   
    
     mov ah,9
    lea dx,msg1
    int 21h 
    
    mov ah,1
    int 21h
    
    sub al,32
    mov a,al
    
    mov dl,0dh
    mov ah,2
    int 21h 
    mov dl,0ah
    mov ah,2
    int 21h
    
    mov ah,2
    mov dl,a
    int 21h
    
     mov dl,0dh
    mov ah,2
    int 21h 
    mov dl,0ah
    mov ah,2
    int 21h
    
       mov ah,9
    lea dx,msg2
    int 21h 
    
    mov ah,1
    int 21h
    
    add al,32
    mov b,al
    
      mov dl,0dh
    mov ah,2
    int 21h 
    mov dl,0ah
    mov ah,2
    int 21h
    
    mov ah,2
    mov dl,b
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main
    
    

ret




