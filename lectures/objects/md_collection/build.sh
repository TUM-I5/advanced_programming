#!/bin/bash

# @file
# This file is part of the Advanced Progamming lecture.
#
# @author Alexander Breuer (breuera AT in.tum.de, http://www5.in.tum.de/wiki/index.php/Dipl.-Math._Alexander_Breuer)
#
# @section LICENSE
# Copyright (c) 2014
# Technische Universitaet Muenchen
# Department of Informatics
# Chair of Scientific Computing
# http://www5.in.tum.de/
#
# @section DESCRIPTION
# Generates assembly code and vector reports.
#

g++ -O3 -ftree-vectorizer-verbose=6 -c Molecules.cpp 2>&1 | tee vector_report_gcc.log
icpc -O2 -mavx -vec-report6 Molecules.cpp 2>&1 | tee vec_report_intel.log

icpc -O2 -mavx -S -masm=intel Molecules.cpp
