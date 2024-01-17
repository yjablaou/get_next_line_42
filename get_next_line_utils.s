	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_ft_strchr              ## -- Begin function ft_strchr
	.p2align	4, 0x90
_ft_strchr:                             ## @ft_strchr
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$0, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB0_2
## %bb.1:
	movl	$0, -4(%rbp)
	jmp	LBB0_8
LBB0_2:
	jmp	LBB0_3
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	cmpb	$0, (%rax,%rcx)
	je	LBB0_7
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	movl	-20(%rbp), %esi
                                        ## kill: def $sil killed $sil killed $esi
	movsbl	%sil, %edi
	cmpl	%edi, %edx
	jne	LBB0_6
## %bb.5:
	movl	$1, -4(%rbp)
	jmp	LBB0_8
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB0_3
LBB0_7:
	movl	$0, -4(%rbp)
LBB0_8:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_strjoin                ## -- Begin function strjoin
	.p2align	4, 0x90
_strjoin:                               ## @strjoin
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB1_5
## %bb.1:
	cmpq	$0, -24(%rbp)
	je	LBB1_5
## %bb.2:
	movq	-24(%rbp), %rdi
	callq	_ft_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	LBB1_4
## %bb.3:
	movq	$0, -8(%rbp)
	jmp	LBB1_8
LBB1_4:
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_ft_strcpy
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB1_8
LBB1_5:
	movq	-16(%rbp), %rdi
	callq	_ft_strlen
	movq	-24(%rbp), %rdi
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	_ft_strlen
	movq	-40(%rbp), %rcx         ## 8-byte Reload
	addq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	LBB1_7
## %bb.6:
	movq	$0, -8(%rbp)
	jmp	LBB1_8
LBB1_7:
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ft_strcpy
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_ft_strcat
	movq	-16(%rbp), %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB1_8:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_ft_strlen              ## -- Begin function ft_strlen
	.p2align	4, 0x90
_ft_strlen:                             ## @ft_strlen
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB2_2
## %bb.1:
	movq	$0, -8(%rbp)
	jmp	LBB2_6
LBB2_2:
	movq	$0, -24(%rbp)
LBB2_3:                                 ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpb	$0, (%rax,%rcx)
	je	LBB2_5
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	LBB2_3
LBB2_5:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB2_6:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_ft_strcpy              ## -- Begin function ft_strcpy
	.p2align	4, 0x90
_ft_strcpy:                             ## @ft_strcpy
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$0, %edx
	je	LBB3_3
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	LBB3_1
LBB3_3:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_ft_strcat              ## -- Begin function ft_strcat
	.p2align	4, 0x90
_ft_strcat:                             ## @ft_strcat
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	LBB4_2
## %bb.1:
	cmpq	$0, -16(%rbp)
	jne	LBB4_3
LBB4_2:
	jmp	LBB4_7
LBB4_3:
	movq	-8(%rbp), %rdi
	callq	_ft_strlen
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ft_strlen
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
LBB4_4:                                 ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$0, %edx
	je	LBB4_6
## %bb.5:                               ##   in Loop: Header=BB4_4 Depth=1
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -48(%rbp)
	movb	(%rax,%rcx), %sil
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%sil, (%rax,%rcx)
	jmp	LBB4_4
LBB4_6:
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	$0, (%rax,%rcx)
LBB4_7:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
