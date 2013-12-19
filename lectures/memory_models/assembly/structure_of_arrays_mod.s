# mark_description "Intel(R) C++ Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 13.1.0.146 Build 20130";
# mark_description "121";
# mark_description "-O2 -mavx -S -masm=intel";
	.intel_syntax noprefix
	.file "structure_of_arrays.cpp"
	.text
..TXTST0:
# -- Begin  main
# mark_begin;
       .align    16,0x90
	.globl main
main:
..B1.1:                         # Preds ..B1.0
..___tag_value_main.1:                                          #33.12
        push      rbp                                           #33.12
..___tag_value_main.3:                                          #
        mov       rbp, rsp                                      #33.12
..___tag_value_main.4:                                          #
        and       rsp, -128                                     #33.12
        sub       rsp, 192000                                   #33.12
        mov       edi, 3                                        #33.12
..___tag_value_main.6:                                          #33.12
        call      __intel_new_proc_init                         #33.12
..___tag_value_main.7:                                          #
                                # LOE rbx r12 r13 r14 r15
..B1.10:                        # Preds ..B1.1
        vstmxcsr  DWORD PTR [rsp]                               #33.12
        mov       eax, 4                                        #38.3
        or        DWORD PTR [rsp], 32832                        #33.12
        vldmxcsr  DWORD PTR [rsp]                               #33.12
        vmovd     xmm0, eax                                     #38.3
        xor       eax, eax                                      #38.3
        vpshufd   xmm3, xmm0, 0                                 #38.3
        vmovdqu   xmm2, XMMWORD PTR .L_2il0floatpacket.6[rip]   #38.3
        vxorpd    ymm1, ymm1, ymm1                              #39.41
        vmovupd   ymm0, YMMWORD PTR .L_2il0floatpacket.7[rip]   #43.54
        .align    16,0x90
                                # LOE rax rbx r12 r13 r14 r15 xmm2 xmm3 ymm0 ymm1
..B1.2:                         # Preds ..B1.2 ..B1.10
        vcvtdq2pd ymm4, xmm2                                    #43.41
        vpaddd    xmm2, xmm2, xmm3                              #45.5
        vmovupd   YMMWORD PTR [rsp+rax*8], ymm1                 #39.5
        vmovupd   YMMWORD PTR [32000+rsp+rax*8], ymm1           #40.5
        vmovupd   YMMWORD PTR [64000+rsp+rax*8], ymm1           #41.5
        vmulpd    ymm5, ymm0, ymm4                              #43.54
        vmovupd   YMMWORD PTR [96000+rsp+rax*8], ymm5           #43.5
        vmovupd   YMMWORD PTR [128000+rsp+rax*8], ymm5          #44.5
        vmovupd   YMMWORD PTR [160000+rsp+rax*8], ymm5          #45.5
        add       rax, 4                                        #38.3
        cmp       rax, 4000                                     #38.3
        jb        ..B1.2        # Prob 99%                      #38.3
                                # LOE rax rbx r12 r13 r14 r15 xmm2 xmm3 ymm0 ymm1
..B1.3:                         # Preds ..B1.2
        vmovupd   ymm1, YMMWORD PTR .L_2il0floatpacket.8[rip]   #49.19
        vmovsd    xmm2, QWORD PTR .L_2il0floatpacket.9[rip]     #49.19
        vxorpd    xmm3, xmm3, xmm3                              #52.29
        vmovsd    xmm0, QWORD PTR .L_2il0floatpacket.10[rip]    #52.51
                                # LOE rbx r12 r13 r14 r15 xmm0 xmm2 xmm3 ymm1
..B1.4:                         # Preds ..B1.6 ..B1.3
# @breuera: start - removed white-space for slides
        xor       eax, eax                                      #54.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm2 xmm3 ymm1
