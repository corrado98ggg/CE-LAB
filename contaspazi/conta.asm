.586
.model flat
.code

_contaspazi proc
push ebp
mov ebp, esp
push esi
push edi
push ebx

;inizializzo
mov ebx, dword ptr[ebp+8]       ;stringa
mov esi, 0						;indice per muoversi
mov eax, 0

finito:					;controllo se è finita la stringa
cmp dword ptr[ebp+12], 0
je fine
dec dword ptr[ebp+12]

cmp byte ptr[ebx+esi*1], ' '
je incrementa
inc esi
jmp finito

incrementa:
inc eax
inc esi
jmp finito

fine:
pop ebx
pop edi
mov esp, ebp
pop ebp
ret

_contaspazi endp
end