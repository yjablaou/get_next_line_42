	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_check_line             ## -- Begin function check_line
	.p2align	4, 0x90
_check_line:                            ## @check_line
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$0, %edx
	je	LBB0_2
## %bb.1:
	cmpq	$0, -16(%rbp)
	jne	LBB0_3
LBB0_2:
	movq	$0, -8(%rbp)
	jmp	LBB0_14
LBB0_3:
	jmp	LBB0_4
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-16(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	movsbl	(%rcx,%rdx), %esi
	cmpl	$10, %esi
	movb	%al, -33(%rbp)          ## 1-byte Spill
	je	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=1
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$0, %edx
	setne	%sil
	movb	%sil, -33(%rbp)         ## 1-byte Spill
LBB0_6:                                 ##   in Loop: Header=BB0_4 Depth=1
	movb	-33(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_7
	jmp	LBB0_8
LBB0_7:                                 ##   in Loop: Header=BB0_4 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_4
LBB0_8:
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$10, %edx
	jne	LBB0_10
## %bb.9:
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
LBB0_10:
	movq	-16(%rbp), %rdi
	callq	_ft_strlen
	movslq	-28(%rbp), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -24(%rbp)
LBB0_11:                                ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$0, %edx
	je	LBB0_13
## %bb.12:                              ##   in Loop: Header=BB0_11 Depth=1
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	movl	-32(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -32(%rbp)
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -28(%rbp)
	jmp	LBB0_11
LBB0_13:
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	movq	-16(%rbp), %rdi
	callq	_free
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB0_14:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_extract_line           ## -- Begin function extract_line
	.p2align	4, 0x90
_extract_line:                          ## @extract_line
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$0, %edx
	je	LBB1_2
## %bb.1:
	cmpq	$0, -16(%rbp)
	jne	LBB1_3
LBB1_2:
	movq	$0, -8(%rbp)
	jmp	LBB1_14
LBB1_3:
	jmp	LBB1_4
LBB1_4:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movsbl	(%rcx,%rdx), %esi
	cmpl	$0, %esi
	movb	%al, -37(%rbp)          ## 1-byte Spill
	je	LBB1_6
## %bb.5:                               ##   in Loop: Header=BB1_4 Depth=1
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$10, %edx
	setne	%sil
	movb	%sil, -37(%rbp)         ## 1-byte Spill
LBB1_6:                                 ##   in Loop: Header=BB1_4 Depth=1
	movb	-37(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB1_7
	jmp	LBB1_8
LBB1_7:                                 ##   in Loop: Header=BB1_4 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB1_4
LBB1_8:
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$10, %edx
	jne	LBB1_10
## %bb.9:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
LBB1_10:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	_malloc
	movq	%rax, -32(%rbp)
	movl	$-1, -36(%rbp)
LBB1_11:                                ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	cmpl	-20(%rbp), %eax
	jge	LBB1_13
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=1
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	jmp	LBB1_11
LBB1_13:
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB1_14:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_readfd                 ## -- Begin function readfd
	.p2align	4, 0x90
_readfd:                                ## @readfd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	$1, -40(%rbp)
	movl	$43, %edi
	callq	_malloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	LBB2_2
## %bb.1:
	movq	$0, -8(%rbp)
	jmp	LBB2_12
LBB2_2:
	jmp	LBB2_3
LBB2_3:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpq	$0, -40(%rbp)
	movb	%al, -41(%rbp)          ## 1-byte Spill
	je	LBB2_5
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$10, %esi
	callq	_ft_strchr
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -41(%rbp)          ## 1-byte Spill
LBB2_5:                                 ##   in Loop: Header=BB2_3 Depth=1
	movb	-41(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB2_6
	jmp	LBB2_11
LBB2_6:                                 ##   in Loop: Header=BB2_3 Depth=1
	movl	-20(%rbp), %edi
	movq	-32(%rbp), %rsi
	movl	$42, %edx
	callq	_read
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	cmpq	$0, -40(%rbp)
	jae	LBB2_8
## %bb.7:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_free
	movq	-32(%rbp), %rdi
	callq	_free
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, -8(%rbp)
	jmp	LBB2_12
LBB2_8:                                 ##   in Loop: Header=BB2_3 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	_strjoin
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	LBB2_10
## %bb.9:
	movq	-32(%rbp), %rdi
	callq	_free
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_free
	movq	$0, -8(%rbp)
	jmp	LBB2_12
LBB2_10:                                ##   in Loop: Header=BB2_3 Depth=1
	jmp	LBB2_3
LBB2_11:
	movq	-32(%rbp), %rdi
	callq	_free
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_extract_line
	movq	%rax, -8(%rbp)
LBB2_12:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_get_next_line          ## -- Begin function get_next_line
	.p2align	4, 0x90
_get_next_line:                         ## @get_next_line
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	_read
	cmpq	$0, %rax
	jl	LBB3_2
## %bb.1:
	cmpl	$0, -12(%rbp)
	jge	LBB3_3
LBB3_2:
	movq	$0, -8(%rbp)
	jmp	LBB3_6
LBB3_3:
	movl	-12(%rbp), %esi
	leaq	_get_next_line.rest(%rip), %rdi
	callq	_readfd
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	LBB3_5
## %bb.4:
	movq	_get_next_line.rest(%rip), %rdi
	callq	_free
	movq	$0, _get_next_line.rest(%rip)
	movq	$0, -8(%rbp)
	jmp	LBB3_6
LBB3_5:
	movq	_get_next_line.rest(%rip), %rdi
	callq	_check_line
	movq	%rax, _get_next_line.rest(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB3_6:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.zerofill __DATA,__bss,_get_next_line.rest,8,3 ## @get_next_line.rest
.subsections_via_symbols
