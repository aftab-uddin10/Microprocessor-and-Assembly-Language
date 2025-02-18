; Md Aftab Uddin Bhuiyan 
; aftabu363@gmail.com

org 100h

.model small  
.stack 100h  

lf equ 0ah   ; Define line feed (LF) for new line
cr equ 0dh   ; Define carriage return (CR) for new line

.data  
a db 'Enter input a: $'    
b db 'Enter input b: $'    
c db 'The result is: $'   
d db 'Subtraction',0ah,0dh,'$'  ; "Subtraction" label followed by new line
e db 'Addition',0ah,0dh,'$'     ; "Addition" label followed by new line

.code  

main proc  
    
  
    mov ax, @data  
    mov ds, ax    

    mov ah,9        
    lea dx,e        
    int 21h         ; Print "Addition"  
  
    mov ah,9        
    lea dx,a        
    int 21h         

    mov ah,1          
    int 21h           
    mov bl,al        

     
    mov ah,2        
    mov dl,cr       ; Carriage return  
    int 21h         
    mov dl,lf       ; Line feed  
    int 21h         

     
    mov ah,9        
    lea dx,b        
    int 21h        

    mov ah,1          
    int 21h          
    mov bh,al         

     
    mov ah,2        
    mov dl,cr       
    int 21h         
    mov dl,lf       
    int 21h         
 
    mov ah,9        
    lea dx,c       
    int 21h        
  
    add bl, bh      
    sub bl, 48      
   
    mov ah,2        
    mov dl,bl       
    int 21h         

  
    mov ah,2        
    mov dl,cr       
    int 21h         
    mov dl,lf       
    int 21h         

    mov ah,9        
    lea dx,d         
    int 21h        

    mov ah,9        
    lea dx,a          
    int 21h        

    mov ah,1        
    int 21h        
    mov bl,al         
  
    mov ah,2        
    mov dl,cr       
    int 21h         
    mov dl,lf       
    int 21h         

    
    mov ah,9        
    lea dx,b        
    int 21h        

    mov ah,1        
    int 21h        
    mov bh,al       

    
    mov ah,2        
    mov dl,cr       
    int 21h         
    mov dl,lf       
    int 21h         

    
    mov ah,9        
    lea dx,c       
    int 21h        

   
    sub bl, bh      
    add bl, 48      
    
    mov ah,2
    mov dl,bl                            
    int 21h        

    mov ah,4ch      
    int 21h         

main endp  
end main  


ret
