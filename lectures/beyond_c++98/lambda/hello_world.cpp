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

#include <iostream>

int main(){
  std::string l_outside = "Hello World ";

  ( [&l_outside](int i_input){
    std::cout << l_outside
              << i_input
              << std::endl; }
  )( 123 );

  return 0;
};
