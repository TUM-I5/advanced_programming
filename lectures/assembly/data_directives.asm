; @file
; This file is part of the Advanced Progamming lecture.
;
; @author Alexander Breuer (breuera AT in.tum.de, http://www5.in.tum.de/wiki/index.php/Dipl.-Math._Alexander_Breuer)
;
; @section LICENSE
; Copyright (c) 2013
; Technische Universitaet Muenchen
; Department of Informatics
; Chair of Scientific Computing
; http://www5.in.tum.de/
;
; @section DESCRIPTION
; Pseudo-instructions for Data-Directives. Based on the examples from: http://www.nasm.us/doc/nasmdoc3.html
;

; initialized data
section .data
    db    0x55               ; just the byte 0x55
    db    0x55,0x56,0x57     ; three bytes in succession
    db    'a',0x55           ; character constants are OK 
    db    'hello',13,10,'$'  ; so are string constants 
    dw    0x1234             ; 0x34 0x12 
    dw    'a'                ; 0x61 0x00 (it's just a number) 
    dw    'ab'               ; 0x61 0x62 (character constant) 
    dw    'abc'              ; 0x61 0x62 0x63 0x00 (string) 
    dd    0x12345678         ; 0x78 0x56 0x34 0x12 
    dd    1.234567e20        ; floating-point constant 
    dq    0x123456789abcdef0 ; eight byte constant 
    dq    1.234567e20        ; double-precision float 
    dt    1.234567e20        ; extended-precision float

; uninitialized data
section .bss
  buffer:
    resb    64               ; reserve 64 bytes 
  wordvar:
    resw    1                ; reserve a word 
  realarray:
    resq    10               ; array of ten reals 
  ymmval:
    resy    1                ; one YMM register

section .text
