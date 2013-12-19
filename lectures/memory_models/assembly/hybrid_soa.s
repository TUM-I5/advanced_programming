# mark_description "Intel(R) C++ Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 13.1.0.146 Build 20130";
# mark_description "121";
# mark_description "-O2 -mavx -S -masm=intel";
	.intel_syntax noprefix
	.file "hybrid_soa.cpp"
	.text
..TXTST0:
# -- Begin  main
# mark_begin;
       .align    16,0x90
	.globl main
main:
..B1.1:                         # Preds ..B1.0
..___tag_value_main.1:                                          #32.12
        push      rbp                                           #32.12
..___tag_value_main.3:                                          #
        mov       rbp, rsp                                      #32.12
..___tag_value_main.4:                                          #
        and       rsp, -128                                     #32.12
        push      r12                                           #32.12
        push      r13                                           #32.12
        push      r14                                           #32.12
        push      r15                                           #32.12
        push      rbx                                           #32.12
        sub       rsp, 768088                                   #32.12
        mov       edi, 3                                        #32.12
..___tag_value_main.6:                                          #32.12
        call      __intel_new_proc_init                         #32.12
..___tag_value_main.7:                                          #
                                # LOE rbx r12 r13 r14 r15
..B1.12:                        # Preds ..B1.1
        vstmxcsr  DWORD PTR [768000+rsp]                        #32.12
        mov       eax, 4                                        #43.94
        xor       esi, esi                                      #37.3
        or        DWORD PTR [768000+rsp], 32832                 #32.12
        xor       ecx, ecx                                      #
        vldmxcsr  DWORD PTR [768000+rsp]                        #32.12
        vmovd     xmm0, eax                                     #43.94
        vpshufd   xmm2, xmm0, 0                                 #43.94
        lea       rdx, QWORD PTR [128+rsp]                      #
        vxorpd    ymm1, ymm1, ymm1                              #39.60
        lea       rdi, QWORD PTR [256+rsp]                      #
        vmovupd   ymm0, YMMWORD PTR .L_2il0floatpacket.6[rip]   #43.108
        lea       r8, QWORD PTR [384+rsp]                       #
        lea       r9, QWORD PTR [512+rsp]                       #
        lea       rax, QWORD PTR [640+rsp]                      #
                                # LOE rax rdx rcx rsi rdi r8 r9 xmm2 ymm0 ymm1
..B1.2:                         # Preds ..B1.4 ..B1.12
        mov       r11d, esi                                     #43.94
        xor       r15d, r15d                                    #38.5
        shl       r11d, 4                                       #43.94
        lea       r14, QWORD PTR [rsp+rcx]                      #
        lea       r13, QWORD PTR [rdx+rcx]                      #
        lea       r12, QWORD PTR [rdi+rcx]                      #
        vmovd     xmm3, r11d                                    #43.94
        lea       ebx, DWORD PTR [1+r11]                        #43.94
        lea       r10d, DWORD PTR [2+r11]                       #43.94
        add       r11d, 3                                       #43.94
        vmovd     xmm4, ebx                                     #43.94
        lea       rbx, QWORD PTR [rax+rcx]                      #
        vmovd     xmm5, r10d                                    #43.94
        vmovd     xmm6, r11d                                    #43.94
        vpunpcklqdq xmm7, xmm3, xmm4                            #43.94
        lea       r11, QWORD PTR [r8+rcx]                       #
        vpunpcklqdq xmm8, xmm5, xmm6                            #43.94
        lea       r10, QWORD PTR [r9+rcx]                       #
        vshufps   xmm3, xmm7, xmm8, 136                         #43.94
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 xmm2 xmm3 ymm0 ymm1
..B1.3:                         # Preds ..B1.3 ..B1.2
        vcvtdq2pd ymm4, xmm3                                    #43.94
        vpaddd    xmm3, xmm3, xmm2                              #43.94
        vmovupd   YMMWORD PTR [r14+r15*8], ymm1                 #39.7
        vmovupd   YMMWORD PTR [r13+r15*8], ymm1                 #40.7
        vmovupd   YMMWORD PTR [r12+r15*8], ymm1                 #41.7
        vmulpd    ymm5, ymm0, ymm4                              #43.108
        vmovupd   YMMWORD PTR [r11+r15*8], ymm5                 #43.7
        vmovupd   YMMWORD PTR [r10+r15*8], ymm5                 #44.7
        vmovupd   YMMWORD PTR [rbx+r15*8], ymm5                 #45.7
        add       r15, 4                                        #38.5
        cmp       r15, 16                                       #38.5
        jb        ..B1.3        # Prob 93%                      #38.5
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 xmm2 xmm3 ymm0 ymm1
..B1.4:                         # Preds ..B1.3
        inc       rsi                                           #37.3
        add       rcx, 768                                      #37.3
        cmp       rsi, 1000                                     #37.3
        jb        ..B1.2        # Prob 99%                      #37.3
                                # LOE rax rdx rcx rsi rdi r8 r9 xmm2 ymm0 ymm1
