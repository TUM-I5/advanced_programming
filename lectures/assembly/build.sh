#!/bin/bash

# @file
# This file is part of the Advanced Progamming lecture.
#
# @author Alexander Breuer (breuera AT in.tum.de, http://www5.in.tum.de/wiki/index.php/Dipl.-Math._Alexander_Breuer)
#
# @section LICENSE
# Copyright (c) 2013
# Technische Universitaet Muenchen
# Department of Informatics
# Chair of Scientific Computing
# http://www5.in.tum.de/
#
# @section DESCRIPTION
# Builds the code and list-files.
#

nasm -l listfiles/data_directives.l -f elf64 data_directives.asm
nasm -l listfiles/addressing.l      -f elf64 addressing.asm
nasm -l listfiles/hello_world.l     -f elf64 hello_world.asm

mkdir build
gcc hello_world.o -o build/hello_world 

icc -O2 -mavx -S -masm=intel high_level.c
mv *.s assembly
