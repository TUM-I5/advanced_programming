# mark_description "Intel(R) C++ Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 13.1.0.146 Build 20130";
# mark_description "121";
# mark_description "-O2 -mavx -S -masm=intel";
	.intel_syntax noprefix
	.file "simple_loop.cpp"
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
        mov       edi, 3                                        #23.12
..___tag_value_main.6:                                          #23.12
        call      __intel_new_proc_init                         #23.12
..___tag_value_main.7:                                          #
                                # LOE rbx r12 r13 r14 r15
..B1.13:                        # Preds ..B1.1
        vstmxcsr  DWORD PTR [rsp]                               #23.12
        xor       eax, eax                                      #28.3
        or        DWORD PTR [rsp], 32832                        #23.12
        vldmxcsr  DWORD PTR [rsp]                               #23.12
        vmovupd   ymm1, YMMWORD PTR .L_2il0floatpacket.0[rip]   #29.17
        vmovupd   ymm0, YMMWORD PTR .L_2il0floatpacket.1[rip]   #29.33
                                # LOE rax rbx r12 r13 r14 r15 ymm0 ymm1
..B1.2:                         # Preds ..B1.2 ..B1.13
        vmovupd   YMMWORD PTR [rsp+rax*8], ymm1                 #29.5
        vmovupd   YMMWORD PTR [2048+rsp+rax*8], ymm0            #29.22
        vmovupd   YMMWORD PTR [32+rsp+rax*8], ymm1              #29.5
        vmovupd   YMMWORD PTR [2080+rsp+rax*8], ymm0            #29.22
        vmovupd   YMMWORD PTR [64+rsp+rax*8], ymm1              #29.5
        vmovupd   YMMWORD PTR [2112+rsp+rax*8], ymm0            #29.22
        vmovupd   YMMWORD PTR [96+rsp+rax*8], ymm1              #29.5
        vmovupd   YMMWORD PTR [2144+rsp+rax*8], ymm0            #29.22
        add       rax, 16                                       #28.3
        cmp       rax, 256                                      #28.3
        jb        ..B1.2        # Prob 99%                      #28.3
                                # LOE rax rbx r12 r13 r14 r15 ymm0 ymm1
..B1.3:                         # Preds ..B1.2
# @breuera: removed white space for slides - start
  xor       eax, eax                                      #33.3
                                # LOE rax rbx r12 r13 r14 r15
..B1.4:                         # Preds ..B1.4 ..B1.3
  vmovupd   ymm0, YMMWORD PTR [rsp+rax*8]                 #34.16
  vmovupd   ymm2, YMMWORD PTR [32+rsp+rax*8]              #34.16
  vmovupd   ymm4, YMMWORD PTR [64+rsp+rax*8]              #34.16
  vmovupd   ymm6, YMMWORD PTR [96+rsp+rax*8]              #34.16
  vmulpd    ymm1, ymm0, YMMWORD PTR [2048+rsp+rax*8]      #34.27
  vmulpd    ymm3, ymm2, YMMWORD PTR [2080+rsp+rax*8]      #34.27
  vmulpd    ymm5, ymm4, YMMWORD PTR [2112+rsp+rax*8]      #34.27
  vmulpd    ymm7, ymm6, YMMWORD PTR [2144+rsp+rax*8]      #34.27
  vmovupd   YMMWORD PTR [4096+rsp+rax*8], ymm1            #34.5
  vmovupd   YMMWORD PTR [4128+rsp+rax*8], ymm3            #34.5
  vmovupd   YMMWORD PTR [4160+rsp+rax*8], ymm5            #34.5
  vmovupd   YMMWORD PTR [4192+rsp+rax*8], ymm7            #34.5
  add       rax, 16                                       #33.3
  cmp       rax, 256                                      #33.3
  jb        ..B1.4        # Prob 99%                      #33.3
