	.file	"2_example.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.p2align 4
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, @function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB5858:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %rbp
	testq	%rbp, %rbp
	je	.L7
	cmpb	$0, 56(%rbp)
	movq	%rdi, %rbx
	je	.L3
	movzbl	67(%rbp), %eax
.L4:
	movq	%rbx, %rdi
	movsbl	%al, %esi
	call	_ZNSo3putEc@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	movq	%rax, %rdi
	jmp	_ZNSo5flushEv@PLT
.L3:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	call	*48(%rax)
	jmp	.L4
.L7:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE5858:
	.size	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	.section	.text._ZN5PointC2Ei,"axG",@progbits,_ZN5PointC5Ei,comdat
	.align 2
	.p2align 4
	.weak	_ZN5PointC2Ei
	.type	_ZN5PointC2Ei, @function
_ZN5PointC2Ei:
.LFB4877:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	movslq	%esi, %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rax
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movl	%edi, 0(%rbp)
	shrq	$60, %rax
	jne	.L9
	movq	%rdi, %rbx
	salq	$3, %rdi
	call	_Znam@PLT
	movq	%rax, %rdi
	movq	%rax, 8(%rbp)
	testl	%ebx, %ebx
	je	.L15
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%ebx, %edx
	xorl	%esi, %esi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	salq	$3, %rdx
	jmp	memset@PLT
	.p2align 4
	.p2align 3
.L15:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L9:
	.cfi_restore_state
	call	__cxa_throw_bad_array_new_length@PLT
	.cfi_endproc
.LFE4877:
	.size	_ZN5PointC2Ei, .-_ZN5PointC2Ei
	.weak	_ZN5PointC1Ei
	.set	_ZN5PointC1Ei,_ZN5PointC2Ei
	.section	.text.unlikely,"ax",@progbits
.LCOLDB9:
	.text
.LHOTB9:
	.p2align 4
	.globl	_Z12random_pointi
	.type	_Z12random_pointi, @function
_Z12random_pointi:
.LFB4882:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movslq	%edi, %rbx
	movq	%rbx, %rax
	subq	$32, %rsp
	.cfi_def_cfa_offset 80
	shrq	$60, %rax
	jne	.L17
	movq	%rbx, %rbp
	salq	$3, %rbx
	movq	%rbx, %rdi
	call	_Znam@PLT
	movq	%rax, %r12
	testl	%ebp, %ebp
	je	.L38
	movl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%r12, %r14
	leaq	0(,%rbp,8), %rdx
	addq	%r12, %rbx
	movl	$1, %r13d
	call	memset@PLT
	xorl	%eax, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC3(%rip), %xmm8
	vmovsd	%xmm0, %xmm0, %xmm6
	vxorps	%xmm4, %xmm4, %xmm4
	.p2align 4
	.p2align 3
.L29:
	testb	%al, %al
	jne	.L31
	movabsq	$8589934597, %rcx
	vmovsd	.LC4(%rip), %xmm7
	vmovsd	.LC5(%rip), %xmm5
	vmovsd	.LC6(%rip), %xmm10
	vmovsd	.LC7(%rip), %xmm9
	.p2align 4
	.p2align 3
.L21:
	imulq	$16807, %r13, %r13
	movq	%r13, %rax
	mulq	%rcx
	movq	%r13, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rax, %rdx
	shrq	$30, %rdx
	movq	%rdx, %rax
	salq	$31, %rax
	subq	%rdx, %rax
	movq	%r13, %rdx
	subq	%rax, %rdx
	imulq	$16807, %rdx, %rsi
	leaq	-1(%rdx), %rax
	vcvtusi2sdq	%rax, %xmm4, %xmm1
	vaddsd	%xmm6, %xmm1, %xmm1
	movq	%rsi, %rax
	mulq	%rcx
	movq	%rsi, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rax, %rdx
	shrq	$30, %rdx
	movq	%rdx, %rax
	salq	$31, %rax
	subq	%rdx, %rax
	subq	%rax, %rsi
	leaq	-1(%rsi), %rax
	movq	%rsi, %rdx
	vcvtusi2sdq	%rax, %xmm4, %xmm0
	vfmadd132sd	%xmm8, %xmm1, %xmm0
	vdivsd	%xmm7, %xmm0, %xmm0
	vcomisd	%xmm5, %xmm0
	jnb	.L32
	vmovsd	%xmm0, %xmm0, %xmm1
	vfmadd132sd	%xmm10, %xmm9, %xmm1
	vmulsd	%xmm1, %xmm1, %xmm3
.L22:
	imulq	$16807, %rdx, %rsi
	movq	%rsi, %rax
	mulq	%rcx
	movq	%rsi, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rax, %rdx
	shrq	$30, %rdx
	movq	%rdx, %rax
	salq	$31, %rax
	subq	%rdx, %rax
	subq	%rax, %rsi
	leaq	-1(%rsi), %rax
	imulq	$16807, %rsi, %rsi
	vcvtusi2sdq	%rax, %xmm4, %xmm2
	vaddsd	%xmm6, %xmm2, %xmm2
	movq	%rsi, %rax
	mulq	%rcx
	movq	%rsi, %rax
	subq	%rdx, %rax
	shrq	%rax
	leaq	(%rdx,%rax), %r13
	shrq	$30, %r13
	movq	%r13, %rax
	salq	$31, %rax
	subq	%r13, %rax
	subq	%rax, %rsi
	leaq	-1(%rsi), %rax
	movq	%rsi, %r13
	vcvtusi2sdq	%rax, %xmm4, %xmm0
	vfmadd132sd	%xmm8, %xmm2, %xmm0
	vdivsd	%xmm7, %xmm0, %xmm0
	vcomisd	%xmm5, %xmm0
	jnb	.L23
	vmovsd	%xmm0, %xmm0, %xmm2
	vfmadd132sd	%xmm10, %xmm9, %xmm2
	vfmadd231sd	%xmm2, %xmm2, %xmm3
	vcomisd	%xmm5, %xmm3
	ja	.L21
	vucomisd	%xmm6, %xmm3
	jp	.L30
	je	.L21
	.p2align 4
	.p2align 3
.L30:
	vmovsd	%xmm1, 24(%rsp)
	vmovsd	%xmm2, 16(%rsp)
	vmovsd	%xmm3, %xmm3, %xmm0
	vmovsd	%xmm3, 8(%rsp)
	call	log@PLT
	movq	.LC3(%rip), %rax
	vmulsd	.LC8(%rip), %xmm0, %xmm0
	vmovsd	8(%rsp), %xmm3
	vxorpd	%xmm6, %xmm6, %xmm6
	vdivsd	%xmm3, %xmm0, %xmm0
	vmovsd	16(%rsp), %xmm2
	vucomisd	%xmm0, %xmm6
	vmovsd	24(%rsp), %xmm1
	vxorps	%xmm4, %xmm4, %xmm4
	vmovq	%rax, %xmm8
	ja	.L35
	vsqrtsd	%xmm0, %xmm0, %xmm3
.L28:
	movl	$1, %eax
	vmulsd	%xmm1, %xmm3, %xmm0
	vmulsd	%xmm2, %xmm3, %xmm1
