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
 * Shows some requirements for function templates. 
 **/

#include <iostream>
#include <string>

class Custom {
  public:
    Custom( int i ){};
};

template< class T > T add( T i_first, T i_second ) {
  T l_result;
  l_result = i_first + i_second;

  return l_result;
}

int main(){
  std::cout << add( 3, 5 )           << std::endl;
  std::cout << add( 3.0, 5.0 )       << std::endl;
  std::cout << add( std::string( "3" ),
                    std::string( "5" ) ) << std::endl;

  Custom l_custom1(1), l_custom2(2);
  //add( l_custom1, l_custom2 ); not allowed

  return 0;
};
