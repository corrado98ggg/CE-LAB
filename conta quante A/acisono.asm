.586
.model flat
.code

_quanteA proc
push ebp
mov ebp, esp
push esi
push edi
push ebx

;inizio codice

dichiarazione:

mov ebx, dword ptr[ebp+8]
mov esi, 0
mov eax, 0

finito:
cmp dword ptr[ebp+12], 0   ;vedo se finito il vettore
je fine 
dec dword ptr[ebp+12]      

A_check:
cmp byte ptr[ebx+esi], 'A'
je incrementa
cmp byte ptr[ebx+esi], 'a'
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

_quanteA endp
end