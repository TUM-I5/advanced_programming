# mark_description "Intel(R) C++ Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 14.0.0.080 Build 20130";
# mark_description "728";
# mark_description "-DFUSE -O2 -mavx -S -masm=intel";
	.intel_syntax noprefix
	.file "nested_loops.cpp"
	.text
..TXTST0:
# -- Begin  main
# mark_begin;
       .align    16,0x90
	.globl main
main:
..B1.1:                         # Preds ..B1.0
..___tag_value_main.1:                                          #23.12
        push      rbp                                           #23.12
..___tag_value_main.3:                                          #
        mov       rbp, rsp                                      #23.12
..___tag_value_main.4:                                          #
        and       rsp, -128                                     #23.12
        push      r12                                           #23.12
        sub       rsp, 6264                                     #23.12
        mov       rsi, 0x000000000                              #23.12
        mov       edi, 3                                        #23.12
        call      __intel_new_feature_proc_init                 #23.12
..___tag_value_main.6:                                          #
                                # LOE rbx r12 r13 r14 r15
..B1.13:                        # Preds ..B1.1
        vstmxcsr  DWORD PTR [rsp]                               #23.12
        xor       eax, eax                                      #30.3
        or        DWORD PTR [rsp], 32832                        #23.12
        vldmxcsr  DWORD PTR [rsp]                               #23.12
        vmovupd   ymm1, YMMWORD PTR .L_2il0floatpacket.1[rip]   #31.17
        vmovupd   ymm0, YMMWORD PTR .L_2il0floatpacket.2[rip]   #31.33
                                # LOE rax rbx r12 r13 r14 r15 ymm0 ymm1
..B1.2:                         # Preds ..B1.2 ..B1.13
        vmovupd   YMMWORD PTR [rsp+rax*8], ymm1                 #31.5
        vmovupd   YMMWORD PTR [2048+rsp+rax*8], ymm0            #31.22
        vmovupd   YMMWORD PTR [32+rsp+rax*8], ymm1              #31.5
        vmovupd   YMMWORD PTR [2080+rsp+rax*8], ymm0            #31.22
        vmovupd   YMMWORD PTR [64+rsp+rax*8], ymm1              #31.5
        vmovupd   YMMWORD PTR [2112+rsp+rax*8], ymm0            #31.22
        vmovupd   YMMWORD PTR [96+rsp+rax*8], ymm1              #31.5
        vmovupd   YMMWORD PTR [2144+rsp+rax*8], ymm0            #31.22
        add       rax, 16                                       #30.3
        cmp       rax, 256                                      #30.3
        jb        ..B1.2        # Prob 99%                      #30.3
                                # LOE rax rbx r12 r13 r14 r15 ymm0 ymm1
..B1.3:                         # Preds ..B1.2
# @breuera: start - removed white-spaces for slides
xor       eax, eax                                      #35.3
                                # LOE rax rbx r12 r13 r14 r15
..B1.4:                         # Preds ..B1.4 ..B1.3
vmovupd   ymm0, YMMWORD PTR [rsp+rax*8]                 #38.24
vmovupd   ymm2, YMMWORD PTR [32+rsp+rax*8]              #38.24
vmovupd   ymm4, YMMWORD PTR [64+rsp+rax*8]              #38.24
vmovupd   ymm6, YMMWORD PTR [96+rsp+rax*8]              #38.24
vmulpd    ymm1, ymm0, YMMWORD PTR [2048+rsp+rax*8]      #38.41
vmulpd    ymm3, ymm2, YMMWORD PTR [2080+rsp+rax*8]      #38.41
vmulpd    ymm5, ymm4, YMMWORD PTR [2112+rsp+rax*8]      #38.41
vmulpd    ymm7, ymm6, YMMWORD PTR [2144+rsp+rax*8]      #38.41
vmovupd   YMMWORD PTR [4096+rsp+rax*8], ymm1            #38.7
vmovupd   YMMWORD PTR [4128+rsp+rax*8], ymm3            #38.7
vmovupd   YMMWORD PTR [4160+rsp+rax*8], ymm5            #38.7
vmovupd   YMMWORD PTR [4192+rsp+rax*8], ymm7            #38.7
add       rax, 16                                       #35.3
cmp       rax, 256                                      #35.3
jb        ..B1.4        # Prob 99%                      #35.3
# @breuera: end
                                # LOE rax rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.4
        xor       edx, edx                                      #48.16
        mov       r12, rdx                                      #48.16
                                # LOE rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.8 ..B1.5
        mov       edi, offset flat: _ZSt4cout                   #49.15
        vmovsd    xmm0, QWORD PTR [4096+rsp+r12*8]              #49.15
        vzeroupper                                              #49.15
