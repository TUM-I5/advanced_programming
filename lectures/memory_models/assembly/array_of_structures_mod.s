# mark_description "Intel(R) C++ Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 13.1.0.146 Build 20130";
# mark_description "121";
# mark_description "-O2 -mavx -S -masm=intel";
	.intel_syntax noprefix
	.file "array_of_structures.cpp"
	.text
..TXTST0:
# -- Begin  main
# mark_begin;
       .align    16,0x90
	.globl main
main:
..B1.1:                         # Preds ..B1.0
..___tag_value_main.1:                                          #29.12
        push      rbp                                           #29.12
..___tag_value_main.3:                                          #
        mov       rbp, rsp                                      #29.12
..___tag_value_main.4:                                          #
        and       rsp, -128                                     #29.12
        push      r12                                           #29.12
        push      r13                                           #29.12
        push      r14                                           #29.12
        push      r15                                           #29.12
        push      rbx                                           #29.12
        sub       rsp, 192088                                   #29.12
        mov       edi, 3                                        #29.12
..___tag_value_main.6:                                          #29.12
        call      __intel_new_proc_init                         #29.12
..___tag_value_main.7:                                          #
                                # LOE rbx r12 r13 r14 r15
..B1.10:                        # Preds ..B1.1
        vstmxcsr  DWORD PTR [192000+rsp]                        #29.12
        mov       eax, 2                                        #34.3
        mov       rdx, 0x100000000                              #34.3
        or        DWORD PTR [192000+rsp], 32832                 #29.12
        xor       r9d, r9d                                      #34.3
        vldmxcsr  DWORD PTR [192000+rsp]                        #29.12
        vmovd     xmm0, eax                                     #34.3
        vmovd     xmm2, rdx                                     #34.3
        vpshufd   xmm3, xmm0, 0                                 #34.3
        vxorpd    xmm1, xmm1, xmm1                              #35.41
        vmovupd   xmm0, XMMWORD PTR .L_2il0floatpacket.6[rip]   #39.54
        lea       rsi, QWORD PTR [rsp]                          #
        xor       eax, eax                                      #
        lea       rcx, QWORD PTR [8+rsp]                        #
        lea       rdx, QWORD PTR [16+rsp]                       #
        lea       r8, QWORD PTR [24+rsp]                        #
        lea       rdi, QWORD PTR [32+rsp]                       #
        lea       r10, QWORD PTR [40+rsp]                       #
        .align    16,0x90
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3
..B1.2:                         # Preds ..B1.2 ..B1.10
        vcvtdq2pd xmm4, xmm2                                    #39.41
        vmulpd    xmm5, xmm0, xmm4                              #39.54
        add       r9, 2                                         #34.3
        lea       r11, QWORD PTR [rsi+rax]                      #35.5
        vmovlpd   QWORD PTR [r11], xmm1                         #35.5
        vpaddd    xmm2, xmm2, xmm3                              #41.5
        vmovhpd   QWORD PTR [48+r11], xmm1                      #35.5
        lea       r11, QWORD PTR [rcx+rax]                      #36.5
        vmovlpd   QWORD PTR [r11], xmm1                         #36.5
        vmovhpd   QWORD PTR [48+r11], xmm1                      #36.5
        lea       r11, QWORD PTR [rdx+rax]                      #37.5
        vmovlpd   QWORD PTR [r11], xmm1                         #37.5
        vmovhpd   QWORD PTR [48+r11], xmm1                      #37.5
        lea       r11, QWORD PTR [r8+rax]                       #39.5
        vmovlpd   QWORD PTR [r11], xmm5                         #39.5
        vmovhpd   QWORD PTR [48+r11], xmm5                      #39.5
        lea       r11, QWORD PTR [rdi+rax]                      #40.5
        vmovlpd   QWORD PTR [r11], xmm5                         #40.5
        vmovhpd   QWORD PTR [48+r11], xmm5                      #40.5
        lea       r11, QWORD PTR [r10+rax]                      #41.5
        add       rax, 96                                       #34.3
        vmovlpd   QWORD PTR [r11], xmm5                         #41.5
        vmovhpd   QWORD PTR [48+r11], xmm5                      #41.5
        cmp       r9, 4000                                      #34.3
        jb        ..B1.2        # Prob 99%                      #34.3
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3
..B1.3:                         # Preds ..B1.2
        vmovupd   xmm1, XMMWORD PTR .L_2il0floatpacket.7[rip]   #45.19
        vmovsd    xmm2, QWORD PTR .L_2il0floatpacket.8[rip]     #45.19
        vxorpd    xmm3, xmm3, xmm3                              #48.29
        vmovsd    xmm0, QWORD PTR .L_2il0floatpacket.9[rip]     #48.51
                                # LOE rdx rcx rsi rdi r8 r10 xmm0 xmm1 xmm2 xmm3
