.intel_syntax noprefix

.text
.global word_count

word_count:
	push ebp
	mov ebp, esp

init:
	xor cl, cl
	xor edx, edx
	cld
	mov esi, [ ebp + 8 ]

loop:
	lodsb
	test al, al
	jz end

	or al, 0x20
	sub al, 'a'
	cmp al, 'z' - 'a'
	jna alphabetic

	xor cl,cl
	jmp continue

alphabetic:
	test cl, cl
	jnz loop

	inc cl
	inc edx

continue:
	jmp loop

end:
	mov eax, edx
	mov esp, ebp
	pop ebp
	ret
