.586
.model flat
.code

_prodotto proc
push ebp
mov ebp, esp
push esi
push edi
push ebx

;inizio codice

mov ebx, dword ptr[ebp+8]    ;primo vettore
mov ecx, dword ptr[ebp+12]   ;secondo vettore
mov edx, dword ptr[ebp+16]   ;vettore destinazione
mov esi, 0					 ;indice per muoversi tra vettori
mov edi, 0                   ;tmp per la mul

finito:
mov edx, dword ptr[ebp+16]
mov eax, 0
cmp dword ptr[ebp+20], 0     ;se ho finito il vettore
je fine
dec dword ptr[ebp+20]

moltiplicazione:
mov eax, dword ptr[ebx+esi*4]
mov edi, dword ptr[ecx+esi*4]
mul edi

mov edx, dword ptr[ebp+16] 
mov dword ptr[edx+esi*4], eax

inc esi
jmp finito

fine:
pop ebx
pop edi
mov esp, ebp
pop ebp
ret

_prodotto endp
end