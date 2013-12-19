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
# Builds the code and generates vector reports.
#

mkdir build
mkdir vector_reports
mkdir assembly

g++ -O3 -ftree-vectorizer-verbose=6 array_of_structures.cpp -o build/gcc_array_of_structures.exe 2>&1 | tee vector_reports/gcc_array_of_structures_vec_report.log
g++ -O3 -ftree-vectorizer-verbose=6 structure_of_arrays.cpp -o build/gcc_structure_of_arrays.exe 2>&1 | tee vector_reports/gcc_structure_of_arrays_vec_report.log
g++ -O3 -ftree-vectorizer-verbose=6 hybrid_soa.cpp -o build/gcc_hybrid_soa.exe 2>&1 | tee vector_reports/gcc_hybrid_soa_vec_report.log

icpc -O2 -mavx -vec-report6 array_of_structures.cpp -o build/intel_array_of_structures.exe 2>&1 | tee vector_reports/intel_array_of_structures_vec_report.log
icpc -O2 -mavx -vec-report6 structure_of_arrays.cpp -o build/intel_structure_of_arrays.exe 2>&1 | tee vector_reports/intel_structure_of_arrays_vec_report.log
icpc -O2 -mavx -vec-report6 hybrid_soa.cpp -o build/intel_hybrid_soa.exe 2>&1 | tee vector_reports/intel_hybrid_soa_vec_report.log

icpc -O2 -mavx -S -masm=intel array_of_structures.cpp
icpc -O2 -mavx -S -masm=intel structure_of_arrays.cpp
icpc -O2 -mavx -S -masm=intel hybrid_soa.cpp
mv *.s assembly