# @breuera: removed white space for slides - end
                                # LOE rax rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.4
        xor       eax, eax                                      #38.16
        mov       r12, rax                                      #38.16
                                # LOE rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.8 ..B1.5
        mov       edi, offset flat: _ZSt4cout                   #39.15
        vmovsd    xmm0, QWORD PTR [4096+rsp+r12*8]              #39.15
        vzeroupper                                              #39.15
..___tag_value_main.9:                                          #39.15
        call      _ZNSolsEd                                     #39.15
..___tag_value_main.10:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.6
        mov       rdi, rax                                      #39.27
        mov       esi, offset flat: .L_2__STRING.0              #39.27
..___tag_value_main.11:                                         #39.27
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #39.27
..___tag_value_main.12:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
        inc       r12                                           #38.40
        cmp       r12, 256                                      #38.27
        jl        ..B1.6        # Prob 99%                      #38.27
                                # LOE rbx r12 r13 r14 r15
..B1.9:                         # Preds ..B1.8
        mov       edi, offset flat: _ZSt4cout                   #41.13
        mov       esi, offset flat: _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_ #41.13
..___tag_value_main.13:                                         #41.13
        call      _ZNSolsEPFRSoS_E                              #41.13
..___tag_value_main.14:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9
        xor       eax, eax                                      #42.1
        add       rsp, 6264                                     #42.1
..___tag_value_main.15:                                         #42.1
        pop       r12                                           #42.1
        mov       rsp, rbp                                      #42.1
        pop       rbp                                           #42.1
..___tag_value_main.16:                                         #
        ret                                                     #42.1
        .align    16,0x90
..___tag_value_main.18:                                         #
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
..___tag_value___sti__$E.19:                                    #
        push      rsi                                           #
..___tag_value___sti__$E.21:                                    #
        mov       edi, offset flat: _ZSt8__ioinit               #75.25
..___tag_value___sti__$E.22:                                    #75.25
        call      _ZNSt8ios_base4InitC1Ev                       #75.25
..___tag_value___sti__$E.23:                                    #
                                # LOE rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1
        mov       edi, offset flat: _ZNSt8ios_base4InitD1Ev     #75.25
        mov       esi, offset flat: _ZSt8__ioinit               #75.25
        mov       edx, offset flat: __dso_handle                #75.25
..___tag_value___sti__$E.24:                                    #75.25
        call      __cxa_atexit                                  #75.25
..___tag_value___sti__$E.25:                                    #
                                # LOE rbx rbp r12 r13 r14 r15
..B2.3:                         # Preds ..B2.2
        pop       rcx                                           #75.25
..___tag_value___sti__$E.26:                                    #
        ret                                                     #75.25
        .align    16,0x90
..___tag_value___sti__$E.27:                                    #
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
.L_2il0floatpacket.0:
	.long	0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,32
	.align 32
.L_2il0floatpacket.1:
	.long	0x00000000,0x40000000,0x00000000,0x40000000,0x00000000,0x40000000,0x00000000,0x40000000
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,32
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.0:
	.byte	32
	.byte	0
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
# mark_proc_addr_taken _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;
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
	.8byte ..___tag_value_main.18-..___tag_value_main.1
	.2byte 0x0400
	.4byte ..___tag_value_main.3-..___tag_value_main.1
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_main.4-..___tag_value_main.3
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.7-..___tag_value_main.4
	.8byte 0xff800d1c380e0c10
	.8byte 0xfffffff80d1affff
	.2byte 0x0422
	.4byte ..___tag_value_main.15-..___tag_value_main.7
	.2byte 0x04cc
	.4byte ..___tag_value_main.16-..___tag_value_main.15
	.4byte 0xc608070c
	.byte 0x00
	.4byte 0x00000024
	.4byte 0x00000074
	.8byte ..___tag_value___sti__$E.19
	.8byte ..___tag_value___sti__$E.27-..___tag_value___sti__$E.19
	.2byte 0x0400
	.4byte ..___tag_value___sti__$E.21-..___tag_value___sti__$E.19
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value___sti__$E.26-..___tag_value___sti__$E.21
	.2byte 0x080e
	.byte 0x00
# End
