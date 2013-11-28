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
; Example, which shows ABI interaction.
;

%macro system 0
        int 80h
%endmacro

        section .data
message:
        db      "Hello, World", 10

        section .text
        global  main
main:
        ; write(1, message, 13)
        mov    eax, 4       ; system call 4: write
        mov    ebx, 1       ; file handle 1: stdout
        mov    ecx, message ; address of string to write
        mov    edx, 13      ; number of bytes
        system

        ; exit(0)
        mov    eax, 1       ; system call 1 is exit
        mov    ebx, 0       ; return 0
        system