..B1.5:                         # Preds ..B1.4
        vmovupd   ymm0, YMMWORD PTR .L_2il0floatpacket.7[rip]   #50.19
        vxorpd    xmm1, xmm1, xmm1                              #53.29
                                # LOE rbx r12 r13 r14 r15 xmm1 ymm0
..B1.6:                         # Preds ..B1.8 ..B1.5
        xor       edx, edx                                      #55.5
        xor       eax, eax                                      #
                                # LOE rax rdx rbx r12 r13 r14 r15 xmm1 ymm0
..B1.7:                         # Preds ..B1.7 ..B1.6
        vmulpd    ymm2, ymm0, YMMWORD PTR [384+rsp+rax]         #57.66
        inc       rdx                                           #55.5
        vmulpd    ymm8, ymm0, YMMWORD PTR [416+rsp+rax]         #57.66
        vmulpd    ymm4, ymm0, YMMWORD PTR [512+rsp+rax]         #58.66
        vmulpd    ymm10, ymm0, YMMWORD PTR [544+rsp+rax]        #58.66
        vmulpd    ymm6, ymm0, YMMWORD PTR [640+rsp+rax]         #59.66
        vmulpd    ymm12, ymm0, YMMWORD PTR [672+rsp+rax]        #59.66
        vmulpd    ymm14, ymm0, YMMWORD PTR [448+rsp+rax]        #57.66
        vaddpd    ymm3, ymm2, YMMWORD PTR [rsp+rax]             #57.9
        vaddpd    ymm9, ymm8, YMMWORD PTR [32+rsp+rax]          #57.9
        vaddpd    ymm5, ymm4, YMMWORD PTR [128+rsp+rax]         #58.9
        vaddpd    ymm11, ymm10, YMMWORD PTR [160+rsp+rax]       #58.9
        vaddpd    ymm7, ymm6, YMMWORD PTR [256+rsp+rax]         #59.9
        vaddpd    ymm13, ymm12, YMMWORD PTR [288+rsp+rax]       #59.9
        vaddpd    ymm15, ymm14, YMMWORD PTR [64+rsp+rax]        #57.9
        vmulpd    ymm2, ymm0, YMMWORD PTR [576+rsp+rax]         #58.66
        vmulpd    ymm8, ymm0, YMMWORD PTR [608+rsp+rax]         #58.66
        vmulpd    ymm4, ymm0, YMMWORD PTR [704+rsp+rax]         #59.66
        vmulpd    ymm10, ymm0, YMMWORD PTR [736+rsp+rax]        #59.66
        vmulpd    ymm6, ymm0, YMMWORD PTR [480+rsp+rax]         #57.66
        vmovupd   YMMWORD PTR [rsp+rax], ymm3                   #57.9
        vmovupd   YMMWORD PTR [128+rsp+rax], ymm5               #58.9
        vmovupd   YMMWORD PTR [256+rsp+rax], ymm7               #59.9
        vmovupd   YMMWORD PTR [32+rsp+rax], ymm9                #57.9
        vmovupd   YMMWORD PTR [160+rsp+rax], ymm11              #58.9
        vmovupd   YMMWORD PTR [288+rsp+rax], ymm13              #59.9
        vmovupd   YMMWORD PTR [64+rsp+rax], ymm15               #57.9
        vaddpd    ymm3, ymm2, YMMWORD PTR [192+rsp+rax]         #58.9
        vaddpd    ymm9, ymm8, YMMWORD PTR [224+rsp+rax]         #58.9
        vaddpd    ymm5, ymm4, YMMWORD PTR [320+rsp+rax]         #59.9
        vaddpd    ymm11, ymm10, YMMWORD PTR [352+rsp+rax]       #59.9
        vaddpd    ymm7, ymm6, YMMWORD PTR [96+rsp+rax]          #57.9
        vmovupd   YMMWORD PTR [192+rsp+rax], ymm3               #58.9
        vmovupd   YMMWORD PTR [320+rsp+rax], ymm5               #59.9
        vmovupd   YMMWORD PTR [96+rsp+rax], ymm7                #57.9
        vmovupd   YMMWORD PTR [224+rsp+rax], ymm9               #58.9
        vmovupd   YMMWORD PTR [352+rsp+rax], ymm11              #59.9
        add       rax, 768                                      #55.5
        cmp       rdx, 1000                                     #55.5
        jb        ..B1.7        # Prob 99%                      #55.5
                                # LOE rax rdx rbx r12 r13 r14 r15 xmm1 ymm0
