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
 * C-like and functional type casting. 
 **/

#include <iostream>

int main(){
  double l_double = 3.9;

  int l_int1 = (int) l_double;  // C-like
  int l_int2 = int  (l_double); // functional

  std::cout << l_double << std::endl;
  std::cout << l_int1   << std::endl;
  std::cout << l_int2   << std::endl;

  return 0;
};
