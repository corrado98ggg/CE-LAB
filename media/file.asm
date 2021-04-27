.586
.model flat
.code

_media proc
push ebp
mov ebp, esp
push esi
push edi
push ebx

;inizio codice

mov ebx, dword ptr[ebp+8]   ;vettore
mov edx, 0                  ;somma del vettore
mov esi, 0                  ;indice per muoversi nel vettore
mov eax, 0					;risultato della media
mov edi, dword ptr[ebp+12]


finito:
cmp dword ptr[ebp+12], 0
je calcolo_media
dec dword ptr[ebp+12]
add eax, dword ptr[ebx+esi*4]
inc esi
jmp finito

calcolo_media:
div edi

fine:
pop ebx
pop edi
mov esp, ebp
pop ebp
ret

_media endp
end