.L20:
	vaddsd	%xmm6, %xmm1, %xmm1
	addq	$8, %r14
	vmovsd	%xmm1, -8(%r14)
	cmpq	%rbx, %r14
	jne	.L29
.L19:
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movl	%ebp, %eax
	movq	%r12, %rdx
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L23:
	.cfi_restore_state
	vaddsd	.LC1(%rip), %xmm3, %xmm3
	vcomisd	%xmm5, %xmm3
	ja	.L21
	vmovsd	.LC2(%rip), %xmm2
	jmp	.L30
	.p2align 4
	.p2align 3
.L32:
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm3
	movq	.LC2(%rip), %rax
	vmovq	%rax, %xmm1
	jmp	.L22
	.p2align 4
	.p2align 3
.L31:
	xorl	%eax, %eax
	vmovsd	%xmm0, %xmm0, %xmm1
	jmp	.L20
.L38:
	xorl	%ebp, %ebp
	jmp	.L19
.L35:
	vmovsd	%xmm1, 16(%rsp)
	vmovsd	%xmm2, 8(%rsp)
	call	sqrt@PLT
	movq	.LC3(%rip), %rax
	vmovsd	%xmm0, %xmm0, %xmm3
	vxorps	%xmm4, %xmm4, %xmm4
	vxorpd	%xmm6, %xmm6, %xmm6
	vmovsd	16(%rsp), %xmm1
	vmovsd	8(%rsp), %xmm2
	vmovq	%rax, %xmm8
	jmp	.L28
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_Z12random_pointi.cold, @function
_Z12random_pointi.cold:
.LFSB4882:
.L17:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	call	__cxa_throw_bad_array_new_length@PLT
	.cfi_endproc
.LFE4882:
	.text
	.size	_Z12random_pointi, .-_Z12random_pointi
	.section	.text.unlikely
	.size	_Z12random_pointi.cold, .-_Z12random_pointi.cold
.LCOLDE9:
	.text
.LHOTE9:
	.p2align 4
	.globl	_Z5axpbyd5PointdRS_
	.type	_Z5axpbyd5PointdRS_, @function
_Z5axpbyd5PointdRS_:
.LFB4883:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	testl	%edi, %edi
	jle	.L59
	leal	-1(%rdi), %ecx
	movq	8(%rdx), %rdx
	movl	%edi, %r8d
	cmpl	$2, %ecx
	jbe	.L41
	leaq	8(%rsi), %r9
	movq	%rdx, %rdi
	subq	%r9, %rdi
	cmpq	$48, %rdi
	ja	.L60
.L41:
	cltq
	leaq	0(,%rax,8), %rcx
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
.L47:
	vmulsd	(%rdx,%rax), %xmm1, %xmm2
	vfmadd231sd	(%rsi,%rax), %xmm0, %xmm2
	vmovsd	%xmm2, (%rdx,%rax)
	addq	$8, %rax
	cmpq	%rcx, %rax
	jne	.L47
	ret
	.p2align 4
	.p2align 3
.L58:
	vzeroupper
.L59:
	ret
	.p2align 4
	.p2align 3
.L60:
	cmpl	$6, %ecx
	jbe	.L49
	movl	%eax, %edi
	vbroadcastsd	%xmm0, %zmm4
	vbroadcastsd	%xmm1, %zmm3
	xorl	%ecx, %ecx
	shrl	$3, %edi
	salq	$6, %rdi
	.p2align 4
	.p2align 3
.L43:
	vmulpd	(%rdx,%rcx), %zmm3, %zmm2
	vfmadd231pd	(%rsi,%rcx), %zmm4, %zmm2
	vmovupd	%zmm2, (%rdx,%rcx)
	addq	$64, %rcx
	cmpq	%rcx, %rdi
	jne	.L43
	movl	%eax, %edi
	andl	$-8, %edi
	movl	%edi, %ecx
	cmpl	%edi, %eax
	je	.L58
	movl	%eax, %r8d
	subl	%edi, %r8d
	leal	-1(%r8), %r9d
	cmpl	$2, %r9d
	jbe	.L45
.L42:
	salq	$3, %rcx
	vbroadcastsd	%xmm1, %ymm3
	vbroadcastsd	%xmm0, %ymm2
	leaq	(%rdx,%rcx), %r9
	vmulpd	(%r9), %ymm3, %ymm3
	vfmadd132pd	(%rsi,%rcx), %ymm3, %ymm2
	movl	%r8d, %ecx
	vmovupd	%ymm2, (%r9)
	andl	$-4, %ecx
	addl	%ecx, %edi
	andl	$3, %r8d
	je	.L58
.L45:
	movslq	%edi, %rcx
	salq	$3, %rcx
	leaq	(%rdx,%rcx), %r8
	vmulsd	(%r8), %xmm1, %xmm2
	vfmadd231sd	(%rsi,%rcx), %xmm0, %xmm2
	vmovsd	%xmm2, (%r8)
	leal	1(%rdi), %r8d
	cmpl	%r8d, %eax
	jle	.L58
	leaq	8(%rdx,%rcx), %r8
	addl	$2, %edi
	vmulsd	(%r8), %xmm1, %xmm2
	vfmadd231sd	8(%rcx,%rsi), %xmm0, %xmm2
	vmovsd	%xmm2, (%r8)
	cmpl	%edi, %eax
	jle	.L58
	leaq	16(%rdx,%rcx), %rax
	vmulsd	(%rax), %xmm1, %xmm1
	vfmadd132sd	16(%rcx,%rsi), %xmm1, %xmm0
	vmovsd	%xmm0, (%rax)
	vzeroupper
	ret
.L49:
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	jmp	.L42
	.cfi_endproc
.LFE4883:
	.size	_Z5axpbyd5PointdRS_, .-_Z5axpbyd5PointdRS_
	.p2align 4
	.globl	_Z2axdR5Point
	.type	_Z2axdR5Point, @function
