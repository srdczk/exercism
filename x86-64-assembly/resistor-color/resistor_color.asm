section .rodata

black:
    db "black", 0
brown:
    db "brown", 0
red:
    db "red", 0
orange:
    db "orange", 0
yellow:
    db "yellow", 0
green:
    db "green", 0
blue:
    db "blue", 0
violet:
    db "violet", 0
grey:
    db "grey", 0
white:
    db "white", 0
; 最终指向的地方
res:
    dq black, brown, red, orange, yellow, green, blue, violet, grey, white, 0

section .text
global color_code
color_code:
    ; char *color 的地址存放在 rdi 中
    cmp byte [rdi], 'b'

    je b

    cmp byte [rdi], 'w'

    je w

    cmp byte [rdi], 'o'
    je o

b:
    mov eax, 0
    ret
w:
    mov eax, 9
    ret

o:
    mov eax, 3
    ret
    ; Provide your implementation here
    ; 设置 eax 并且 返回
    ret

global colors
colors:
    ; 指向指针数组的寄存器
    mov qword rax, res
    ; Provide your implementation here
    ret
