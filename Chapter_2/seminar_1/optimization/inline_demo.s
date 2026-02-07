	.file	"inline_demo.cpp"
	.intel_syntax noprefix
	.text
	.section	.text._Z3addii,"axG",@progbits,_Z3addii,comdat
	.p2align 4
	.weak	_Z3addii
	.type	_Z3addii, @function
_Z3addii:
.LFB0:
	.cfi_startproc
	endbr64
	lea	eax, [rdi+rsi]
	ret
	.cfi_endproc
.LFE0:
	.size	_Z3addii, .-_Z3addii
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xor	ebp, ebp
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xor	ebx, ebx
	sub	rsp, 8
	.cfi_def_cfa_offset 32
	.p2align 4,,10
	.p2align 3
.L4:
	mov	edi, ebx
	mov	esi, 3
	add	ebx, 1
	call	_Z3addii
	add	ebp, eax
	cmp	ebx, 1000000
	jne	.L4
	mov	DWORD PTR sink[rip], ebp
	mov	eax, ebp
	add	rsp, 8
	.cfi_def_cfa_offset 24
	and	eax, 1
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.globl	sink
	.bss
	.align 4
	.type	sink, @object
	.size	sink, 4
sink:
	.zero	4
	.ident	"GCC: (Ubuntu 13.1.0-8ubuntu1~22.04) 13.1.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
