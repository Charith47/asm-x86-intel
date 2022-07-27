; assembly learning 002: Hello World
.global _start
.intel_syntax
.section .text

_start:
    ; write hello world to stdout
    mov %eax, 4             ; 4 th syscall is write
    mov %ebx, 1             ; 1 is STDOUT
    lea %ecx, [message]     ; mem addr of char buffer (lea in intel syntax)
    mov %edx, 13            ; len
    int 0x80

    ; exit the program with error code 0
    mov %eax, 1             ; 1 st syscall is exit
    mov %ebx, 0             ; error code 0
    int 0x80                ; execute syscall

.section .data
    message: .ascii "Hello World!\n"