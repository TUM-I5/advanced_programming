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
 * Shows the basic usage of a function template. 
 **/

#include <iostream>
#include <string>

/*
 * Redundant implementation w\o templates
 */
int addInt( int i_first, int i_second ) {
  return i_first + i_second;
}

double addDouble( double i_first, double i_second ) {
  return i_first + i_second;
}

/*
 * Function template
 */
template< class T > T add( T i_first, T i_second ) {
  return i_first + i_second;
}

int main(){
  std::cout << addInt( 3, 5 )        << std::endl;
  std::cout << addDouble( 3.0, 5.0 ) << std::endl;

  std::cout << add( 3, 5 )           << std::endl;
  std::cout << add( 3.0, 5.0 )       << std::endl;
  std::cout << add( std::string( "3" ),
                    std::string( "5" ) ) << std::endl;
  return 0;
};
