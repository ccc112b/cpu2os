	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_sum                    ## -- Begin function sum
	.p2align	4, 0x90
_sum:                                   ## @sum
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB0_1
LBB0_4:
	movl	-8(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
