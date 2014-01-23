# mark_description "Intel(R) C++ Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 13.1.0.146 Build 20130";
# mark_description "121";
# mark_description "-S -masm=intel";
	.intel_syntax noprefix
	.file "calculator.cpp"
	.text
..TXTST0:
# -- Begin  main
# mark_begin;
       .align    16,0x90
	.globl main
main:
..B1.1:                         # Preds ..B1.0
..___tag_value_main.1:                                          #35.11
        push      rbp                                           #35.11
..___tag_value_main.3:                                          #
        mov       rbp, rsp                                      #35.11
..___tag_value_main.4:                                          #
        and       rsp, -128                                     #35.11
        sub       rsp, 128                                      #35.11
        mov       edi, 3                                        #35.11
..___tag_value_main.6:                                          #35.11
        call      __intel_new_proc_init                         #35.11
..___tag_value_main.7:                                          #
                                # LOE rbx r12 r13 r14 r15
..B1.9:                         # Preds ..B1.1
        stmxcsr   DWORD PTR [rsp]                               #35.11
        mov       edi, offset flat: _ZSt4cout                   #36.13
#@breuera - removed white-space for slides: start
mov       esi, 21    #36.13
#@breuera - removed white space for slides: end
        or        DWORD PTR [rsp], 32832                        #35.11
        ldmxcsr   DWORD PTR [rsp]                               #35.11
..___tag_value_main.8:                                          #36.13
        call      _ZNSolsEi                                     #36.13
..___tag_value_main.9:                                          #
                                # LOE rax rbx r12 r13 r14 r15
..B1.2:                         # Preds ..B1.9
        mov       rdi, rax                                      #36.45
        mov       esi, offset flat: _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_ #36.45
..___tag_value_main.10:                                         #36.45
        call      _ZNSolsEPFRSoS_E                              #36.45
..___tag_value_main.11:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.3:                         # Preds ..B1.2
        mov       edi, offset flat: _ZSt4cout                   #37.13
#@breuera - removed white space for slides: start
mov       esi, 720    #37.13
#@breuera - removed white space for slides: end
..___tag_value_main.12:                                         #37.13
        call      _ZNSolsEi                                     #37.13
..___tag_value_main.13:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.4:                         # Preds ..B1.3
        mov       rdi, rax                                      #37.45
        mov       esi, offset flat: _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_ #37.45
..___tag_value_main.14:                                         #37.45
        call      _ZNSolsEPFRSoS_E                              #37.45
..___tag_value_main.15:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.4
        xor       eax, eax                                      #39.10
        mov       rsp, rbp                                      #39.10
        pop       rbp                                           #39.10
..___tag_value_main.16:                                         #
        ret                                                     #39.10
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
        add       rsp, 8                                        #75.25
..___tag_value___sti__$E.24:                                    #
        jmp       __cxa_atexit                                  #75.25
        .align    16,0x90
..___tag_value___sti__$E.25:                                    #
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
	.4byte 0x00000034
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
	.4byte ..___tag_value_main.16-..___tag_value_main.4
	.8byte 0x00000000c608070c
	.byte 0x00
	.4byte 0x00000024
	.4byte 0x0000005c
	.8byte ..___tag_value___sti__$E.19
	.8byte ..___tag_value___sti__$E.25-..___tag_value___sti__$E.19
	.2byte 0x0400
	.4byte ..___tag_value___sti__$E.21-..___tag_value___sti__$E.19
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value___sti__$E.24-..___tag_value___sti__$E.21
	.2byte 0x080e
	.byte 0x00
# End
