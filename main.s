	main, @function
main:
	push	rbp
	_offset 6, -16
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR [rbp-20], edi
	mov	QWORD PTR [rbp-32], rsi
	mov	DWORD PTR [rbp-4], 42
	mov	eax, DWORD PTR [rbp-4]
	mov	edi, eax
	call	proc
	leave
	ret
