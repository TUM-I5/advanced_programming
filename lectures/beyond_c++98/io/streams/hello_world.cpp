/** @file
 * This file is part of the Advanced Progamming Lecture.
 *
 * @author Alexander Breuer (breuera AT in.tum.de, http://www5.in.tum.de/wiki/index.php/Dipl.-Math._Alexander_Breuer)
 *
 * @section LICENSE
 * Copyright (c) 2013
 * Technische Universitaet Muenchen
 * Department of Informatics
 * Chair of Scientific Computing
 * http://www5.in.tum.de/
 *
 * @section DESCRIPTION
 * Simple example, which shows input and output via streams.
 **/

#include <iostream>
#include <string>

int main() {
  // print a welcome message and ask for input
  std::cout << "Welcome to hello_world."  << std::endl
            << "Please enter some input:" << std::endl;

  // user input
  std::string l_userInput;

  // get the input of the user
  std::cin >> l_userInput;

  if( l_userInput == "error" ) { // print to standard error stream
    std::cerr << "This is the error stream." << std::endl;
  }
  else { // print user input to standard output stream
    std::cout << "You entered: " << l_userInput  << std::endl;
  }

  return 0;
}
