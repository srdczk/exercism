section .text
global square_of_sum
square_of_sum:
    ; Provide your implementation here
    mov eax, 0
    mov ecx, 1
sqs:
    cmp ecx, edi
    jg sq_done
    add eax, ecx
    add ecx, 1
    jmp sqs
sq_done:
    imul eax, eax
    ret

global sum_of_squares
sum_of_squares:
    mov eax, 0
    mov ecx, 1
    mov ebx, 1
    ; Provide your implementation here
sus:
    cmp ecx, edi
    jg su_done
    mov ebx, ecx
    imul ebx, ebx
    add eax, ebx
    add ecx, 1
    jmp sus
su_done:
    ret

global difference_of_squares
difference_of_squares:
    call sum_of_squares
    mov ebx, eax
    call square_of_sum
    sub eax, ebx
    ; Provide your implementation here
    ret
