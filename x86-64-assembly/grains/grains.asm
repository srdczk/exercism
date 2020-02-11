section .text
global square
square:
    ; 先 和 0 - 64 做比较
    cmp edi, 1
    jl done
    cmp edi, 64
    jg done
    mov ebx, edi
    mov rax, 1
add_loop:
    cmp ebx, 1
    je res
    add rax, rax
    sub ebx, 1
    jmp add_loop
res:
    ; Provide your implementation here
    ret
done:
    mov rax, 0
    ret

global total
total:
    mov rax, 0
    mov rbx, 1
    mov ecx, 1
total_loop:
    cmp ecx, 64
    jg total_done
    add rax, rbx
    add rbx, rbx
    add ecx, 1
    jmp total_loop
total_done:
    ; Provide your implementation here
    ret
