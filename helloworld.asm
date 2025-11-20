format elf64

section 'data' writable
msg db "hello", 10
len = $ - msg

section 'text' executable
public _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, len
    syscall

    mov rax, 60
    mov rdi, 0
    syscall
