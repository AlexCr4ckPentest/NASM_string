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