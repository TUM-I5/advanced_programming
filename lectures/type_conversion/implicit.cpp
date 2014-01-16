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
 * Implicit type conversions. 
 **/

#include <iostream>

int main(){
  unsigned int l_uint1 = -1;
  unsigned int l_uint2 = -2;
  unsigned int l_uint3 = -1 + 1;
  int l_int1           = true;
  int l_bool1          = -15;
  double* l_pointer    = false;
  bool l_bool2         = l_pointer;
  int l_int2           = 3.9;
  float l_float1       = 5 / 2;
  float l_float2       = l_float1 * 0.5; // where's the implicit typecast?

  std::cout << l_uint1    << std::endl;
  std::cout << l_uint2    << std::endl;
  std::cout << l_uint3    << std::endl;
  std::cout << l_bool1    << std::endl;
  std::cout << l_int1     << std::endl;
  std::cout << l_pointer  << std::endl;
  std::cout << l_bool2    << std::endl;
  std::cout << l_int2     << std::endl;
  std::cout << l_float1   << std::endl;
  std::cout << l_float2   << std::endl;

  return 0;
};
