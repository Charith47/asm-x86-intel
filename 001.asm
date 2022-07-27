; assembly learning 001: A syscall
.global _start
.intel_syntax
.section .text

_start:
    mov %eax, 1         ; exit
    mov %ebx, 65        ; error code
    int 0x80            ; execute syscall

.section .data