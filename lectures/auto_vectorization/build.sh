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

g++ -O3 -ftree-vectorizer-verbose=6 simple_loop.cpp -o build/gcc_simple_loop.exe 2>&1 | tee vector_reports/gcc_simple_loop.log

g++ -O3 -ftree-vectorizer-verbose=6 countable.cpp -o build/gcc_non_countable.exe 2>&1 | tee vector_reports/gcc_non_countable_vec_report.log

g++ -O3 -ftree-vectorizer-verbose=6 -DCOUNTABLE countable.cpp -o build/gcc_countable.exe 2>&1 | tee vector_reports/gcc_countable_vec_report.log

g++ -O3 -ftree-vectorizer-verbose=6 masking.cpp -o build/gcc_masking.exe 2>&1 | tee vector_reports/gcc_masking_vec_report.log

g++ -O3 -ftree-vectorizer-verbose=6 read_after_write.cpp -o build/gcc_read_after_write.exe 2>&1 | tee vector_reports/gcc_read_after_write_vec_report.log


icpc -O2 -mavx -vec-report6 simple_loop.cpp -o build/intel_non_countable.exe 2>&1 | tee vector_reports/intel_simple_loop_vec_report.log

icpc -O2 -mavx -vec-report6 countable.cpp -o build/intel_non_countable.exe 2>&1 | tee vector_reports/intel_non_countable_vec_report.log

icpc -O2 -mavx -vec-report6 -DCOUNTABLE countable.cpp -o build/intel_countable.exe 2>&1 | tee vector_reports/intel_countable_vec_report.log

icpc -O2 -mavx -S -masm=intel countable.cpp
mv countable.s non_countable.s
icpc -O2 -mavx -S -masm=intel -DCOUNTABLE countable.cpp

icpc -O2 -mavx -vec-report6 masking.cpp -o build/intel_masking.exe 2>&1 | tee vector_reports/intel_masking_vec_report.log

icpc -DFUSE -O2 -mavx -vec-report6 nested_loops.cpp -o build/intel_nested_loops.exe 2>&1 | tee vector_reports/intel_no_nested_loops_vec_report.log

icpc -O2 -mavx -vec-report6 nested_loops.cpp -o build/intel_nested_loops.exe 2>&1 | tee vector_reports/intel_nested_loops_vec_report.log

icpc -O2 -mavx -vec-report6 read_after_write.cpp -o build/intel_read_after_write.exe 2>&1 | tee vector_reports/intel_read_after_write_vec_report.log


icpc -O2 -mavx -S -masm=intel simple_loop.cpp
icpc -O2 -mavx -S -masm=intel masking.cpp
icpc -DFUSE -O2 -mavx -S -masm=intel nested_loops.cpp
mv *.s assembly
