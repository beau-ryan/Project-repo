
bits 32

section .data

section .rodata

section .text
	;extern k_main
	global _start
	
_start:

	mov eax, 1

	mov esp, esp

	mov eax, ebp

	int 0x80

end:
	cli
	xor eax, eax
	ret

section .bss