..___tag_value_main.7:                                          #49.15
        call      _ZNSolsEd                                     #49.15
..___tag_value_main.8:                                          #
                                # LOE rax rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.6
        mov       rdi, rax                                      #49.27
        mov       esi, offset flat: .L_2__STRING.0              #49.27
..___tag_value_main.9:                                          #49.27
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #49.27
..___tag_value_main.10:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
        inc       r12                                           #48.40
        cmp       r12, 256                                      #48.27
        jl        ..B1.6        # Prob 99%                      #48.27
                                # LOE rbx r12 r13 r14 r15
..B1.9:                         # Preds ..B1.8
        mov       edi, offset flat: _ZSt4cout                   #51.13
        mov       esi, offset flat: _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_ #51.13
..___tag_value_main.11:                                         #51.13
        call      _ZNSolsEPFRSoS_E                              #51.13
..___tag_value_main.12:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9
        xor       eax, eax                                      #52.1
        add       rsp, 6264                                     #52.1
..___tag_value_main.13:                                         #52.1
        pop       r12                                           #52.1
        mov       rsp, rbp                                      #52.1
        pop       rbp                                           #52.1
..___tag_value_main.14:                                         #
        ret                                                     #52.1
        .align    16,0x90
..___tag_value_main.16:                                         #
                                # LOE
# mark_end;
	.type	main,@function
	.size	main,.-main
	.data
# -- End  main
	.text
# -- Begin  __sti__$E
# mark_begin;
       .align    16,0x90
__sti__$E:
..B2.1:                         # Preds ..B2.0
..___tag_value___sti__$E.17:                                    #
        push      rsi                                           #
..___tag_value___sti__$E.19:                                    #
        mov       edi, offset flat: _ZSt8__ioinit               #75.25
..___tag_value___sti__$E.20:                                    #75.25
        call      _ZNSt8ios_base4InitC1Ev                       #75.25
..___tag_value___sti__$E.21:                                    #
                                # LOE rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1
        mov       edi, offset flat: _ZNSt8ios_base4InitD1Ev     #75.25
        mov       esi, offset flat: _ZSt8__ioinit               #75.25
        mov       edx, offset flat: __dso_handle                #75.25
        add       rsp, 8                                        #75.25
..___tag_value___sti__$E.22:                                    #
        jmp       __cxa_atexit                                  #75.25
        .align    16,0x90
..___tag_value___sti__$E.23:                                    #
                                # LOE
# mark_end;
	.type	__sti__$E,@function
	.size	__sti__$E,.-__sti__$E
	.data
# -- End  __sti__$E
	.bss
	.align 4
	.align 1
_ZSt8__ioinit:
	.type	_ZSt8__ioinit,@object
	.size	_ZSt8__ioinit,1
	.space 1	# pad
	.section .rodata, "a"
	.align 32
	.align 32
.L_2il0floatpacket.1:
	.long	0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,32
	.align 32
.L_2il0floatpacket.2:
	.long	0x00000000,0x40000000,0x00000000,0x40000000,0x00000000,0x40000000,0x00000000,0x40000000
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,32
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.0:
	.word	32
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,2
	.section .ctors, "wa"
	.align 8
__init_0:
	.type	__init_0,@object
	.size	__init_0,8
	.quad	__sti__$E
	.data
	.hidden __dso_handle
# mark_proc_addr_taken __sti__$E;
# mark_proc_addr_taken _ZNSt8ios_base4InitD1Ev;
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
	.4byte 0x0000004c
	.4byte 0x00000024
	.8byte ..___tag_value_main.1
	.8byte ..___tag_value_main.16-..___tag_value_main.1
	.2byte 0x0400
	.4byte ..___tag_value_main.3-..___tag_value_main.1
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_main.4-..___tag_value_main.3
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.6-..___tag_value_main.4
	.8byte 0xff800d1c380e0c10
	.8byte 0xfffffff80d1affff
	.2byte 0x0422
	.4byte ..___tag_value_main.13-..___tag_value_main.6
	.2byte 0x04cc
	.4byte ..___tag_value_main.14-..___tag_value_main.13
	.4byte 0xc608070c
	.byte 0x00
	.4byte 0x00000024
	.4byte 0x00000074
	.8byte ..___tag_value___sti__$E.17
	.8byte ..___tag_value___sti__$E.23-..___tag_value___sti__$E.17
	.2byte 0x0400
	.4byte ..___tag_value___sti__$E.19-..___tag_value___sti__$E.17
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value___sti__$E.22-..___tag_value___sti__$E.19
	.2byte 0x080e
	.byte 0x00
# End
