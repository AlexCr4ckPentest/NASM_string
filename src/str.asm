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
; output: eax - result
_strcmp:
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