# mark_description "Intel(R) C Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 14.0.0.080 Build 2013072";
# mark_description "8";
# mark_description "-O2 -mavx -S -masm=intel";
	.intel_syntax noprefix
	.file "high_level.c"
	.text
..TXTST0:
# -- Begin  setInt
# mark_begin;
       .align    16,0x90
	.globl setInt
setInt:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
..B1.1:                         # Preds ..B1.0
..___tag_value_setInt.1:                                        #17.45
        mov       DWORD PTR [rdi], 0                            #18.4
        mov       DWORD PTR [rsi], 16                           #19.4
        mov       DWORD PTR [rdx], 32                           #20.4
        ret                                                     #21.1
        .align    16,0x90
..___tag_value_setInt.3:                                        #
                                # LOE
# mark_end;
	.type	setInt,@function
	.size	setInt,.-setInt
	.data
# -- End  setInt
	.text
# -- Begin  computeInt
# mark_begin;
       .align    16,0x90
	.globl computeInt
computeInt:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
..B2.1:                         # Preds ..B2.0
..___tag_value_computeInt.4:                                    #23.49
        mov       eax, DWORD PTR [rdi]                          #24.13
        imul      eax, DWORD PTR [rsi]                          #24.22
        add       DWORD PTR [rdx], eax                          #24.4
        ret                                                     #25.1
        .align    16,0x90
..___tag_value_computeInt.6:                                    #
                                # LOE
# mark_end;
	.type	computeInt,@function
	.size	computeInt,.-computeInt
	.data
# -- End  computeInt
	.text
# -- Begin  setDouble
# mark_begin;
       .align    16,0x90
	.globl setDouble
setDouble:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
..B3.1:                         # Preds ..B3.0
..___tag_value_setDouble.7:                                     #27.57
        mov       rax, 0x3ff0000000000000                       #28.4
        mov       QWORD PTR [rdi], rax                          #28.4
        mov       rcx, 0x4000000000000000                       #29.10
        mov       QWORD PTR [rsi], rcx                          #29.4
        mov       r8, 0x4008000000000000                        #30.10
        mov       QWORD PTR [rdx], r8                           #30.4
        ret                                                     #31.1
        .align    16,0x90
..___tag_value_setDouble.9:                                     #
                                # LOE
# mark_end;
	.type	setDouble,@function
	.size	setDouble,.-setDouble
	.data
# -- End  setDouble
	.text
# -- Begin  computeDouble
# mark_begin;
       .align    16,0x90
	.globl computeDouble
computeDouble:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
..B4.1:                         # Preds ..B4.0
..___tag_value_computeDouble.10:                                #33.61
        vmovsd    xmm0, QWORD PTR [rdi]                         #34.13
        vmulsd    xmm1, xmm0, QWORD PTR [rsi]                   #34.22
        vaddsd    xmm2, xmm1, QWORD PTR [rdx]                   #34.4
        vmovsd    QWORD PTR [rdx], xmm2                         #34.4
        ret                                                     #35.1
        .align    16,0x90
..___tag_value_computeDouble.12:                                #
                                # LOE
# mark_end;
	.type	computeDouble,@function
	.size	computeDouble,.-computeDouble
	.data
# -- End  computeDouble
	.section .rodata, "a"
	.align 8
	.align 8
.L_2il0floatpacket.9:
	.long	0x00000000,0x40000000
	.type	.L_2il0floatpacket.9,@object
	.size	.L_2il0floatpacket.9,8
	.align 8
.L_2il0floatpacket.10:
	.long	0x00000000,0x40080000
	.type	.L_2il0floatpacket.10,@object
	.size	.L_2il0floatpacket.10,8
	.align 8
.L_2il0floatpacket.11:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.11,@object
	.size	.L_2il0floatpacket.11,8
	.data
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
	.4byte 0x00000014
	.8byte 0x7801000100000000
	.8byte 0x0000019008070c10
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x0000001c
	.8byte ..___tag_value_setInt.1
	.8byte ..___tag_value_setInt.3-..___tag_value_setInt.1
	.4byte 0x00000014
	.4byte 0x00000034
	.8byte ..___tag_value_computeInt.4
	.8byte ..___tag_value_computeInt.6-..___tag_value_computeInt.4
	.4byte 0x00000014
	.4byte 0x0000004c
	.8byte ..___tag_value_setDouble.7
	.8byte ..___tag_value_setDouble.9-..___tag_value_setDouble.7
	.4byte 0x00000014
	.4byte 0x00000064
	.8byte ..___tag_value_computeDouble.10
	.8byte ..___tag_value_computeDouble.12-..___tag_value_computeDouble.10
# End
