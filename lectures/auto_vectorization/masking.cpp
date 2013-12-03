/** @file
 * This file is part of the Advanced Progamming lecture.
 *
 * @author Alexander Breuer (breuera AT in.tum.de, http://www5.in.tum.de/wiki/index.php/Dipl.-Math._Alexander_Breuer)
 *
 * @section LICENSE
 * Copyright (c) 2013
 * Technische Universitaet Muenchen
 * Department of Informatics
 * Chair of Scientific Computing
 * http://www5.in.tum.de/
 *
 * @section DESCRIPTION
 * Simple loop, which shows masking as part of auto-vectorization.
 **/

#include <iostream>

#ifndef VECTOR_SIZE
#define VECTOR_SIZE 256
#endif

int main() {
  // three arrays of fixed size
  double l_a[VECTOR_SIZE] __attribute__((aligned(64))),
         l_b[VECTOR_SIZE] __attribute__((aligned(64))),
         l_c[VECTOR_SIZE] __attribute__((aligned(64)));

  // initialize input arrays
  for( int l_i = 0; l_i < VECTOR_SIZE; l_i++ ) {
    l_a[l_i]  = 1.0; l_b[l_i] = 2.0;
  }

  // multiply or divide input a and b
  for( int l_i = 0; l_i < VECTOR_SIZE; l_i++ ) {
    if( l_a[l_i] < 0 ) {
      l_c[l_i] = l_a[l_i] * l_b[l_i];
    }
    else {
      l_c[l_i] = l_a[l_i] + l_b[l_i];
    }
  }

  // print the result
  for( int l_i = 0; l_i < VECTOR_SIZE; l_i++ ) {
    std::cout << l_c[l_i] << " ";
  }
  std::cout << std::endl;
}
