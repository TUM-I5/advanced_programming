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
 * null_ptr in C++11. 
 **/

#include <cstddef>

int main(){
  int *l_pointer1 = NULL;
  int *l_pointer2 = nullptr;

  int l_int1 = NULL;
  //int l_int2 = nullptr; // not allowed: invalid conversion

  return 0;
};
