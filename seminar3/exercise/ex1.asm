%macro a 4
%4: db %1,", ",%2,", ",%3
%endmacro

section .data
    a "hello", "another", "world", world
section .text

global _start


_start:
    mov rdi, world
    call print_string
    mov rax, 60
    xor rdi, rdi
    syscall
