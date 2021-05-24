.intel_syntax noprefix

.text
.global replaceChar

replaceChar:
	push ebp
	mov ebp, esp
	push ebx

	xor edx, edx
	xor ecx, ecx
	xor eax, eax
	xor ebx, ebx

	mov esi, [ ebp + 2*4 ]
	mov dl, [ ebp + 3*4 ]
	mov dh, [ ebp + 4*4 ]
	mov edi, [ ebp + 5*4 ]
	cld

loop:
	lodsb
	test al, al
	je end

check:
	cmp al, dl
	je is_target
	stosb
	jmp loop

is_target:
	mov al, dh
	stosb
	inc ebx
	jmp loop

end:
	mov al, 0
	stosb
	
	mov eax, ebx
	pop ebx
	mov esp, ebp
	pop ebp
	ret
