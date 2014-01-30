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
 * unique_ptr in C++11. 
 **/

#include <memory>
#include <iostream>

class Simple {
  public:
    double m_value;
};

template<class T> void print( int i_size, const std::unique_ptr<T> &i_array ) {
  for( int l_i = 0; l_i < i_size; l_i++ ) {
    std::cout << i_array[l_i].m_value << std::endl;
  }
}

int main() {
  int l_size = 10;
  
  std::unique_ptr< Simple[] > l_simpleArray( new Simple[l_size] ); 

  for( int l_i = 0; l_i < l_size; l_i++ ) {
    l_simpleArray[l_i].m_value = l_i;
  }

  print<Simple[]>( l_size, l_simpleArray );

  return 0;
}
