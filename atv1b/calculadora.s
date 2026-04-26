	.attribute	4, 16
	.attribute	5, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0_zmmul1p0_zaamo1p0_zalrsc1p0"
	.file	"calculadora.c"
	.text
	.globl	read                            # -- Begin function read
	.p2align	2
	.type	read,@function
read:                                   # @read
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 32
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a3, -12(s0)
	lw	a4, -16(s0)
	lw	a5, -20(s0)
	#APP
	mv	a0, a3
	mv	a1, a4
	mv	a2, a5
	li	a7, 63
	ecall
	mv	a3, a0
	#NO_APP
	sw	a3, -28(s0)                     # 4-byte Folded Spill
	lw	a0, -28(s0)                     # 4-byte Folded Reload
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	read, .Lfunc_end0-read
                                        # -- End function
	.globl	write                           # -- Begin function write
	.p2align	2
	.type	write,@function
write:                                  # @write
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 32
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a3, -12(s0)
	lw	a4, -16(s0)
	lw	a5, -20(s0)
	#APP
	mv	a0, a3
	mv	a1, a4
	mv	a2, a5
	li	a7, 64
	ecall
	#NO_APP
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	write, .Lfunc_end1-write
                                        # -- End function
	.globl	exit                            # -- Begin function exit
	.p2align	2
	.type	exit,@function
exit:                                   # @exit
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a1, -12(s0)
	#APP
	mv	a0, a1
	li	a7, 93
	ecall
	#NO_APP
.Lfunc_end2:
	.size	exit, .Lfunc_end2-exit
                                        # -- End function
	.globl	_start                          # -- Begin function _start
	.p2align	2
	.type	_start,@function
_start:                                 # @_start
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	call	main
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	call	exit
.Lfunc_end3:
	.size	_start, .Lfunc_end3-_start
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi	sp, sp, -48
	sw	ra, 44(sp)                      # 4-byte Folded Spill
	sw	s0, 40(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 48
	li	a0, 0
	sw	a0, -40(s0)                     # 4-byte Folded Spill
	sw	a0, -12(s0)
	addi	a1, s0, -18
	li	a2, 5
	call	read
                                        # kill: def $x11 killed $x10
	lw	a0, -40(s0)                     # 4-byte Folded Reload
	lbu	a1, -18(s0)
	addi	a1, a1, -48
	sw	a1, -24(s0)
	lbu	a1, -16(s0)
	sb	a1, -25(s0)
	lbu	a1, -14(s0)
	addi	a1, a1, -48
	sw	a1, -32(s0)
	sw	a0, -36(s0)
	lbu	a0, -25(s0)
	li	a1, 43
	bne	a0, a1, .LBB4_2
	j	.LBB4_1
.LBB4_1:
	lw	a0, -24(s0)
	lw	a1, -32(s0)
	add	a0, a0, a1
	sw	a0, -36(s0)
	j	.LBB4_8
.LBB4_2:
	lbu	a0, -25(s0)
	li	a1, 45
	bne	a0, a1, .LBB4_4
	j	.LBB4_3
.LBB4_3:
	lw	a0, -24(s0)
	lw	a1, -32(s0)
	sub	a0, a0, a1
	sw	a0, -36(s0)
	j	.LBB4_7
.LBB4_4:
	lbu	a0, -25(s0)
	li	a1, 42
	bne	a0, a1, .LBB4_6
	j	.LBB4_5
.LBB4_5:
	lw	a0, -24(s0)
	lw	a1, -32(s0)
	mul	a0, a0, a1
	sw	a0, -36(s0)
	j	.LBB4_6
.LBB4_6:
	j	.LBB4_7
.LBB4_7:
	j	.LBB4_8
.LBB4_8:
	lw	a0, -36(s0)
	addi	a0, a0, 48
	sb	a0, -20(s0)
	li	a0, 10
	sb	a0, -19(s0)
	li	a0, 1
	addi	a1, s0, -20
	li	a2, 2
	call	write
	li	a0, 0
	lw	ra, 44(sp)                      # 4-byte Folded Reload
	lw	s0, 40(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
                                        # -- End function
	.ident	"Homebrew clang version 22.1.4"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read
	.addrsig_sym write
	.addrsig_sym exit
	.addrsig_sym main
