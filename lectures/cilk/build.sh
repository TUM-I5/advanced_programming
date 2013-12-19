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
# Builds the cilk code and generates example output.
#

mkdir build
mkdir output
clang++ -O2 -fcilkplus hello_world.cpp -o build/clang_hello_world.exe
clang++ -O2 -fcilkplus hello_world_strands.cpp -o build/clang_hello_world_strands.exe
clang++ -O2 -fcilkplus molecular_dynamics.cpp -o build/clang_molecular_dynamics.exe


icpc -O2 hello_world.cpp -o build/intel_hello_world.exe
icpc -O2 hello_world_strands.cpp -o build/intel_hello_world_strands.exe
icpc -O2 molecular_dynamics.cpp -o build/intel_molecular_dynamics.exe

# serial execution
CILK_NWORKERS=1 build/intel_hello_world.exe > output/intel_serial_hello_world.out
CILK_NWORKERS=1 build/clang_hello_world.exe > output/clang_serial_hello_world.out

# parallel execution
build/intel_hello_world.exe > output/intel_parallel_hello_world.out
build/clang_hello_world.exe > output/clang_parallel_hello_world.out
