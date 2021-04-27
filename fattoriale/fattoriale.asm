.586
.model flat
.code

_fattoriali proc
push ebp
mov ebp, esp
push esi
push edi
push ebx

;inizio codice

dichiarazione:
mov ecx, dword ptr[ebp+12]  ;dest
mov eax, 0
mov edi, 0                  ;per spostarci

;mov esi, eax
;fattoriale

;dword ptr[ebp+16] lunghezza

inizio:
mov edx, dword ptr[ebp+8] ;src
cmp dword ptr[ebp+16], 0  ;vedi se hai finito il vettore
je fine                   ;se finito vai a fine
dec dword ptr[ebp+16]     

zero_check:
mov esi, dword ptr[edx+edi*4]   
cmp dword ptr[edx+edi*4], 0
je zero

uno_check:
cmp dword ptr[edx+edi*4], 1
je zero

mov eax, dword ptr[edx+edi*4]
fattoriale:
dec esi
cmp esi, 1
je sposta_nel_vettore

mul esi
jmp fattoriale

sposta_nel_vettore:
mov dword ptr[ecx+edi*4], eax
inc edi
jmp inizio

zero:
mov dword ptr[ecx+edi*4], 1
inc edi
jmp inizio


fine:
mov eax, 0
pop ebx
pop edi
mov esp, ebp
pop ebp
ret

_fattoriali endp
end