..B1.4:                         # Preds ..B1.6 ..B1.3
        xor       ebx, ebx                                      #50.5
        xor       eax, eax                                      #
                                # LOE rax rdx rcx rbx rsi rdi r8 r10 xmm0 xmm1 xmm2 xmm3
# @breuera: start - removed white-space for slides
..B1.5:                         # Preds ..B1.5 ..B1.4
add       rbx, 8                                        #50.5
lea       r9, QWORD PTR [r8+rax]                        #51.47
vmovsd    xmm5, QWORD PTR [r9]                          #51.47
lea       r11, QWORD PTR [rsi+rax]                      #51.7
vmovhpd   xmm6, xmm5, QWORD PTR [48+r9]                 #51.47
lea       r12, QWORD PTR [rdi+rax]                      #52.47
vmulpd    xmm8, xmm1, xmm6                              #51.47
vmovsd    xmm4, QWORD PTR [r11]                         #51.7
lea       r13, QWORD PTR [rcx+rax]                      #52.7
vmovhpd   xmm7, xmm4, QWORD PTR [48+r11]                #51.7
lea       r14, QWORD PTR [r10+rax]                      #53.47
vaddpd    xmm9, xmm7, xmm8                              #51.7
vmovlpd   QWORD PTR [r11], xmm9                         #51.7
lea       r15, QWORD PTR [rdx+rax]                      #53.7
vmovhpd   QWORD PTR [48+r11], xmm9                      #51.7
add       rax, 384                                      #50.5
vmovsd    xmm11, QWORD PTR [r12]                        #52.47
vmovhpd   xmm12, xmm11, QWORD PTR [48+r12]              #52.47
vmulpd    xmm14, xmm1, xmm12                            #52.47
vmovsd    xmm10, QWORD PTR [r13]                        #52.7
vmovhpd   xmm13, xmm10, QWORD PTR [48+r13]              #52.7
vaddpd    xmm15, xmm13, xmm14                           #52.7
vmovlpd   QWORD PTR [r13], xmm15                        #52.7
vmovhpd   QWORD PTR [48+r13], xmm15                     #52.7
vmovsd    xmm5, QWORD PTR [r14]                         #53.47
vmovhpd   xmm6, xmm5, QWORD PTR [48+r14]                #53.47
# @breuera: end - removed white-space for slides
        vmulpd    xmm8, xmm1, xmm6                              #53.47
        vmovsd    xmm4, QWORD PTR [r15]                         #53.7
        vmovhpd   xmm7, xmm4, QWORD PTR [48+r15]                #53.7
        vaddpd    xmm9, xmm7, xmm8                              #53.7
        vmovlpd   QWORD PTR [r15], xmm9                         #53.7
        vmovhpd   QWORD PTR [48+r15], xmm9                      #53.7
        vmovsd    xmm11, QWORD PTR [96+r9]                      #51.47
        vmovhpd   xmm12, xmm11, QWORD PTR [144+r9]              #51.47
        vmulpd    xmm14, xmm1, xmm12                            #51.47
        vmovsd    xmm10, QWORD PTR [96+r11]                     #51.7
        vmovhpd   xmm13, xmm10, QWORD PTR [144+r11]             #51.7
        vaddpd    xmm15, xmm13, xmm14                           #51.7
        vmovlpd   QWORD PTR [96+r11], xmm15                     #51.7
        vmovhpd   QWORD PTR [144+r11], xmm15                    #51.7
        vmovsd    xmm5, QWORD PTR [96+r12]                      #52.47
        vmovhpd   xmm6, xmm5, QWORD PTR [144+r12]               #52.47
        vmulpd    xmm8, xmm1, xmm6                              #52.47
        vmovsd    xmm4, QWORD PTR [96+r13]                      #52.7
        vmovhpd   xmm7, xmm4, QWORD PTR [144+r13]               #52.7
        vaddpd    xmm9, xmm7, xmm8                              #52.7
        vmovlpd   QWORD PTR [96+r13], xmm9                      #52.7
        vmovhpd   QWORD PTR [144+r13], xmm9                     #52.7
        vmovsd    xmm11, QWORD PTR [96+r14]                     #53.47
        vmovhpd   xmm12, xmm11, QWORD PTR [144+r14]             #53.47
        vmulpd    xmm14, xmm1, xmm12                            #53.47
        .byte     15                                            #53.7
        .byte     31                                            #53.7
        .byte     64                                            #53.7
        .byte     0                                             #53.7
        vmovsd    xmm10, QWORD PTR [96+r15]                     #53.7
        vmovhpd   xmm13, xmm10, QWORD PTR [144+r15]             #53.7
        vaddpd    xmm15, xmm13, xmm14                           #53.7
        vmovlpd   QWORD PTR [96+r15], xmm15                     #53.7
        vmovhpd   QWORD PTR [144+r15], xmm15                    #53.7
        vmovsd    xmm5, QWORD PTR [192+r9]                      #51.47
        vmovhpd   xmm6, xmm5, QWORD PTR [240+r9]                #51.47
        vmulpd    xmm8, xmm1, xmm6                              #51.47
        vmovsd    xmm4, QWORD PTR [192+r11]                     #51.7
        vmovhpd   xmm7, xmm4, QWORD PTR [240+r11]               #51.7
        vaddpd    xmm9, xmm7, xmm8                              #51.7
        vmovlpd   QWORD PTR [192+r11], xmm9                     #51.7
        vmovhpd   QWORD PTR [240+r11], xmm9                     #51.7
        vmovsd    xmm11, QWORD PTR [192+r12]                    #52.47
        vmovhpd   xmm12, xmm11, QWORD PTR [240+r12]             #52.47
        vmulpd    xmm14, xmm1, xmm12                            #52.47
        vmovsd    xmm10, QWORD PTR [192+r13]                    #52.7
        vmovhpd   xmm13, xmm10, QWORD PTR [240+r13]             #52.7
        vaddpd    xmm15, xmm13, xmm14                           #52.7
        vmovlpd   QWORD PTR [192+r13], xmm15                    #52.7
        vmovhpd   QWORD PTR [240+r13], xmm15                    #52.7
        vmovsd    xmm5, QWORD PTR [192+r14]                     #53.47
        vmovhpd   xmm6, xmm5, QWORD PTR [240+r14]               #53.47
        vmulpd    xmm8, xmm1, xmm6                              #53.47
        vmovsd    xmm4, QWORD PTR [192+r15]                     #53.7
        vmovhpd   xmm7, xmm4, QWORD PTR [240+r15]               #53.7
        vaddpd    xmm9, xmm7, xmm8                              #53.7
        vmovlpd   QWORD PTR [192+r15], xmm9                     #53.7
        vmovhpd   QWORD PTR [240+r15], xmm9                     #53.7
        vmovsd    xmm11, QWORD PTR [288+r9]                     #51.47
        vmovhpd   xmm12, xmm11, QWORD PTR [336+r9]              #51.47
        vmulpd    xmm14, xmm1, xmm12                            #51.47
        vmovsd    xmm10, QWORD PTR [288+r11]                    #51.7
        vmovhpd   xmm13, xmm10, QWORD PTR [336+r11]             #51.7
        vaddpd    xmm15, xmm13, xmm14                           #51.7
        vmovlpd   QWORD PTR [288+r11], xmm15                    #51.7
        vmovhpd   QWORD PTR [336+r11], xmm15                    #51.7
        .byte     144                                           #52.47
        vmovsd    xmm5, QWORD PTR [288+r12]                     #52.47
        vmovhpd   xmm6, xmm5, QWORD PTR [336+r12]               #52.47
        vmulpd    xmm8, xmm1, xmm6                              #52.47
        vmovsd    xmm4, QWORD PTR [288+r13]                     #52.7
        vmovhpd   xmm7, xmm4, QWORD PTR [336+r13]               #52.7
        vaddpd    xmm9, xmm7, xmm8                              #52.7
        vmovlpd   QWORD PTR [288+r13], xmm9                     #52.7
        vmovhpd   QWORD PTR [336+r13], xmm9                     #52.7
        vmovsd    xmm11, QWORD PTR [288+r14]                    #53.47
        vmovhpd   xmm12, xmm11, QWORD PTR [336+r14]             #53.47
        vmulpd    xmm14, xmm1, xmm12                            #53.47
        vmovsd    xmm10, QWORD PTR [288+r15]                    #53.7
        vmovhpd   xmm13, xmm10, QWORD PTR [336+r15]             #53.7
        vaddpd    xmm15, xmm13, xmm14                           #53.7
        vmovlpd   QWORD PTR [288+r15], xmm15                    #53.7
        vmovhpd   QWORD PTR [336+r15], xmm15                    #53.7
        cmp       rbx, 4000                                     #50.5
        jb        ..B1.5        # Prob 99%                      #50.5
                                # LOE rax rdx rcx rbx rsi rdi r8 r10 xmm0 xmm1 xmm2 xmm3