_Z2axdR5Point:
.LFB4884:
	.cfi_startproc
	endbr64
	movl	(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.L76
	leal	-1(%rcx), %eax
	movq	8(%rdi), %rsi
	cmpl	$6, %eax
	jbe	.L68
	movl	%ecx, %edx
	vbroadcastsd	%xmm0, %zmm2
	movq	%rsi, %rax
	shrl	$3, %edx
	salq	$6, %rdx
	addq	%rsi, %rdx
	.p2align 4
	.p2align 3
.L64:
	vmulpd	(%rax), %zmm2, %zmm1
	addq	$64, %rax
	vmovupd	%zmm1, -64(%rax)
	cmpq	%rax, %rdx
	jne	.L64
	movl	%ecx, %eax
	andl	$-8, %eax
	movl	%eax, %edx
	cmpl	%eax, %ecx
	je	.L75
.L63:
	movl	%ecx, %edi
	subl	%edx, %edi
	leal	-1(%rdi), %r8d
	cmpl	$2, %r8d
	jbe	.L66
	leaq	(%rsi,%rdx,8), %rdx
	vbroadcastsd	%xmm0, %ymm1
	vmulpd	(%rdx), %ymm1, %ymm1
	vmovupd	%ymm1, (%rdx)
	movl	%edi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	andl	$3, %edi
	je	.L75
.L66:
	movslq	%eax, %rdx
	salq	$3, %rdx
	leaq	(%rsi,%rdx), %rdi
	vmulsd	(%rdi), %xmm0, %xmm1
	vmovsd	%xmm1, (%rdi)
	leal	1(%rax), %edi
	cmpl	%ecx, %edi
	jge	.L75
	leaq	8(%rsi,%rdx), %rdi
	addl	$2, %eax
	vmulsd	(%rdi), %xmm0, %xmm1
	vmovsd	%xmm1, (%rdi)
	cmpl	%eax, %ecx
	jle	.L75
	leaq	16(%rsi,%rdx), %rax
	vmulsd	(%rax), %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	vzeroupper
	ret
	.p2align 4
	.p2align 3
.L75:
	vzeroupper
.L76:
	ret
.L68:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L63
	.cfi_endproc
.LFE4884:
	.size	_Z2axdR5Point, .-_Z2axdR5Point
	.section	.text._ZNSt6vectorI5PointSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI5PointSaIS0_EED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorI5PointSaIS0_EED2Ev
	.type	_ZNSt6vectorI5PointSaIS0_EED2Ev, @function
_ZNSt6vectorI5PointSaIS0_EED2Ev:
.LFB5264:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L79
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4
	.p2align 3
.L79:
	ret
	.cfi_endproc
.LFE5264:
	.size	_ZNSt6vectorI5PointSaIS0_EED2Ev, .-_ZNSt6vectorI5PointSaIS0_EED2Ev
	.weak	_ZNSt6vectorI5PointSaIS0_EED1Ev
	.set	_ZNSt6vectorI5PointSaIS0_EED1Ev,_ZNSt6vectorI5PointSaIS0_EED2Ev
	.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIdSaIdEED2Ev
	.type	_ZNSt6vectorIdSaIdEED2Ev, @function
_ZNSt6vectorIdSaIdEED2Ev:
.LFB5276:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L82
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4
	.p2align 3
.L82:
	ret
	.cfi_endproc
.LFE5276:
	.size	_ZNSt6vectorIdSaIdEED2Ev, .-_ZNSt6vectorIdSaIdEED2Ev
	.weak	_ZNSt6vectorIdSaIdEED1Ev
	.set	_ZNSt6vectorIdSaIdEED1Ev,_ZNSt6vectorIdSaIdEED2Ev
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC10:
	.string	"operators:\n"
.LC14:
	.string	"axpby:\n"
	.section	.text.unlikely
.LCOLDB15:
	.section	.text.startup,"ax",@progbits
.LHOTB15:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB4885:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4885
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-64, %rsp
	leaq	_ZSt3cin(%rip), %rdi
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	leaq	-184(%rbp), %rsi
	subq	$256, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
.LEHB0:
	call	_ZNSi10_M_extractImEERSiRT_@PLT
	movl	-184(%rbp), %esi
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -272(%rbp)
	call	_ZN5PointC1Ei
	movl	$48000000, %edi
	call	_Znwm@PLT
.LEHE0:
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rbx
	leaq	48000000(%rax), %r12
	movq	%rax, -200(%rbp)
	movq	%rax, -176(%rbp)
	movq	%r12, -160(%rbp)
.L84:
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	addq	$32, %rax
	cmpq	%r12, %rax
	jne	.L84
	movl	-184(%rbp), %esi
	movq	-272(%rbp), %rdi
	movq	%r12, -168(%rbp)
.LEHB1:
	call	_ZN5PointC1Ei
	movl	$16000000, %edi
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	call	_Znwm@PLT
.LEHE1:
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rbx
	leaq	16000000(%rax), %rdx
	movq	%rax, -248(%rbp)
	movq	%rax, -144(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rdx, -128(%rbp)
.L85:
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	addq	$32, %rax
	cmpq	%rdx, %rax
	jne	.L85
	movq	-264(%rbp), %rax
	movl	$8000000, %edi
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	%rax, -136(%rbp)
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	leaq	8000000(%rax), %r14
	leaq	8(%rax), %rdi
	movl	$7999992, %edx
	xorl	%esi, %esi
	movq	%rax, -240(%rbp)
	movq	%rax, -112(%rbp)
	movq	%r14, -96(%rbp)
	movq	$0x000000000, (%rax)
	call	memset@PLT
	movl	$8000000, %edi
	movq	%r14, -104(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
.LEHB3:
	call	_Znwm@PLT
.LEHE3:
	leaq	8000000(%rax), %r13
	leaq	8(%rax), %rdi
	movl	$7999992, %edx
	xorl	%esi, %esi
	movq	%rax, -256(%rbp)
	movq	%rax, -80(%rbp)
	movq	%r13, -64(%rbp)
	movq	$0x000000000, (%rax)
	call	memset@PLT
	movq	-200(%rbp), %rbx
	movl	-184(%rbp), %r15d
	movq	%r13, -72(%rbp)
	movq	%rbx, -280(%rbp)
.L86:
	movl	%r15d, %edi
.LEHB4:
	call	_Z12random_pointi
	movl	%eax, (%rbx)
	movq	%rdx, 8(%rbx)
	addq	$16, %rbx
	cmpq	%r12, %rbx
	jne	.L86
	movq	-240(%rbp), %rbx
.L87:
	call	rand@PLT
	addq	$8, %rbx
	vxorpd	%xmm5, %xmm5, %xmm5
	movslq	%eax, %rdx
	movl	%eax, %ecx
	imulq	$818089009, %rdx, %rdx
	sarl	$31, %ecx
	sarq	$35, %rdx
	subl	%ecx, %edx
	imull	$42, %edx, %edx
	subl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm5, %xmm0
	vmovsd	%xmm0, -8(%rbx)
	cmpq	%rbx, %r14
	jne	.L87
	movq	-256(%rbp), %rbx
.L89:
	call	rand@PLT
	addq	$8, %rbx
	vxorpd	%xmm5, %xmm5, %xmm5
	movslq	%eax, %rdx
	movl	%eax, %ecx
	imulq	$818089009, %rdx, %rdx
	sarl	$31, %ecx
	sarq	$35, %rdx
	subl	%ecx, %edx
	imull	$42, %edx, %edx
	subl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm5, %xmm0
	vmovsd	%xmm0, -8(%rbx)
	cmpq	%r13, %rbx
	jne	.L89
	movl	$11, %edx
	leaq	.LC10(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	xorl	%edx, %edx
	movq	%rax, -288(%rbp)
	movq	%rdx, -208(%rbp)
	.p2align 4
	.p2align 3
.L141:
	movq	-240(%rbp), %rax
	movq	-208(%rbp), %rbx
	vmovsd	(%rax,%rbx), %xmm3
	movq	-200(%rbp), %rax
	vmovsd	%xmm3, -216(%rbp)
	movslq	32(%rax), %rdi
	movabsq	$1152921504606846975, %rax
	movq	%rdi, %rbx
	cmpq	%rdi, %rax
	jb	.L90
	salq	$3, %rdi
	call	_Znam@PLT
	movq	%rax, %r12
	testl	%ebx, %ebx
	je	.L95
	movl	%ebx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	salq	$3, %rdx
	call	memset@PLT
.L95:
	movq	-200(%rbp), %rax
	movl	32(%rax), %esi
	testl	%esi, %esi
	jle	.L93
	movq	40(%rax), %rcx
	leal	-1(%rsi), %eax
	cmpl	$6, %eax
	jbe	.L212
	vbroadcastsd	-216(%rbp), %zmm1
	movl	%esi, %edx
	xorl	%eax, %eax
	shrl	$3, %edx
	salq	$6, %rdx
	.p2align 4
	.p2align 3
.L99:
	vmulpd	(%rcx,%rax), %zmm1, %zmm0
	vmovupd	%zmm0, (%r12,%rax)
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L99
	movl	%esi, %eax
	andl	$-8, %eax
	movl	%eax, %edx
	cmpl	%eax, %esi
	je	.L305
.L98:
	movl	%esi, %edi
	subl	%edx, %edi
	leal	-1(%rdi), %r8d
	cmpl	$2, %r8d
	jbe	.L101
	vbroadcastsd	-216(%rbp), %ymm0
	vmulpd	(%rcx,%rdx,8), %ymm0, %ymm0
	vmovupd	%ymm0, (%r12,%rdx,8)
	movl	%edi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	andl	$3, %edi
	je	.L305
.L101:
	movslq	%eax, %rdi
	vmovsd	-216(%rbp), %xmm6
	leaq	0(,%rdi,8), %rdx
	vmulsd	(%rcx,%rdi,8), %xmm6, %xmm0
	leal	1(%rax), %edi
	vmovsd	%xmm0, (%r12,%rdx)
	cmpl	%edi, %esi
	jle	.L305
	addl	$2, %eax
	vmulsd	8(%rcx,%rdx), %xmm6, %xmm0
	vmovsd	%xmm0, 8(%r12,%rdx)
	cmpl	%eax, %esi
	jle	.L305
	vmulsd	16(%rcx,%rdx), %xmm6, %xmm0
	vmovsd	%xmm0, 16(%r12,%rdx)
	vzeroupper
.L93:
	movq	-256(%rbp), %rax
	movq	-208(%rbp), %rbx
	vmovsd	(%rax,%rbx), %xmm2
	movq	-200(%rbp), %rax
	vmovsd	%xmm2, -216(%rbp)
	movslq	16(%rax), %rdi
	movabsq	$1152921504606846975, %rax
	movq	%rdi, %rbx
	cmpq	%rdi, %rax
	jb	.L313
	salq	$3, %rdi
	call	_Znam@PLT
	movq	%rax, %r13
	testl	%ebx, %ebx
	je	.L107
	movl	%ebx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	salq	$3, %rdx
	call	memset@PLT
.L107:
	movq	-200(%rbp), %rax
	movl	16(%rax), %esi
	testl	%esi, %esi
	jle	.L105
	movq	24(%rax), %rcx
	leal	-1(%rsi), %eax
	cmpl	$6, %eax
	jbe	.L213
	vbroadcastsd	-216(%rbp), %zmm1
	movl	%esi, %edx
	xorl	%eax, %eax
	shrl	$3, %edx
	salq	$6, %rdx
	.p2align 4
	.p2align 3
.L111:
	vmulpd	(%rcx,%rax), %zmm1, %zmm0
	vmovupd	%zmm0, 0(%r13,%rax)
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L111
	movl	%esi, %eax
	andl	$-8, %eax
	movl	%eax, %edx
	cmpl	%eax, %esi
	je	.L308
.L110:
	movl	%esi, %edi
	subl	%edx, %edi
	leal	-1(%rdi), %r8d
	cmpl	$2, %r8d
	jbe	.L113
	vbroadcastsd	-216(%rbp), %ymm0
	vmulpd	(%rcx,%rdx,8), %ymm0, %ymm0
	vmovupd	%ymm0, 0(%r13,%rdx,8)
	movl	%edi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	andl	$3, %edi
	je	.L308
.L113:
	movslq	%eax, %rdi
	vmovsd	-216(%rbp), %xmm7
	leaq	0(,%rdi,8), %rdx
	vmulsd	(%rcx,%rdi,8), %xmm7, %xmm0
	leal	1(%rax), %edi
	vmovsd	%xmm0, 0(%r13,%rdx)
	cmpl	%edi, %esi
	jle	.L308
	addl	$2, %eax
	vmulsd	8(%rcx,%rdx), %xmm7, %xmm0
	vmovsd	%xmm0, 8(%r13,%rdx)
	cmpl	%eax, %esi
	jle	.L308
	vmulsd	16(%rcx,%rdx), %xmm7, %xmm0
	vmovsd	%xmm0, 16(%r13,%rdx)
	vzeroupper
.L105:
	movq	-240(%rbp), %rax
	movq	-208(%rbp), %rbx
	movabsq	$1152921504606846975, %rsi
	vmovsd	(%rax,%rbx), %xmm5
	movq	-200(%rbp), %rax
	vmovsd	%xmm5, -216(%rbp)
	movslq	(%rax), %rax
	movq	%rax, %rbx
	cmpq	%rax, %rsi
	jb	.L314
	salq	$3, %rax
	movq	%rax, %rdi
	movq	%rax, -224(%rbp)
	call	_Znam@PLT
	movq	%rax, %r14
	testl	%ebx, %ebx
	je	.L315
	movl	%ebx, %eax
	xorl	%esi, %esi
	movq	%r14, %rdi
	leaq	0(,%rax,8), %rdx
	movq	%rax, -232(%rbp)
	call	memset@PLT
	movq	-200(%rbp), %rax
	movl	(%rax), %esi
	testl	%esi, %esi
	jle	.L316
.L116:
	movq	-200(%rbp), %rax
	movq	8(%rax), %rcx
	leal	-1(%rsi), %eax
	cmpl	$6, %eax
	jbe	.L214
	vbroadcastsd	-216(%rbp), %zmm1
	movl	%esi, %edx
	xorl	%eax, %eax
	shrl	$3, %edx
	salq	$6, %rdx
	.p2align 4
	.p2align 3
.L122:
	vmulpd	(%rcx,%rax), %zmm1, %zmm0
	vmovupd	%zmm0, (%r14,%rax)
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L122
	movl	%esi, %eax
	andl	$-8, %eax
	movl	%eax, %edx
	cmpl	%eax, %esi
	je	.L123
.L121:
	movl	%esi, %edi
	subl	%edx, %edi
	leal	-1(%rdi), %r8d
	cmpl	$2, %r8d
	jbe	.L124
	vbroadcastsd	-216(%rbp), %ymm0
	vmulpd	(%rcx,%rdx,8), %ymm0, %ymm0
	vmovupd	%ymm0, (%r14,%rdx,8)
	movl	%edi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	andl	$3, %edi
	je	.L123
.L124:
	movslq	%eax, %rdi
	vmovsd	-216(%rbp), %xmm4
	leaq	0(,%rdi,8), %rdx
	vmulsd	(%rcx,%rdi,8), %xmm4, %xmm0
	leal	1(%rax), %edi
	vmovsd	%xmm0, (%r14,%rdx)
	cmpl	%edi, %esi
	jle	.L123
	addl	$2, %eax
	vmulsd	8(%rcx,%rdx), %xmm4, %xmm0
	vmovsd	%xmm0, 8(%r14,%rdx)
	cmpl	%eax, %esi
	jle	.L123
	vmulsd	16(%rcx,%rdx), %xmm4, %xmm0
	vmovsd	%xmm0, 16(%r14,%rdx)
.L123:
	movq	-224(%rbp), %rdi
	vzeroupper
	call	_Znam@PLT
	movq	%rax, %r15
	testl	%ebx, %ebx
	je	.L117
	movl	%ebx, %eax
	movq	%rax, -232(%rbp)
.L119:
	leaq	0(,%rax,8), %rdx
	xorl	%esi, %esi
	movq	%r15, %rdi
	call	memset@PLT
	leal	-1(%rbx), %eax
	movl	%eax, -216(%rbp)
	cmpl	$6, %eax
	jbe	.L215
	movl	%ebx, %edx
	xorl	%eax, %eax
	shrl	$3, %edx
	salq	$6, %rdx
	.p2align 4
	.p2align 3
.L127:
	vmovupd	(%r14,%rax), %zmm6
	vaddpd	0(%r13,%rax), %zmm6, %zmm0
	vmovupd	%zmm0, (%r15,%rax)
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L127
	movl	%ebx, %edx
	andl	$-8, %edx
	movl	%edx, %eax
	cmpl	%edx, %ebx
	je	.L130
.L126:
	movl	%ebx, %ecx
	subl	%eax, %ecx
	leal	-1(%rcx), %esi
	cmpl	$2, %esi
	jbe	.L131
	salq	$3, %rax
	vmovupd	(%r14,%rax), %ymm4
	vaddpd	0(%r13,%rax), %ymm4, %ymm0
	vmovupd	%ymm0, (%r15,%rax)
	movl	%ecx, %eax
	andl	$-4, %eax
	addl	%eax, %edx
	andl	$3, %ecx
	je	.L130
.L131:
	movslq	%edx, %rax
	leal	1(%rdx), %ecx
	salq	$3, %rax
	vmovsd	(%r14,%rax), %xmm0
	vaddsd	0(%r13,%rax), %xmm0, %xmm0
	vmovsd	%xmm0, (%r15,%rax)
	cmpl	%ecx, %ebx
	jle	.L130
	addl	$2, %edx
	vmovsd	8(%r13,%rax), %xmm0
	vaddsd	8(%r14,%rax), %xmm0, %xmm0
	vmovsd	%xmm0, 8(%r15,%rax)
	cmpl	%ebx, %edx
	jge	.L130
	vmovsd	16(%r14,%rax), %xmm0
	vaddsd	16(%r13,%rax), %xmm0, %xmm0
	vmovsd	%xmm0, 16(%r15,%rax)
.L130:
	movq	-224(%rbp), %rdi
	vzeroupper
	call	_Znam@PLT
	movq	-232(%rbp), %r14
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, %r13
	salq	$3, %r14
	movq	%r14, %rdx
	call	memset@PLT
	cmpl	$6, -216(%rbp)
	jbe	.L317
	movl	%ebx, %edx
	xorl	%eax, %eax
	shrl	$3, %edx
	salq	$6, %rdx
	.p2align 4
	.p2align 3
.L135:
	vmovupd	(%r15,%rax), %zmm7
	vaddpd	(%r12,%rax), %zmm7, %zmm0
	vmovupd	%zmm0, 0(%r13,%rax)
	addq	$64, %rax
	cmpq	%rdx, %rax
	jne	.L135
	movl	%ebx, %edx
	andl	$-8, %edx
	movl	%edx, %eax
	cmpl	%edx, %ebx
	je	.L318
.L134:
	movl	%ebx, %ecx
	subl	%eax, %ecx
	leal	-1(%rcx), %esi
	cmpl	$2, %esi
	jbe	.L139
	salq	$3, %rax
	vmovupd	(%r15,%rax), %ymm3
	vaddpd	(%r12,%rax), %ymm3, %ymm0
	vmovupd	%ymm0, 0(%r13,%rax)
	movl	%ecx, %eax
	andl	$-4, %eax
	addl	%eax, %edx
	andl	$3, %ecx
	je	.L140
.L139:
	movslq	%edx, %rax
	leal	1(%rdx), %ecx
	salq	$3, %rax
	vmovsd	(%r15,%rax), %xmm0
	vaddsd	(%r12,%rax), %xmm0, %xmm0
	vmovsd	%xmm0, 0(%r13,%rax)
	cmpl	%ecx, %ebx
	jle	.L140
	addl	$2, %edx
	vmovsd	8(%r12,%rax), %xmm0
	vaddsd	8(%r15,%rax), %xmm0, %xmm0
	vmovsd	%xmm0, 8(%r13,%rax)
	cmpl	%ebx, %edx
	jge	.L140
	vmovsd	16(%r15,%rax), %xmm0
	vaddsd	16(%r12,%rax), %xmm0, %xmm0
	vmovsd	%xmm0, 16(%r13,%rax)
.L140:
	movq	-224(%rbp), %rdi
	vzeroupper
	call	_Znam@PLT
	xorl	%esi, %esi
	movq	%r14, %rdx
	movq	%rax, %rdi
	call	memset@PLT
	cmpl	$6, -216(%rbp)
	movq	%rax, %rcx
	jbe	.L319
.L138:
	movl	%ebx, %edx
	xorl	%eax, %eax
	shrl	$3, %edx
	salq	$6, %rdx
	.p2align 4
	.p2align 3
.L144:
	vmovupd	0(%r13,%rax), %zmm5
	vmulpd	.LC11(%rip), %zmm5, %zmm0
	vmovupd	%zmm0, (%rcx,%rax)
	addq	$64, %rax
	cmpq	%rdx, %rax
	jne	.L144
	movl	%ebx, %eax
	andl	$-8, %eax
	movl	%eax, %edx
	cmpl	%eax, %ebx
	je	.L311
.L143:
	movl	%ebx, %esi
	subl	%edx, %esi
	leal	-1(%rsi), %edi
	cmpl	$2, %edi
	jbe	.L147
	vmovupd	0(%r13,%rdx,8), %ymm2
	vmulpd	.LC13(%rip), %ymm2, %ymm0
	vmovupd	%ymm0, (%rcx,%rdx,8)
	movl	%esi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	andl	$3, %esi
	je	.L311
.L147:
	movslq	%eax, %rsi
	vmovsd	.LC12(%rip), %xmm2
	leaq	0(,%rsi,8), %rdx
	vmulsd	0(%r13,%rsi,8), %xmm2, %xmm0
	leal	1(%rax), %esi
	vmovsd	%xmm0, (%rcx,%rdx)
	cmpl	%esi, %ebx
	jle	.L311
	addl	$2, %eax
	vmulsd	8(%r13,%rdx), %xmm2, %xmm0
	vmovsd	%xmm0, 8(%rcx,%rdx)
	cmpl	%ebx, %eax
	jge	.L311
	vmulsd	16(%r13,%rdx), %xmm2, %xmm0
	vmovsd	%xmm0, 16(%rcx,%rdx)
	vzeroupper
.L133:
	movq	-208(%rbp), %rax
	movq	-248(%rbp), %rdi
	addq	$48, -200(%rbp)
	movl	%ebx, (%rdi,%rax,2)
	movq	%rcx, 8(%rdi,%rax,2)
	addq	$8, %rax
	movq	%rax, -208(%rbp)
	cmpq	$8000000, %rax
	jne	.L141
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	movq	-288(%rbp), %rbx
	movl	$1000000, %ecx
	leaq	_ZSt4cout(%rip), %rdi
	subq	%rbx, %rax
	cqto
	idivq	%rcx
	movq	%rax, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	xorl	%ebx, %ebx
	cmpq	$0, -184(%rbp)
	leaq	-186(%rbp), %r12
	jne	.L149
	jmp	.L153
	.p2align 4
	.p2align 3
.L320:
	movl	$1, %edx
	movq	%r12, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	incq	%rbx
	cmpq	-184(%rbp), %rbx
	jnb	.L153
.L149:
	movq	-248(%rbp), %rax
	leaq	_ZSt4cout(%rip), %rdi
	movq	15999992(%rax), %rax
	vmovsd	(%rax,%rbx,8), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	movq	(%rax), %rax
	movb	$32, -186(%rbp)
	movq	-24(%rax), %rax
	cmpq	$0, 16(%rdi,%rax)
	jne	.L320
	movl	$32, %esi
	call	_ZNSo3putEc@PLT
	incq	%rbx
	cmpq	-184(%rbp), %rbx
	jb	.L149
.L153:
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movq	-184(%rbp), %r15
	movabsq	$1152921504606846975, %rax
	movslq	%r15d, %r12
	movl	%r15d, %r13d
	cmpq	%r12, %rax
	jb	.L321
	salq	$3, %r12
	leal	-1(%r15), %eax
	movq	%r12, %rdi
	movq	-248(%rbp), %rbx
	leaq	8(,%rax,8), %r14
	call	_Znam@PLT
	movq	%rax, %rcx
	testl	%r15d, %r15d
	jne	.L157
	jmp	.L159
	.p2align 4
	.p2align 3
.L322:
	movq	%r12, %rdi
	call	_Znam@PLT
	movq	%rax, %rcx
.L157:
	movq	%r14, %rdx
	xorl	%esi, %esi
	movq	%rcx, %rdi
	addq	$16, %rbx
	call	memset@PLT
	movl	%r13d, -16(%rbx)
	movq	%rax, -8(%rbx)
	cmpq	%rbx, -264(%rbp)
	jne	.L322
.L158:
	movl	$7, %edx
	leaq	.LC14(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	movq	-248(%rbp), %rdi
	movq	-240(%rbp), %r8
	vmovsd	.LC12(%rip), %xmm4
	movq	-256(%rbp), %r9
	movq	-280(%rbp), %rsi
	movq	%rax, %rbx
	xorl	%ecx, %ecx
	vbroadcastsd	%xmm4, %ymm5
	vbroadcastsd	%xmm4, %zmm2
	.p2align 4
	.p2align 3
.L194:
	movslq	(%rsi), %r10
	movq	8(%rsi), %r11
	vmovsd	(%r8,%rcx), %xmm1
	testl	%r10d, %r10d
	jle	.L168
	leal	-1(%r10), %eax
	movq	8(%rdi,%rcx,2), %rdx
	movl	%r10d, %r13d
	cmpl	$2, %eax
	jbe	.L164
	leaq	8(%r11), %r14
	movq	%rdx, %r12
	subq	%r14, %r12
	cmpq	$48, %r12
	ja	.L323
.L164:
	salq	$3, %r10
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
.L172:
	vmovsd	(%r11,%rax), %xmm0
	vfmadd213sd	(%rdx,%rax), %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%rax)
	addq	$8, %rax
	cmpq	%r10, %rax
	jne	.L172
.L168:
	movslq	16(%rsi), %r10
	movq	24(%rsi), %r11
	vmovsd	(%r9,%rcx), %xmm1
	testl	%r10d, %r10d
	jle	.L163
	leal	-1(%r10), %eax
	movq	8(%rdi,%rcx,2), %rdx
	movl	%r10d, %r13d
	cmpl	$2, %eax
	jbe	.L176
	leaq	8(%r11), %r14
	movq	%rdx, %r12
	subq	%r14, %r12
	cmpq	$48, %r12
	ja	.L324
.L176:
	salq	$3, %r10
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
.L182:
	vmovsd	(%r11,%rax), %xmm0
	vfmadd213sd	(%rdx,%rax), %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%rax)
	addq	$8, %rax
	cmpq	%rax, %r10
	jne	.L182
.L163:
	movslq	32(%rsi), %r10
	movq	40(%rsi), %r11
	vmovsd	(%r8,%rcx), %xmm1
	testl	%r10d, %r10d
	jle	.L175
	leal	-1(%r10), %eax
	movq	8(%rdi,%rcx,2), %rdx
	movl	%r10d, %r13d
	cmpl	$2, %eax
	jbe	.L186
	leaq	8(%r11), %r14
	movq	%rdx, %r12
	subq	%r14, %r12
	cmpq	$48, %r12
	ja	.L325
.L186:
	salq	$3, %r10
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
.L192:
	vmovsd	(%r11,%rax), %xmm0
	vfmadd213sd	(%rdx,%rax), %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%rax)
	addq	$8, %rax
	cmpq	%rax, %r10
	jne	.L192
.L175:
	movl	(%rdi,%rcx,2), %r10d
	testl	%r10d, %r10d
	jle	.L185
	leal	-1(%r10), %eax
	movq	8(%rdi,%rcx,2), %r11
	cmpl	$6, %eax
	jbe	.L222
	movl	%r10d, %edx
	movq	%r11, %rax
	shrl	$3, %edx
	salq	$6, %rdx
	addq	%r11, %rdx
	.p2align 4
	.p2align 3
.L197:
	vmulpd	(%rax), %zmm2, %zmm0
	addq	$64, %rax
	vmovupd	%zmm0, -64(%rax)
	cmpq	%rdx, %rax
	jne	.L197
	movl	%r10d, %eax
	andl	$-8, %eax
	movl	%eax, %edx
	cmpl	%r10d, %eax
	je	.L185
.L196:
	movl	%r10d, %r12d
	subl	%edx, %r12d
	leal	-1(%r12), %r13d
	cmpl	$2, %r13d
	jbe	.L199
	leaq	(%r11,%rdx,8), %rdx
	vmulpd	(%rdx), %ymm5, %ymm0
	vmovupd	%ymm0, (%rdx)
	movl	%r12d, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	andl	$3, %r12d
	je	.L185
.L199:
	movslq	%eax, %rdx
	salq	$3, %rdx
	leaq	(%r11,%rdx), %r12
	vmulsd	(%r12), %xmm4, %xmm0
	vmovsd	%xmm0, (%r12)
	leal	1(%rax), %r12d
	cmpl	%r12d, %r10d
	jle	.L185
	leaq	8(%r11,%rdx), %r12
	addl	$2, %eax
	vmulsd	(%r12), %xmm4, %xmm0
	vmovsd	%xmm0, (%r12)
	cmpl	%eax, %r10d
	jle	.L185
	leaq	16(%r11,%rdx), %rax
	vmulsd	(%rax), %xmm4, %xmm0
	vmovsd	%xmm0, (%rax)
.L185:
	addq	$8, %rcx
	addq	$48, %rsi
	cmpq	$8000000, %rcx
	jne	.L194
	vzeroupper
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	movl	$1000000, %ecx
	leaq	_ZSt4cout(%rip), %rdi
	subq	%rbx, %rax
	cqto
	idivq	%rcx
	movq	%rax, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	xorl	%ebx, %ebx
	cmpq	$0, -184(%rbp)
	leaq	-185(%rbp), %r12
	jne	.L201
	jmp	.L205
	.p2align 4
	.p2align 3
.L326:
	movl	$1, %edx
	movq	%r12, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	incq	%rbx
	cmpq	-184(%rbp), %rbx
	jnb	.L205
.L201:
	movq	-248(%rbp), %rax
	leaq	_ZSt4cout(%rip), %rdi
	movq	15999992(%rax), %rax
	vmovsd	(%rax,%rbx,8), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	movq	(%rax), %rax
	movb	$32, -185(%rbp)
	movq	-24(%rax), %rax
	cmpq	$0, 16(%rdi,%rax)
	jne	.L326
	movl	$32, %esi
	call	_ZNSo3putEc@PLT
	incq	%rbx
	cmpq	-184(%rbp), %rbx
	jb	.L201
.L205:
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movq	-272(%rbp), %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-112(%rbp), %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-144(%rbp), %rdi
	call	_ZNSt6vectorI5PointSaIS0_EED1Ev
	leaq	-176(%rbp), %rdi
	call	_ZNSt6vectorI5PointSaIS0_EED1Ev
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L327
	addq	$256, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4
	.p2align 3
.L311:
	.cfi_restore_state
	vzeroupper
	jmp	.L133
	.p2align 4
	.p2align 3
.L308:
	vzeroupper
	jmp	.L105
	.p2align 4
	.p2align 3
.L305:
	vzeroupper
	jmp	.L93
	.p2align 4
	.p2align 3
.L315:
	movq	-200(%rbp), %rax
	movl	(%rax), %esi
	testl	%esi, %esi
	jg	.L116
	.p2align 4
	.p2align 3
.L117:
	xorl	%edi, %edi
	call	_Znam@PLT
	movq	%rax, %rcx
	jmp	.L133
	.p2align 4
	.p2align 3
.L318:
	movq	-224(%rbp), %rdi
	vzeroupper
	call	_Znam@PLT
	movq	%r14, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	%rax, %rcx
	jmp	.L138
	.p2align 4
	.p2align 3
.L316:
	movq	-224(%rbp), %rdi
	call	_Znam@PLT
	movq	%rax, %r15
	movq	-232(%rbp), %rax
	jmp	.L119
.L319:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L143
.L317:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L134
.L215:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L126
.L213:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L110
.L212:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L98
.L214:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L121
.L328:
	xorl	%edi, %edi
	call	_Znam@PLT
.LEHE4:
	movq	%rax, %rcx
.L159:
	xorl	%eax, %eax
	movq	%rcx, 8(%rbx)
	addq	$16, %rbx
	movl	%eax, -16(%rbx)
	cmpq	%rbx, -264(%rbp)
	jne	.L328
	jmp	.L158
	.p2align 4
	.p2align 3
.L323:
	cmpl	$6, %eax
	jbe	.L219
	movl	%r10d, %r12d
	vbroadcastsd	%xmm1, %zmm3
	xorl	%eax, %eax
	shrl	$3, %r12d
	salq	$6, %r12
	.p2align 4
	.p2align 3
.L166:
	vmovupd	(%r11,%rax), %zmm0
	vfmadd213pd	(%rdx,%rax), %zmm3, %zmm0
	vmovupd	%zmm0, (%rdx,%rax)
	addq	$64, %rax
	cmpq	%rax, %r12
	jne	.L166
	movl	%r10d, %r12d
	andl	$-8, %r12d
	movl	%r12d, %eax
	cmpl	%r12d, %r10d
	je	.L168
	movl	%r10d, %r13d
	subl	%r12d, %r13d
	leal	-1(%r13), %r14d
	cmpl	$2, %r14d
	jbe	.L170
.L165:
	salq	$3, %rax
	vbroadcastsd	%xmm1, %ymm0
	leaq	(%rdx,%rax), %r14
	vmovupd	(%r14), %ymm3
	vfmadd132pd	(%r11,%rax), %ymm3, %ymm0
	movl	%r13d, %eax
	vmovupd	%ymm0, (%r14)
	andl	$-4, %eax
	addl	%eax, %r12d
	andl	$3, %r13d
	je	.L168
.L170:
	movslq	%r12d, %rax
	salq	$3, %rax
	leaq	(%rdx,%rax), %r13
	vmovsd	(%r11,%rax), %xmm0
	vfmadd213sd	0(%r13), %xmm1, %xmm0
	vmovsd	%xmm0, 0(%r13)
	leal	1(%r12), %r13d
	cmpl	%r13d, %r10d
	jle	.L168
	leaq	8(%rdx,%rax), %r13
	addl	$2, %r12d
	vmovsd	8(%r11,%rax), %xmm0
	vfmadd213sd	0(%r13), %xmm1, %xmm0
	vmovsd	%xmm0, 0(%r13)
	cmpl	%r12d, %r10d
	jle	.L168
	leaq	16(%rdx,%rax), %rdx
	vmovsd	(%rdx), %xmm7
	vfmadd132sd	16(%r11,%rax), %xmm7, %xmm1
	vmovsd	%xmm1, (%rdx)
	jmp	.L168
	.p2align 4
	.p2align 3
.L324:
	cmpl	$6, %eax
	jbe	.L220
	movl	%r10d, %r12d
	vbroadcastsd	%xmm1, %zmm3
	xorl	%eax, %eax
	shrl	$3, %r12d
	salq	$6, %r12
	.p2align 4
	.p2align 3
.L178:
	vmovupd	(%r11,%rax), %zmm0
	vfmadd213pd	(%rdx,%rax), %zmm3, %zmm0
	vmovupd	%zmm0, (%rdx,%rax)
	addq	$64, %rax
	cmpq	%rax, %r12
	jne	.L178
	movl	%r10d, %r12d
	andl	$-8, %r12d
	movl	%r12d, %eax
	cmpl	%r12d, %r10d
	je	.L163
	movl	%r10d, %r13d
	subl	%r12d, %r13d
	leal	-1(%r13), %r14d
	cmpl	$2, %r14d
	jbe	.L180
.L177:
	salq	$3, %rax
	vbroadcastsd	%xmm1, %ymm0
	leaq	(%rdx,%rax), %r14
	vmovupd	(%r14), %ymm3
	vfmadd132pd	(%r11,%rax), %ymm3, %ymm0
	movl	%r13d, %eax
	vmovupd	%ymm0, (%r14)
	andl	$-4, %eax
	addl	%eax, %r12d
	andl	$3, %r13d
	je	.L163
.L180:
	movslq	%r12d, %rax
	salq	$3, %rax
	leaq	(%rdx,%rax), %r13
	vmovsd	(%r11,%rax), %xmm0
	vfmadd213sd	0(%r13), %xmm1, %xmm0
	vmovsd	%xmm0, 0(%r13)
	leal	1(%r12), %r13d
	cmpl	%r13d, %r10d
	jle	.L163
	leaq	8(%rdx,%rax), %r13
	addl	$2, %r12d
	vmovsd	8(%r11,%rax), %xmm0
	vfmadd213sd	0(%r13), %xmm1, %xmm0
	vmovsd	%xmm0, 0(%r13)
	cmpl	%r12d, %r10d
	jle	.L163
	leaq	16(%rdx,%rax), %rdx
	vmovsd	(%rdx), %xmm3
	vfmadd132sd	16(%r11,%rax), %xmm3, %xmm1
	vmovsd	%xmm1, (%rdx)
	jmp	.L163
	.p2align 4
	.p2align 3
.L325:
	cmpl	$6, %eax
	jbe	.L221
	movl	%r10d, %r12d
	vbroadcastsd	%xmm1, %zmm3
	xorl	%eax, %eax
	shrl	$3, %r12d
	salq	$6, %r12
	.p2align 4
	.p2align 3
.L188:
	vmovupd	(%r11,%rax), %zmm0
	vfmadd213pd	(%rdx,%rax), %zmm3, %zmm0
	vmovupd	%zmm0, (%rdx,%rax)
	addq	$64, %rax
	cmpq	%rax, %r12
	jne	.L188
	movl	%r10d, %r12d
	andl	$-8, %r12d
	movl	%r12d, %eax
	cmpl	%r10d, %r12d
	je	.L175
	movl	%r10d, %r13d
	subl	%r12d, %r13d
	leal	-1(%r13), %r14d
	cmpl	$2, %r14d
	jbe	.L190
.L187:
	salq	$3, %rax
	vbroadcastsd	%xmm1, %ymm0
	leaq	(%rdx,%rax), %r14
	vmovupd	(%r14), %ymm6
	vfmadd132pd	(%r11,%rax), %ymm6, %ymm0
	movl	%r13d, %eax
	vmovupd	%ymm0, (%r14)
	andl	$-4, %eax
	addl	%eax, %r12d
	andl	$3, %r13d
	je	.L175
.L190:
	movslq	%r12d, %rax
	salq	$3, %rax
	leaq	(%rdx,%rax), %r13
	vmovsd	(%r11,%rax), %xmm0
	vfmadd213sd	0(%r13), %xmm1, %xmm0
	vmovsd	%xmm0, 0(%r13)
	leal	1(%r12), %r13d
	cmpl	%r13d, %r10d
	jle	.L175
	leaq	8(%rdx,%rax), %r13
	addl	$2, %r12d
	vmovsd	8(%r11,%rax), %xmm0
	vfmadd213sd	0(%r13), %xmm1, %xmm0
	vmovsd	%xmm0, 0(%r13)
	cmpl	%r12d, %r10d
	jle	.L175
	leaq	16(%rdx,%rax), %rdx
	vmovsd	(%rdx), %xmm7
	vfmadd132sd	16(%r11,%rax), %xmm7, %xmm1
	vmovsd	%xmm1, (%rdx)
	jmp	.L175
.L222:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L196
.L221:
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.L187
.L220:
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	jmp	.L177
.L219:
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	jmp	.L165
.L327:
	call	__stack_chk_fail@PLT
.L321:
	jmp	.L292
.L314:
	jmp	.L291
.L288:
	endbr64
	jmp	.L289
.L313:
	jmp	.L290
.L225:
	endbr64
	movq	%rax, %rbx
	vzeroupper
	jmp	.L208
.L226:
	endbr64
	movq	%rax, %rbx
	vzeroupper
	jmp	.L207
.L224:
	endbr64
	movq	%rax, %rbx
	vzeroupper
	jmp	.L209
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA4885:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4885-.LLSDACSB4885
.LLSDACSB4885:
	.uleb128 .LEHB0-.LFB4885
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB4885
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L224-.LFB4885
	.uleb128 0
	.uleb128 .LEHB2-.LFB4885
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L225-.LFB4885
	.uleb128 0
	.uleb128 .LEHB3-.LFB4885
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L226-.LFB4885
	.uleb128 0
	.uleb128 .LEHB4-.LFB4885
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L288-.LFB4885
	.uleb128 0
.LLSDACSE4885:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC4885
	.type	main.cold, @function
main.cold:
.LFSB4885:
.L292:
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	.cfi_escape 0x10,0x6,0x2,0x76,0
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L329
.LEHB5:
	call	__cxa_throw_bad_array_new_length@PLT
.L291:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L330
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE5:
.L329:
	call	__stack_chk_fail@PLT
.L330:
	call	__stack_chk_fail@PLT
.L227:
	endbr64
.L289:
	movq	-272(%rbp), %rdi
	movq	%rax, %rbx
	vzeroupper
	call	_ZNSt6vectorIdSaIdEED1Ev
.L207:
	leaq	-112(%rbp), %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L208:
	leaq	-144(%rbp), %rdi
	call	_ZNSt6vectorI5PointSaIS0_EED1Ev
.L209:
	leaq	-176(%rbp), %rdi
	call	_ZNSt6vectorI5PointSaIS0_EED1Ev
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L331
	movq	%rbx, %rdi
.LEHB6:
	call	_Unwind_Resume@PLT
.LEHE6:
.L290:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L332
.LEHB7:
	call	__cxa_throw_bad_array_new_length@PLT
.L331:
	call	__stack_chk_fail@PLT
.L332:
	call	__stack_chk_fail@PLT
.L90:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L333
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE7:
.L333:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE4885:
	.section	.gcc_except_table
.LLSDAC4885:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC4885-.LLSDACSBC4885
.LLSDACSBC4885:
	.uleb128 .LEHB5-.LCOLDB15
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L227-.LCOLDB15
	.uleb128 0
	.uleb128 .LEHB6-.LCOLDB15
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LCOLDB15
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L227-.LCOLDB15
	.uleb128 0
.LLSDACSEC4885:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE15:
	.section	.text.startup
.LHOTE15:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	-4
	.long	1072693247
	.align 8
.LC2:
	.long	-2
	.long	1072693247
	.align 8
.LC3:
	.long	-8388608
	.long	1105199103
	.align 8
.LC4:
	.long	-16777216
	.long	1137704959
	.align 8
.LC5:
	.long	0
	.long	1072693248
	.align 8
.LC6:
	.long	0
	.long	1073741824
	.align 8
.LC7:
	.long	0
	.long	-1074790400
	.align 8
.LC8:
	.long	0
	.long	-1073741824
	.section	.rodata
	.align 64
.LC11:
	.long	1431655765
	.long	1070945621
	.long	1431655765
	.long	1070945621
	.long	1431655765
	.long	1070945621
	.long	1431655765
	.long	1070945621
	.long	1431655765
	.long	1070945621
	.long	1431655765
	.long	1070945621
	.long	1431655765
	.long	1070945621
	.long	1431655765
	.long	1070945621
	.set	.LC12,.LC11
	.set	.LC13,.LC11
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
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
