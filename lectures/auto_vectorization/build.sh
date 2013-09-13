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

g++ -O3 -ftree-vectorizer-verbose=6 countable.cpp -o build/gcc_non_countable.exe 2>&1 | tee -a vector_reports/gcc_non_countable_vec_report.log

g++ -O3 -ftree-vectorizer-verbose=6 -DCOUNTABLE countable.cpp -o build/gcc_countable.exe 2>&1 | tee -a vector_reports/gcc_countable_vec_report.log

icpc -O2 -vec-report6 countable.cpp -o build/intel_non_countable.exe 2>&1 | tee -a vector_reports/intel_non_countable_vec_report.log

icpc -O2 -vec-report6 -DCOUNTABLE countable.cpp -o build/intel_countable.exe 2>&1 | tee -a vector_reports/intel_countable_vec_report.log
