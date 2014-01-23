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
 * Shows multiple template arguments. 
 **/

#include <iostream>

template< class T1, class T2 > void print( T1 i_value1, T2 i_value2, int i_repeats ) {
  for( int l_repeat = 0; l_repeat < i_repeats; l_repeat++ ) {
    std::cout << i_value1 << std::endl;
    std::cout << i_value2 << std::endl;
  }
}

int main(){
  print( 5.0, 1, 5 );
  print( long(2), 1.2f, 2 );
  print( 'a', 'b', 27.3 ); // typecast: non-template arg.
  print< double, int >( 'a', 'b', 27.3 ); // typecast: (non-)template args.

  return 0;
};
