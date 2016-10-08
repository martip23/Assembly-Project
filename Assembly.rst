**main:**
	**push	rbp**

		Copy value in RBP to the stack.

	**mov	rbp, rsp**

		Copy value in RSP to RBP

	**sub	rsp, 32**

		Subtract 32 from RSP and leave the value in RSP
	
	**mov	DWORD PTR [rbp-20], edi**
	
		Copy value in edi to memory address of rbp -20 | argc

	**mov	QWORD PTR [rbp-32], rsi**
		
		Copy value in rsi to memory address of rbp -32 |argv

	**mov	DWORD PTR [rbp-4], 42**

		Copy 42 into memory adress of rbp-4 | x

	**mov	eax, DWORD PTR [rbp-4]**

		move x into eax (32 bits)

	**mov	edi, eax**

		move eax into edi

	**call	proc**
		
		jump to procedure

	leave
	ret

		**return to procedure outside of this program**

**proc:**
	**push	rbp**

		copy value rbp into stack

	**mov	rbp, rsp**

		copy rsp to rbp

	**sub	rsp, 16**

		subtract 16 from rsp

	**mov	DWORD PTR [rbp-4], edi**

		move edi to memory adress of rbp-4

	**mov	eax, DWORD PTR [rbp-4]**

		move the string at DWORD PTR [rbp-4] into eax. So this is how the procedure gets the string.

	**mov	esi, eax**

		move eax into esi

	**mov	edi, OFFSET FLAT:.LC0**

		move OFFSET FLAT:.LCO** into edi. I don't know.

	**mov	eax, 0**
	
		copy 0 into eax

	**call	printf**

		call printf function that will use information we have set, I'm guessing

	leave
	**ret**

		Return to where we were earlier.

