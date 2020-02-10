section .text
global distance
distance:
    ; 两个指针 存放在 rdi, rsi
    mov r8, rdi
    mov r9, rsi
    mov eax, 0
compare:
    mov dl, [r8]
    mov cl, [r9]
    cmp dl, 0
    je pd
    cmp cl, 0
    je no_done
    cmp dl, cl
    je pro
    add eax, 1
pro:
    add r8, 1
    add r9, 1
    jmp compare
pd:
    cmp cl, 0
    je done
no_done:
    mov eax, -1
    ret
done:
    ret

