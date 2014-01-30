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
 * Hello World using regular expressions in C++11. 
 **/

#include <regex>
#include <iostream>

int main(){
  std::string l_helloWorld = "Hello and some words in between, which don't belong here. .World";
  //std::string l_helloWorld = "HelloWorld";
  //std::string l_helloWorld = "Helo World"; // no match

  std::regex l_helloRegEx( "Hello(.)*World" );

  if( std::regex_match(l_helloWorld.begin(), l_helloWorld.end(), l_helloRegEx ) ) {
    std::cout << "Hello World!" << std::endl;
  }
  else {
    std::cout << ":(" << std::endl;
  }


  return 0;
};
