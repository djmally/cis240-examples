	.text
	.file	"main.c"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_4
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str, %rdi
	movl	-20(%rbp), %esi
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	movb	$0, %al
	callq	printf
	movl	%eax, -24(%rbp)         # 4-byte Spill
# BB#3:                                 #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$42, %edi
	callq	do_something
	movl	$100, %edi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	do_something
	movl	$4294967271, %edi       # imm = 0xFFFFFFE7
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	do_something
	movl	$1024, %edi             # imm = 0x400
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	do_something
	movl	-4(%rbp), %edi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Ltmp3:
	.size	main, .Ltmp3-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Argument %d: %s\n"
	.size	.L.str, 17


	.ident	"clang version 3.6.2 (tags/RELEASE_362/final)"
	.section	".note.GNU-stack","",@progbits
