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
 * Range based loop example in C++11. 
 **/

#include <vector>
#include <iostream>

int main(){

  std::vector<int> l_vector;
  l_vector.push_back(  2 );
  l_vector.push_back( 10 );
  l_vector.push_back(  4 );

  for( auto &l_value: l_vector )
    std::cout << l_value << std::endl; 

  return 0;
};
