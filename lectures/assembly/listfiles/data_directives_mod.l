     1                                  ; @file
     2                                  ; This file is part of the Advanced Progamming lecture.
     3                                  ;
     4                                  ; @author Alexander Breuer (breuera AT in.tum.de, http://www5.in.tum.de/wiki/index.php/Dipl.-Math._Alexander_Breuer)
     5                                  ;
     6                                  ; @section LICENSE
     7                                  ; Copyright (c) 2013
     8                                  ; Technische Universitaet Muenchen
     9                                  ; Department of Informatics
    10                                  ; Chair of Scientific Computing
    11                                  ; http://www5.in.tum.de/
    12                                  ;
    13                                  ; @section DESCRIPTION
    14                                  ; Pseudo-instructions for Data-Directives. Based on the examples from: http://www.nasm.us/doc/nasmdoc3.html
    15                                  ;
    16; @breuera: Removed white-space and comments for slides    
    17                                  ; initialized data
    18                         section .data
    19 00000000 55                  db  0x55
    20 00000001 555657              db  0x55,0x56,0x57
    21 00000004 6155                db  'a',0x55
    22 00000006 68656C6C6F0D0A24    db  'hello',13,10,'$'
    23 0000000E 3412                dw  0x1234
    24 00000010 6100                dw  'a' 
    25 00000012 6162                dw  'ab'  
    26 00000014 61626300            dw  'abc'    
    27 00000018 78563412            dd  0x12345678 
    28 0000001C CA29D660            dd  1.234567e20  
    29 00000020 F0DEBC9A78563412    dq  0x123456789abcdef0
    30 00000028 DF87313A39C51A44    dq  1.234567e20
    31 00000030 00F83E8CD1C929D641- dt  1.234567e20
    32 00000039 40                 
    33                                  
    34                                  ; uninitialized data
    35                     section .bss
    36                       buffer:
    37 00000000 <res 00000040> resb    64
    38                       wordvar:
    39 00000040 <res 00000002> resw    1
    40                       realarray:
    41 00000042 <res 00000050> resq    10
    42                       ymmval:
    43 00000092 <res 00000020> resy    1
    44                                  
    45                     section .text
