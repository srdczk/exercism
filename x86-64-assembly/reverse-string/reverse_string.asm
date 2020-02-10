section .text
global reverse
reverse:
    mov r8, rdi
    mov r9, rdi
cnt:
    mov bl, [r8]
    cmp bl, 0
    je done
    add r8, 1
    jmp cnt
done:
    sub r8, 1
main_loop:
    cmp r8, r9
    jle res
    mov cl, [r8]
    mov bl, [r9]
    mov [r9], cl
    mov [r8], bl
    sub r8, 1
    add r9, 1
    jmp main_loop
    ; Provide your implementation here
res:
    ret