..B1.5:                         # Preds ..B1.5 ..B1.4
vmulpd    ymm4, ymm1, YMMWORD PTR [96000+rsp+rax*8]     #55.47
vmulpd    ymm10, ymm1, YMMWORD PTR [96032+rsp+rax*8]    #55.47
vmulpd    ymm6, ymm1, YMMWORD PTR [128000+rsp+rax*8]    #56.47
vmulpd    ymm12, ymm1, YMMWORD PTR [128032+rsp+rax*8]   #56.47
vmulpd    ymm8, ymm1, YMMWORD PTR [160000+rsp+rax*8]    #57.47
vmulpd    ymm14, ymm1, YMMWORD PTR [160032+rsp+rax*8]   #57.47
vaddpd    ymm5, ymm4, YMMWORD PTR [rsp+rax*8]           #55.7
vaddpd    ymm11, ymm10, YMMWORD PTR [32+rsp+rax*8]      #55.7
vaddpd    ymm7, ymm6, YMMWORD PTR [32000+rsp+rax*8]     #56.7
vaddpd    ymm13, ymm12, YMMWORD PTR [32032+rsp+rax*8]   #56.7
vaddpd    ymm9, ymm8, YMMWORD PTR [64000+rsp+rax*8]     #57.7
vaddpd    ymm15, ymm14, YMMWORD PTR [64032+rsp+rax*8]   #57.7
vmulpd    ymm4, ymm1, YMMWORD PTR [96064+rsp+rax*8]     #55.47
vmulpd    ymm10, ymm1, YMMWORD PTR [96096+rsp+rax*8]    #55.47
vmulpd    ymm6, ymm1, YMMWORD PTR [128064+rsp+rax*8]    #56.47
vmulpd    ymm12, ymm1, YMMWORD PTR [128096+rsp+rax*8]   #56.47
vmulpd    ymm8, ymm1, YMMWORD PTR [160064+rsp+rax*8]    #57.47
vmulpd    ymm14, ymm1, YMMWORD PTR [160096+rsp+rax*8]   #57.47
vmovupd   YMMWORD PTR [rsp+rax*8], ymm5                 #55.7
vmovupd   YMMWORD PTR [32000+rsp+rax*8], ymm7           #56.7
vmovupd   YMMWORD PTR [64000+rsp+rax*8], ymm9           #57.7
vmovupd   YMMWORD PTR [32+rsp+rax*8], ymm11             #55.7
vmovupd   YMMWORD PTR [32032+rsp+rax*8], ymm13          #56.7
vmovupd   YMMWORD PTR [64032+rsp+rax*8], ymm15          #57.7
vaddpd    ymm5, ymm4, YMMWORD PTR [64+rsp+rax*8]        #55.7
vaddpd    ymm11, ymm10, YMMWORD PTR [96+rsp+rax*8]      #55.7
vaddpd    ymm7, ymm6, YMMWORD PTR [32064+rsp+rax*8]     #56.7
vaddpd    ymm13, ymm12, YMMWORD PTR [32096+rsp+rax*8]   #56.7
vaddpd    ymm9, ymm8, YMMWORD PTR [64064+rsp+rax*8]     #57.7
vaddpd    ymm15, ymm14, YMMWORD PTR [64096+rsp+rax*8]   #57.7
vmovupd   YMMWORD PTR [64+rsp+rax*8], ymm5              #55.7
vmovupd   YMMWORD PTR [32064+rsp+rax*8], ymm7           #56.7
vmovupd   YMMWORD PTR [64064+rsp+rax*8], ymm9           #57.7
vmovupd   YMMWORD PTR [96+rsp+rax*8], ymm11             #55.7
vmovupd   YMMWORD PTR [32096+rsp+rax*8], ymm13          #56.7
vmovupd   YMMWORD PTR [64096+rsp+rax*8], ymm15          #57.7
add       rax, 16                                       #54.5
cmp       rax, 4000                                     #54.5
jb        ..B1.5        # Prob 99%                      #54.5
                        # LOE rax rbx r12 r13 r14 r15 xmm0 xmm2 xmm3 ymm1
# @breuera: end - remove white-space for slides
..B1.6:                         # Preds ..B1.5
        vaddsd    xmm3, xmm2, xmm3                              #52.55
        vcomisd   xmm0, xmm3                                    #52.51
        ja        ..B1.4        # Prob 82%                      #52.51
                                # LOE rbx r12 r13 r14 r15 xmm0 xmm2 xmm3 ymm1
..B1.7:                         # Preds ..B1.6
        vzeroupper                                              #63.10
        xor       eax, eax                                      #63.10
        mov       rsp, rbp                                      #63.10
        pop       rbp                                           #63.10
..___tag_value_main.8:                                          #
        ret                                                     #63.10
        .align    16,0x90
..___tag_value_main.10:                                         #
                                # LOE
# mark_end;
	.type	main,@function
	.size	main,.-main
	.data
# -- End  main
	.section .rodata, "a"
	.align 32
	.align 32
.L_2il0floatpacket.7:
	.long	0x9999999a,0x3fb99999,0x9999999a,0x3fb99999,0x9999999a,0x3fb99999,0x9999999a,0x3fb99999
	.type	.L_2il0floatpacket.7,@object
	.size	.L_2il0floatpacket.7,32
	.align 32
.L_2il0floatpacket.8:
	.long	0xd2f1a9fc,0x3f50624d,0xd2f1a9fc,0x3f50624d,0xd2f1a9fc,0x3f50624d,0xd2f1a9fc,0x3f50624d
	.type	.L_2il0floatpacket.8,@object
	.size	.L_2il0floatpacket.8,32
	.align 16
.L_2il0floatpacket.6:
	.long	0x00000000,0x00000001,0x00000002,0x00000003
	.type	.L_2il0floatpacket.6,@object
	.size	.L_2il0floatpacket.6,16
	.align 8
.L_2il0floatpacket.9:
	.long	0xd2f1a9fc,0x3f50624d
	.type	.L_2il0floatpacket.9,@object
	.size	.L_2il0floatpacket.9,8
	.align 8
.L_2il0floatpacket.10:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.10,@object
	.size	.L_2il0floatpacket.10,8
	.data
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
	.4byte 0x0000001c
	.8byte 0x00507a0100000000
	.4byte 0x09107801
	.byte 0x00
	.8byte __gxx_personality_v0
	.4byte 0x9008070c
	.2byte 0x0001
	.byte 0x00
	.4byte 0x00000034
	.4byte 0x00000024
	.8byte ..___tag_value_main.1
	.8byte ..___tag_value_main.10-..___tag_value_main.1
	.2byte 0x0400
	.4byte ..___tag_value_main.3-..___tag_value_main.1
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_main.4-..___tag_value_main.3
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.8-..___tag_value_main.4
	.8byte 0x00000000c608070c
	.byte 0x00
# End
