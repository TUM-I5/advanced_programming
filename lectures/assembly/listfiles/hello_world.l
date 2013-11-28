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
    14                                  ; Very basic example, which moves the values in Register eax to ebx, multiplies both values and stores them into ecx.
    15                                  ;
    16                                  
    17                                  %macro system 0
    18                                          int 80h
    19                                  %endmacro
    20                                  
    21                                          section .data
    22                                  message:
    23 00000000 48656C6C6F2C20576F-             db      "Hello, World", 10
    24 00000009 726C640A           
    25                                  
    26                                          section .text
    27                                          global  main
    28                                  main:
    29                                          ; write(1, message, 13)
    30 00000000 B804000000                      mov    eax, 4       ; system call 4: write
    31 00000005 BB01000000                      mov    ebx, 1       ; file handle 1: stdout
    32 0000000A B9[00000000]                    mov    ecx, message ; address of string to write
    33 0000000F BA0D000000                      mov    edx, 13      ; number of bytes
    34                                          system
    35 00000014 CD80                <1>  int 80h
    36                                  
    37                                          ; exit(0)
    38 00000016 B801000000                      mov    eax, 1       ; system call 1 is exit
    39 0000001B BB00000000                      mov    ebx, 0       ; return 0
    40                                          system
    41 00000020 CD80                <1>  int 80h
    42                                  
    43                                  
