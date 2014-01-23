/** @file
 * This file is part of the Advanced Progamming lecture.
 *
 * @author Alexander Breuer (breuera AT in.tum.de, http://www5.in.tum.de/wiki/index.php/Dipl.-Math._Alexander_Breuer)
 *
 * @section LICENSE
 * Copyright (c) 2014
 * Technische Universitaet Muenchen
 * Department of Informatics
 * Chair of Scientific Computing
 * http://www5.in.tum.de/
 *
 * @section DESCRIPTION
 * Shows computations of sums and factorials using template-meta programming. 
 **/

#include <iostream>

template< int N > class MetaCalculator {
  public:
   enum {
     sum       = N + MetaCalculator<N-1>::sum,
     factorial = N * MetaCalculator<N-1>::factorial
   };
};

template<> class MetaCalculator<1> {
  public:
   enum {
     sum       = 1,
     factorial = 1
   };
};

int main(){
  std::cout << MetaCalculator<6>::sum       << std::endl;
  std::cout << MetaCalculator<6>::factorial << std::endl;

  return 0;
};
