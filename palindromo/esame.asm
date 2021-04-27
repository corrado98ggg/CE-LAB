.586
.model flat
.code

_palindromo proc
push ebp
mov ebp, esp
push esi
push edi
push ebx

;inizializzo 

mov ebx, dword ptr[ebp+8]		;stringa 
mov esi, 0						;indice per spostarsi
mov edi, 0						;ultima posizione
mov al, 0
mov ecx, 0
mov edx, 0

calcolo_lunghezza:
cmp byte ptr[ebx+esi*1], 0
je inizio_check
inc edi
inc esi
jmp calcolo_lunghezza

inizio_check:
mov esi, 0
mov edx, edi
jmp inizio_vero

inizio_vero:
cmp byte ptr[ebx+esi*1], 0     ;controllo se ho finito la stringa
je fine

dec edi

primo_check:                   ;controllo se sono uguali
mov al, byte ptr[ebx+edi*1]
cmp byte ptr[ebx+esi*1], al
je uguali
add al, 32
cmp byte ptr[ebx+esi*1], al
je uguali
sub al, 32
sub al, 32
cmp byte ptr[ebx+esi*1], al
je uguali
jmp non_uguali

uguali:
inc ecx
cmp ecx, edx
je palindroma_fine
inc esi
jmp inizio_vero

palindroma_fine:
mov eax, 1
jmp fine

non_uguali:
mov eax, 0
jmp fine

fine:
pop ebx
pop edi
mov esp, ebp
pop ebp
ret

_palindromo endp
end