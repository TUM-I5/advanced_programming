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
 * Simple example which shows usage of a static member function. 
 **/

#include <iostream>

class SimpleClass {
  // private:
    static int s_simpleCounter;

  public:
    static void increaseCounter(){ s_simpleCounter++; };
    static void printCounter(){ std::cout << s_simpleCounter << std::endl; };
};

int SimpleClass::s_simpleCounter = 1;

int main() {
  SimpleClass::printCounter();
  SimpleClass::increaseCounter();
  SimpleClass::printCounter();
}
