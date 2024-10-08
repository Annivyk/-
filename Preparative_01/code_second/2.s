        
        .option nopic
        .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
        .attribute unaligned_access, 0
        .attribute stack_align, 16
        .section        .rodata
        .align  3
string1:
        .string "%f %f %d"
string2:
        .string "Result_a is %f\n"
        .text
        .align 1
        .global main
        .type main, @function
main:
        addi sp,sp,-32
        sd   ra,24(sp)
        sd   s0,16(sp)
        lui  a5,%hi(string1)
        addi a0,a5,%lo(string1)
        addi s0,sp,0
        addi a1,s0,12
        addi a2,s0,8
        addi a3,s0,4
        call __isoc99_scanf
        lw  a4,0(s0)
        lw  a5,4(s0)
        j    .L2
.L3:
        addi   a4,a4,1
        flw    fa0,12(s0)
        flw    fa1,8(s0)
        fadd.s fa0,fa0,fa1
        fsw    fa0,12(s0)
.L2:
        blt a4,a5,.L3
        flw  fa5,12(s0)
        fcvt.d.s    fa5,fa5
        fmv.x.d a1,fa5
        lui a5,%hi(string2)
        addi a0,a5,%lo(string2)
        call printf
        li  a5,0
        li  a0,0
        li  a1,0
        li  a2,0
        li  a3,0
        li  a4,0
        ld  ra,24(sp)
        ld  s0,16(sp)
        addi sp,sp,32
        jr  ra
        .size main, .-main
        .ident "GCC: () 12.2.0"
        .section .note.GNU-stack,"",@progbits

