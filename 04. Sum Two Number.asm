
; Md Aftab Uddin Bhuiyan 
; aftabu363@gmail.com

org 100h

.model small  
.stack 100h  

.data  
a db 'Enter input a: $'      
b db 'Enter input b: $'     
c db 'The sum is: $'      

.code  

main proc  
    ; ------------------------------  
    ; Data Segment Initialization  
    ; ------------------------------  
    mov ax, @data      ; Load the segment address of the data segment into AX  
    mov ds, ax         ; Copy AX into DS to set up the data segment  

    ; ------------------------------  
    ; Step 1: Take First Input (a)  
    ; ------------------------------  
    mov ah, 9          ; DOS function to display a string  
    lea dx, a          ; Load the address of "Enter input a:"  
    int 21h            ; Print the input prompt  

    mov ah, 1          ; DOS function to take a single character input  
    int 21h            ; Take first character input (ASCII stored in AL)  
    mov bl, al         ; Store input in BL  

    ; Print New Line  
    mov ah, 2  
    mov dl, 0dh        ; Carriage return  
    int 21h  
    mov dl, 0ah        ; Line feed  
    int 21h  

    ; ------------------------------  
    ; Step 2: Take Second Input (b)  
    ; ------------------------------  
    mov ah, 9  
    lea dx, b          ; Load the address of "Enter input b:"  
    int 21h            ; Print the input prompt  

    mov ah, 1          ; DOS function to take a single character input  
    int 21h            ; Take second character input  
    mov bh, al         ; Store input in BH  

    ; Print New Line  
    mov ah, 2  
    mov dl, 0dh  
    int 21h  
    mov dl, 0ah  
    int 21h  

    ; ------------------------------  
    ; Step 3: Perform Addition and Display Result  
    ; ------------------------------  
    mov ah, 9  
    lea dx, c          ; Load the address of "The sum is:"  
    int 21h            ; Print the result label  

    add bl, bh         ; Add ASCII values of input characters  
    sub bl, 48         ; Convert from ASCII to decimal  

    mov ah, 2  
    mov dl, bl         ; Load result into DL  
    int 21h            ; Display the result  

    ; ------------------------------  
    ; Step 4: Exit the Program  
    ; ------------------------------  
    mov ah, 4ch        ; DOS function to terminate the program  
    int 21h            ; Exit program and return control to the OS  

main endp  
end main  

ret
