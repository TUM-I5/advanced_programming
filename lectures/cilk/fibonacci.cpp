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
 * Computes Fibonacci numbers in parallel using cilk.
 **/

#include <ctime>
#include <iostream>

#include <cilk/cilk.h>

/**
 * Computes the nth Fibonacci number.
 * @param i_n nth Fibonacci number to compute.
 **/
int computeFibonacciNumber( int i_n ) {
  if( i_n > 1 ) {
    int l_nM1 = cilk_spawn computeFibonacciNumber( i_n-1 );
    int l_nM2 = computeFibonacciNumber( i_n-2 );
    cilk_sync;

    return l_nM1 + l_nM2;
  }
  else if( i_n == 1 )
    return 1;
  else
    return 0;

  // implied cilk_sync at the end of computeFibonacciNumber
}

int main() {
  // n-th Fibonacci number to compute
  int l_n = 41;

  // do the computation
  int l_fibonacciNumber = computeFibonacciNumber( l_n );

  // print the result
  std::cout << l_n << "th Fibonacci number: " << l_fibonacciNumber << std::endl;

  // implied cilk_sync at the end of main()
}
