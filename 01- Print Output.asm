; Md Aftab Uddin Bhuiyan 
; aftabu363@gmail.com

org 100h

.model small    ; Define the memory model as 'small' (suitable for small programs)
.stack 100H     ; Allocate stack space (256 bytes)
.data           ; Data segment (empty in this case)

.code           ; Code segment starts

main proc       ; Define the main procedure

    ; Display "DHAKA" 
    
    MOV dl, 'D'  ; Load 'D' into DL register
    mov ah, 2    ; DOS interrupt function to display a character
    int 21H      ; Call DOS interrupt 21H to print the character

    mov dl, 'H'  
    mov ah, 2
    int 21H

    mov dl, 'A' 
    mov ah, 2
    int 21H

    mov dl, 'K'  
    mov ah, 2
    int 21H

    mov dl, 'A'  
    mov ah, 2
    int 21H

    mov dl, ' '  ; Print a space
    mov ah, 2
    int 21H

    ; Display "INTERNATIONAL"   
    
    
    mov dl, 'I'
    mov ah, 2
    int 21H

    mov dl, 'N'
    mov ah, 2
    int 21H

    mov dl, 'T'
    mov ah, 2
    int 21H

    mov dl, 'E'
    mov ah, 2
    int 21H

    mov dl, 'R'
    mov ah, 2
    int 21H

    mov dl, 'N'
    mov ah, 2
    int 21H

    mov dl, 'A'
    mov ah, 2
    int 21H

    mov dl, 'T'
    mov ah, 2
    int 21H

    mov dl, 'I'
    mov ah, 2
    int 21H

    mov dl, 'O'
    mov ah, 2
    int 21H

    mov dl, 'N'
    mov ah, 2
    int 21H

    mov dl, 'A'
    mov ah, 2
    int 21H

    mov dl, 'L'
    mov ah, 2
    int 21H

    mov dl, ' '  ; Print a space
    mov ah, 2
    int 21H

    ; Display "UNIVERSITY"   
    
    mov dl, 'U'
    mov ah, 2
    int 21H

    mov dl, 'N'
    mov ah, 2
    int 21H

    mov dl, 'I'
    mov ah, 2
    int 21H

    mov dl, 'V'
    mov ah, 2
    int 21H

    mov dl, 'E'
    mov ah, 2
    int 21H

    mov dl, 'R'
    mov ah, 2
    int 21H

    mov dl, 'S'
    mov ah, 2
    int 21H

    mov dl, 'I'
    mov ah, 2
    int 21H

    mov dl, 'T'
    mov ah, 2
    int 21H

    mov dl, 'Y'
    mov ah, 2
    int 21H

    ; Terminate the program 
    
    mov ah, 4Ch  ; DOS interrupt function to exit
    int 21H

main endp       ; End of the main procedure
end main        ; End of the program

ret
