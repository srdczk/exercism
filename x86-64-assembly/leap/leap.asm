section .text
global leap_year
leap_year:
    test edi, 0x03
    ; x & 0111
    ; 如果 不是 0
    jne not_leap
    ; div 指令 进行 除法, ;余数在 edx 中
    xor edx, edx
    ; 除法指令 -> eax 存放 被除数, edx, 存放 余数
    mov eax, edi
    ; % 4 == 0 but % 100 != 0
    mov r8d, 100
    div r8d
    test edx, edx
    jne is_leap

    xor edx, edx
    mov eax, edi
    mov r8d, 400
    div r8d
    test edx, edx
    jne not_leap
    
is_leap:
    mov eax, 0x1
    ret

not_leap:
    xor eax, eax
    ; Provide your implementation here
    ret
