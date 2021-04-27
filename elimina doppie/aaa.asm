.586
.model flat
.code

_conta_doppi proc
push ebp
mov ebp, esp
push esi
push edi
push ebx

;inizializzo
mov ecx, dword ptr[ebp+8]    ;cciao
mov esi, 0
mov ebx, 0
mov dl, byte ptr[ebp+12]     ;c

ciclo:
mov al, byte ptr[ecx+esi]    ;c
cmp al, 0
je fine
cmp al, dl                   ;
je conta
inc esi
jmp ciclo

conta:
mov edi, 1
cicloconta:
mov al, byte ptr[ecx+esi]
cmp al, dl
jne verifica
inc esi
jmp cicloconta

verifica:
cmp edi, 2
jne ciclo
inc ebx
sub esi, 2
mov byte ptr[ecx+esi], ' '
inc esi
mov byte ptr[ecx+esi], ' '
inc esi
jmp ciclo

fine:
mov eax, ebx

pop ebx
pop edi
pop esi
mov esp, ebp
pop ebp
ret
_conta_doppi endp
end
