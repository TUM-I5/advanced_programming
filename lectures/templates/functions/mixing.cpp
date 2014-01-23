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
 * Shows some mixed template and non-template arguments. 
 **/

#include <iostream>

template< class T > T product( T *i_values, int i_size ) {
  T l_result = i_values[0];

  for( int l_entry = 1; l_entry < i_size; l_entry++ ) {
    l_result *= i_values[l_entry];
  }

  return l_result;
}

int main(){
  double l_array[5] = {-1.5, 1.4, 5.2, -6.1, 2.9};

  std::cout << product(l_array, 5) << std::endl;
  std::cout << product(l_array, 5.2) << std::endl; // implicit cast to int

  return 0;
};
