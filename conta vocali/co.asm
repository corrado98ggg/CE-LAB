.586
.model flat
.code

_conta proc
push ebp
mov ebp, esp
push esi
push edi
push ebx

;inizializzo
mov ebx, dword ptr[ebp+8] ;stringa
mov esi, 0                ;indice per muoversi
mov eax, 0

finito:        ;controllo se ho finito la stringa

cmp dword ptr[ebp+12], 0
je fine
dec dword ptr[ebp+12]

cmp byte ptr [ebx+esi*1], 'a'
je vocale
cmp byte ptr [ebx+esi*1], 'e'
je vocale
cmp byte ptr [ebx+esi*1], 'i'
je vocale
cmp byte ptr [ebx+esi*1], 'o'
je vocale
cmp byte ptr [ebx+esi*1], 'u'
je vocale
inc esi
jmp finito

vocale:
inc eax
inc esi
jmp finito

fine:
pop ebx
pop edi
mov esp, ebp
pop ebp
ret

_conta endp
end