
; Md Aftab Uddin Bhuiyan.
; aftabu363@gmail.com

org 100h

.model small    ; Define the memory model as 'small' (for small programs with separate code and data segments)
.stack 100H     ; Define stack size of 256 bytes (100H in hexadecimal)

.data           ; Data segment (empty in this case, as no variables are declared)  

.code           ; Code segment starts

main proc       ; Define the main procedure 
    
    mov ah, 1   ; Set AH register to 1, which is the DOS interrupt function to take a single character input
    int 21H     ; Call DOS interrupt 21H to read a character from the keyboard, result is stored in AL 

    mov dl, al  ; Move the character from AL (input) to DL (for output)
    mov ah, 2   ; Set AH register to 2, which is the DOS interrupt function to display a single character
    int 21H     ; Call DOS interrupt 21H to display the character on the screen 

    mov ah, 4Ch ; Set AH to 4CH, which is the DOS function to terminate the program
    int 21H     ; Call DOS interrupt 21H to exit the program

main endp       ; End of the main procedure
end main        ; End of the program execution


ret
