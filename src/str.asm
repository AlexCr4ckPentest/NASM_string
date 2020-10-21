; str.asm

global _strlen
global _strcmp
global _strcpy
global _strcat

global _strtonum
global _numtostr


section .text



; eax - string
; output: eax - string length
_strlen:
    push ebx

    lea ebx, dword [eax] ; ptr_at_begin

    .check_next:            ; while (*char_ptr != 0x0)
        cmp [eax], byte 0x0
        je .end
        inc eax             ; char_ptr++
        jmp .check_next

    .end:
        sub eax, ebx ; char_ptr - ptr_at_begin

    pop ebx
    ret



; eax - string1
; ebx - string2
; output: eax - 1 - not equals
;               0 - equals
_strcmp:
    push ebx
    push ecx

    sub esp, 4
    mov dword [esp-4], eax

    .check_next:
        mov eax, dword [esp-4]
        mov al, byte [eax]
        cmp al, byte [ebx]
        jne .not_eq
        add dword [esp-4], 1
        inc ebx
        test al, al
        jne .check_next

    xor eax, eax
    jmp .end

    .not_eq:
        mov eax, 0x1

    .end:
        add esp, 4
        pop ecx
        pop ebx
        ret



; eax - dst string
; ebx - src string
_strcpy:
    ret



; eax - dst string1
; ebx - src string2
_strcat:
    ret



; eax - string
; output: eax - number
_strtonum:
    ret



; eax - number
; output: eax - string
_numtostr:
    ret