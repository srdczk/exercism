section .rodata

one_for:
    db "One for ", 0x0

one_for_you:
    db "One for you", 0x0

one_for_me:
    db ", one for me.", 0x0

section .text
global two_fer
two_fer:
    ; 64 位汇编 --> 依次参数 放在 rdi, rsi, rdx, rcx, r8, r9
    mov r8, rdi
    mov r9, rsi
    test r8, r8
    jz .one_for_you
.one_for:
    mov r8, one_for
.one_for_loop:
    mov al, [r8]
    cmp al, 0
    jz .name
    mov [r9], al
    add r8, 1
    add r9, 1
    jmp .one_for_loop

.name:
    mov r8, rdi
.name_loop:
    mov al, [r8]
    cmp al, 0
    jz .one_for_me
    mov [r9], al
    add r8, 1
    add r9, 1
    jmp .name_loop

.one_for_you:
    mov r8, one_for_you
.one_for_you_loop:
    mov al, [r8]
    cmp al, 0
    jz .one_for_me
    ; 否则 
    mov [r9], al
    add r8, 1
    add r9, 1
    jmp .one_for_you_loop

.one_for_me:
    mov r8, one_for_me
.one_for_me_loop:
    mov al, [r8]
    cmp al, 0
    jz .done
    mov [r9], al
    add r8, 1
    add r9, 1
    jmp .one_for_me_loop

.done:
    mov [r9], al
    ret
