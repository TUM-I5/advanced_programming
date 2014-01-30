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
 * Some advanced features of unique_ptr in C++11. 
 **/

#include <memory>
#include <iostream>

int main() {
  int l_size = 10;  
  std::unique_ptr< double[] > l_array1( new double[l_size] ); 

  // not allowed: copy constructor of unique_ptr
  //std::unique_ptr< double[] > l_array2( l_array1 );

  // change ownership of underlying raw pointer and memory
  std::unique_ptr< double[] > l_array2 = std::move(l_array1);

  // segmentation fault (pointer to NULL)
  //l_array1[0] = 5.2;

  l_array2[0] = 5.2;

  // give up ownership
  //l_array2.release();

  return 0;
}