..B1.6:                         # Preds ..B1.5
        vaddsd    xmm3, xmm2, xmm3                              #48.55
        vcomisd   xmm0, xmm3                                    #48.51
        ja        ..B1.4        # Prob 82%                      #48.51
                                # LOE rdx rcx rsi rdi r8 r10 xmm0 xmm1 xmm2 xmm3
..B1.7:                         # Preds ..B1.6
        xor       eax, eax                                      #59.10
        add       rsp, 192088                                   #59.10
..___tag_value_main.13:                                         #59.10
        pop       rbx                                           #59.10
..___tag_value_main.14:                                         #59.10
        pop       r15                                           #59.10
..___tag_value_main.15:                                         #59.10
        pop       r14                                           #59.10
..___tag_value_main.16:                                         #59.10
        pop       r13                                           #59.10
..___tag_value_main.17:                                         #59.10
        pop       r12                                           #59.10
        mov       rsp, rbp                                      #59.10
        pop       rbp                                           #59.10
..___tag_value_main.18:                                         #
        ret                                                     #59.10
        .align    16,0x90
..___tag_value_main.20:                                         #
                                # LOE
# mark_end;
	.type	main,@function
	.size	main,.-main
	.data
# -- End  main
	.section .rodata, "a"
	.align 16
	.align 16
.L_2il0floatpacket.6:
	.long	0x9999999a,0x3fb99999,0x9999999a,0x3fb99999
	.type	.L_2il0floatpacket.6,@object
	.size	.L_2il0floatpacket.6,16
	.align 16
.L_2il0floatpacket.7:
	.long	0xd2f1a9fc,0x3f50624d,0xd2f1a9fc,0x3f50624d
	.type	.L_2il0floatpacket.7,@object
	.size	.L_2il0floatpacket.7,16
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
