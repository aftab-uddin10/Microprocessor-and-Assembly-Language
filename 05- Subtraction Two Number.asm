; Md Aftab Uddin Bhuiyan 
; aftabu363@gmail.com

org 100h

.model small  
.stack 100h  

.data  
a db 'Enter input a: $'   
b db 'Enter input b: $'   
c db 'The result is: $'     

.code  

main proc  
    
    mov ax, @data       
    mov ds, ax        

  
    mov ah, 9           
    lea dx, a           
    int 21h           

    mov ah, 1         
    int 21h             
    mov bl, al       

    
    mov ah, 2  
    mov dl, 0dh        
    int 21h  
    mov dl, 0ah        
    int 21h  

   
    mov ah, 9  
    lea dx, b         
    int 21h          

    mov ah, 1         
    int 21h             
    mov bh, al       

 
    mov ah, 2  
    mov dl, 0dh  
    int 21h  
    mov dl, 0ah  
    int 21h  

   
    mov ah, 9  
    lea dx, c        
    int 21h         

    sub bl, bh         
    add bl, 48          

    mov ah, 2  
    mov dl, bl           
    int 21h            

    
    mov ah, 4ch      
    int 21h            

main endp  
end main  

ret
