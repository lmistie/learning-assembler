.data
.code
start:
org 100h
mov eax, 2
mov dl, 41h
int 21h
int 20h

END start


;нужно переделать