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
    14                                  ; Example for different addressing modes in assembly. Based on the examples from Lomont, "Introduction to x64 Assembly"
    15                                  ;
    16                                  
    17                                  section .data
    18                                  ; nothing here
    19                                  
    20                                  section .bss
    21                                  ; nothing here
    22                                  
    23                                  section .text
    24 00000000 040D                      add byte al,  13          ; immediate access, which adds 13 as a byte to register al
    25 00000002 00D8                      add byte al,  bl          ; register to register access, which adds the byte value of bl to al
    26 00000004 66448B04C1                mov      r8w, [8*rax+rcx] ; move word at address 8*rax+rcx into register r8w
    27 00000009 8A05FAFFFFFF              mov      al,  [rel $]     ; address relative to the next instruction (nop)
    28 0000000F 90                        nop
