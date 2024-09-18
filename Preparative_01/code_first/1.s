	.file	"1.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%f %f %d"
	.align	3
.LC1:
	.string	"Result_a is %f\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32
	addi	a3,s0,-32
	addi	a4,s0,-28
	addi	a5,s0,-24
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	__isoc99_scanf
	j	.L2
.L3:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
	flw	fa4,-24(s0)
	flw	fa5,-28(s0)
	fadd.s	fa5,fa4,fa5
	fsw	fa5,-24(s0)
.L2:
	lw	a4,-32(s0)
	lw	a5,-20(s0)
	sext.w	a5,a5
	blt	a5,a4,.L3
	flw	fa5,-24(s0)
	fcvt.d.s	fa5,fa5
	fmv.x.d	a1,fa5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	li	a5,0
	mv	a0,a5
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: () 12.2.0"
	.section	.note.GNU-stack,"",@progbits
