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
; Example for different addressing modes in assembly. Based on the examples from Lomont, "Introduction to x64 Assembly"
;

section .data
; nothing here

section .bss
; nothing here

section .text
  add byte al,  13          ; immediate access, which adds 13 as a byte to register al
  add byte al,  bl          ; register to register access, which adds the byte value of bl to al
  mov      r8w, [8*rax+rcx] ; move word at address 8*rax+rcx into register r8w
  mov      al,  [rel $]     ; address relative to the next instruction (nop)
  nop
