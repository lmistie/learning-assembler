        global    _main

section .text
_main:  mov eax, [num1]
	add eax, [num2]
        mov [result], eax

        num1 dd 8
	num2 dd 2

        result dd 0