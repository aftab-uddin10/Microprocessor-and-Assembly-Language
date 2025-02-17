
; Md Aftab Uddin Bhuiyan. 
; aftabu363@gmail.com

org 100h

.model small      ; Specifies the memory model as 'small' (64 KB code, data, and stack segments)
.stack 100h       ; Reserves 256 bytes (100H in hexadecimal) for the stack

.data
a db 'Hello $'  ; Message to display "Hello"
b db 'Enter any character: $'  ; Input prompt message
c db 'The entered character is: $'  ; Output message

.code
main proc  

    ; ------------------------------  
    ; Data Segment Initialization  
    ; ------------------------------  
    mov ax,@data   ; Load the segment address of the data segment into AX
    mov ds, ax      ; Copy AX into DS to set up the data segment  

    ; ----------------------------------  
    ; Step 1: Display "Hello" Message  
    ; ----------------------------------  
    mov ah, 9       ; DOS interrupt function to display a string  
    lea dx, a       ; Load the effective address of the message into DX  
    int 21h         ; Call DOS interrupt to print the string  

    ; ------------------------------  
    ; Step 2: Print a Newline  
    ; ------------------------------  
    mov ah, 2       ; DOS interrupt function to display a single character  
    mov dl, 0dh     ; Carriage return (moves the cursor to the beginning of the line)  
    int 21h         ; Print carriage return  
    mov dl, 0ah     ; Line feed (moves to the next line)  
    int 21h         ; Print line feed  

    ; ---------------------------------------  
    ; Step 3: Display a Single Character ('A')  
    ; ---------------------------------------  
    mov ah, 2       ; DOS function to display a single character  
    mov dl, 'A'     ; Load character 'a' into DL register  
    int 21h         ; Display 'a' on the screen  

    ; ------------------------------  
    ; Step 4: Print a Newline  
    ; ------------------------------  
    mov ah, 2       ; DOS function for character output  
    mov dl, 0dh     ; Carriage return  
    int 21h         ; Print carriage return  
    mov dl, 0ah     ; Line feed  
    int 21h         ; Print line feed  

    ; --------------------------------------  
    ; Step 5: Display the Input Prompt  
    ; --------------------------------------  
    mov ah, 9       ; DOS function to display a string  
    lea dx, b       ; Load the effective address of the input prompt  
    int 21h         ; Print the input prompt message  

    ; ------------------------------  
    ; Step 6: Take a Character Input  
    ; ------------------------------  
    mov ah, 1       ; DOS function to take a single character input  
    int 21h         ; Store input character in AL register  
    mov bl, al      ; Save input character in BL for later use  

    ; ------------------------------  
    ; Step 7: Print a Newline  
    ; ------------------------------  
    mov ah, 2       ; DOS function for character output  
    mov dl, 0dh     ; Carriage return  
    int 21h         ; Print carriage return  
    mov dl, 0ah     ; Line feed  
    int 21h         ; Print line feed  

    ; --------------------------------------------  
    ; Step 8: Display "The entered character is"  
    ; --------------------------------------------  
    mov ah, 9       ; DOS function to display a string  
    lea dx, c       ; Load the effective address of the output message  
    int 21h         ; Print the output message  

    ; --------------------------------------  
    ; Step 9: Display the Entered Character  
    ; --------------------------------------  
    mov ah, 2       ; DOS function to display a single character  
    mov dl, bl      ; Move the stored input character from BL to DL  
    int 21h         ; Display the entered character  

    ; ------------------------------  
    ; Step 10: Exit the Program  
    ; ------------------------------  
    mov ah, 4ch     ; DOS function to terminate the program  
    int 21h         ; Exit program and return control to the OS  

main endp  
end main  

ret
