.586
.model flat
.code

_moltiplicazione proc
push ebp
mov ebp, esp
push esi
push edi
push ebx

;inizializzo
mov eax, dword ptr[ebp+8]
mov ebx, dword ptr[ebp+12]
mov ecx, dword ptr[ebp+16]
mov edx, 0
mov esi, 0
mov edi, 0


inizio:
dec dword ptr[ebp+20]
cmp dword ptr[ebp+20], 0
je fine
mul word ptr[ebx+esi*4]
inc esi
jmp inizio



fine:

pop ebx
pop edi
mov esp, ebp
pop ebp
ret

_moltiplicazione endp
end