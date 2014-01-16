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
 * Const cast operator. 
 **/

#include <iostream>

void print( int &i ) {
  std::cout << i << std::endl;
} 

int main() {
  const int l_int = 27;

  // not allowed: print(..) is allowed to modify l_int
  //print( l_int );

  print( const_cast<int&>(l_int) );

  return 0;
}
