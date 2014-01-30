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
 * Search in C++11. 
 **/

#include <vector>
#include <algorithm>
#include <iostream>

int main(){
  std::vector<int> l_vector;

  for( int l_i = 0; l_i < 23; l_i++ ) {
    l_vector.push_back( l_i );
  }

  if( std::any_of( l_vector.begin(),
                   l_vector.end(),
                   []( int io_value ){ return (io_value == 17 );  } ) ) {
    std::cout << "found 17!" << std::endl;
  };

  return 0;
};
