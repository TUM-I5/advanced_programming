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
 * Hello world using lambda expressions in C++11. 
 **/

#include <cassert>
#include <algorithm>
#include <iostream>

int main(){
  std::function<int(int)> l_fibonacci = [&l_fibonacci]( int io_n ) -> int {
    assert( io_n > 0 );

    if( io_n == 1 || io_n == 2 ) {
      return 1;
    }
    else{
      return l_fibonacci( io_n-1 ) + l_fibonacci( io_n-2 );
    }
  };

  std::cout << l_fibonacci(10) << std::endl;
  std::cout << l_fibonacci(4) << std::endl;

  return 0;
};