..B1.8:                         # Preds ..B1.7
        vmovsd    xmm2, QWORD PTR .L_2il0floatpacket.8[rip]     #53.55
        vmovsd    xmm3, QWORD PTR .L_2il0floatpacket.9[rip]     #53.51
        vaddsd    xmm1, xmm2, xmm1                              #53.55
        vcomisd   xmm3, xmm1                                    #53.51
        ja        ..B1.6        # Prob 82%                      #53.51
                                # LOE rbx r12 r13 r14 r15 xmm1 ymm0
..B1.9:                         # Preds ..B1.8
        vzeroupper                                              #66.10
        xor       eax, eax                                      #66.10
        add       rsp, 768088                                   #66.10
..___tag_value_main.13:                                         #66.10
        pop       rbx                                           #66.10
..___tag_value_main.14:                                         #66.10
        pop       r15                                           #66.10
..___tag_value_main.15:                                         #66.10
        pop       r14                                           #66.10
..___tag_value_main.16:                                         #66.10
        pop       r13                                           #66.10
..___tag_value_main.17:                                         #66.10
        pop       r12                                           #66.10
        mov       rsp, rbp                                      #66.10
        pop       rbp                                           #66.10
..___tag_value_main.18:                                         #
        ret                                                     #66.10
        .align    16,0x90
..___tag_value_main.20:                                         #
                                # LOE
# mark_end;
	.type	main,@function
	.size	main,.-main
	.data
# -- End  main
	.section .rodata, "a"
	.align 32
	.align 32
.L_2il0floatpacket.6:
	.long	0x9999999a,0x3fb99999,0x9999999a,0x3fb99999,0x9999999a,0x3fb99999,0x9999999a,0x3fb99999
	.type	.L_2il0floatpacket.6,@object
	.size	.L_2il0floatpacket.6,32
	.align 32
.L_2il0floatpacket.7:
	.long	0xd2f1a9fc,0x3f50624d,0xd2f1a9fc,0x3f50624d,0xd2f1a9fc,0x3f50624d,0xd2f1a9fc,0x3f50624d
	.type	.L_2il0floatpacket.7,@object
	.size	.L_2il0floatpacket.7,32
	.align 8
.L_2il0floatpacket.8:
	.long	0xd2f1a9fc,0x3f50624d
	.type	.L_2il0floatpacket.8,@object
	.size	.L_2il0floatpacket.8,8
	.align 8
.L_2il0floatpacket.9:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.9,@object
	.size	.L_2il0floatpacket.9,8
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
	.4byte 0x000000ac
	.4byte 0x00000024
	.8byte ..___tag_value_main.1
	.8byte ..___tag_value_main.20-..___tag_value_main.1
	.2byte 0x0400
	.4byte ..___tag_value_main.3-..___tag_value_main.1
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_main.4-..___tag_value_main.3
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.7-..___tag_value_main.4
	.8byte 0xff800d1c380e0310
	.8byte 0xffffffd80d1affff
	.8byte 0x800d1c380e0c1022
	.8byte 0xfffff80d1affffff
	.8byte 0x0d1c380e0d1022ff
	.8byte 0xfff00d1affffff80
	.8byte 0x1c380e0e1022ffff
	.8byte 0xe80d1affffff800d
	.8byte 0x380e0f1022ffffff
	.8byte 0x0d1affffff800d1c
	.4byte 0xffffffe0
	.2byte 0x0422
	.4byte ..___tag_value_main.13-..___tag_value_main.7
	.2byte 0x04c3
	.4byte ..___tag_value_main.14-..___tag_value_main.13
	.2byte 0x04cf
	.4byte ..___tag_value_main.15-..___tag_value_main.14
	.2byte 0x04ce
	.4byte ..___tag_value_main.16-..___tag_value_main.15
	.2byte 0x04cd
	.4byte ..___tag_value_main.17-..___tag_value_main.16
	.2byte 0x04cc
	.4byte ..___tag_value_main.18-..___tag_value_main.17
	.8byte 0x00000000c608070c
	.byte 0x00
# End
