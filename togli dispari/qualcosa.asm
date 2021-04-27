.586
.model flat
.code
_togli_dispari proc
push ebp
mov ebp, esp
push esi
push edi
push ebx

;inizilizzo
mov ebx, dword ptr[ebp+8]		;src
mov eax, 0
mov ecx, 0
mov edx, 0
mov esi, 0						;contatore nel vettore
mov edi, 2					    ;lunghezza vettore

dec dword ptr[ebp+12]

inizio:       ;controllo se ho finito il vettore
cmp dword ptr[ebp+12], 0
je fine 


cdq
mov eax, dword ptr[ebx+esi*4]
div edi

resto_check:
cmp edx, 0
je pari


media_check_imeno1:			;faccio la media solo se sono pari i+1 e i-1
mov eax, 0
mov edx, 0
mov eax, ecx
div edi

cmp edx, 0
je media_check_ipiu1
jmp media_dispari

media_check_ipiu1:
add esi, 1
mov eax, 0
mov edx, 0
mov eax, dword ptr[ebx+esi*4]
sub esi, 1
div edi

cmp edx, 0
je media_pari
jmp media_dispari


media_pari:
add esi, 1
mov eax, dword ptr[ebx+esi*4]
sub esi, 1
add eax, ecx

div edi

mov dword ptr[ebx+esi*4], eax

dec dword ptr[ebp+12]
inc esi
jmp inizio

media_dispari:

div edi
add eax, 1

mov dword ptr[ebx+esi*4], eax

dec dword ptr[ebp+12]
inc esi
jmp inizio


pari:
mov ecx, dword ptr[ebx+esi*4]
inc esi
dec dword ptr[ebp+12]
jmp inizio


fine:
pop ebx
pop edi
mov esp, ebp
pop ebp
ret

_togli_dispari endp
end