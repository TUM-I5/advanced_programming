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
 * Example which shows the importance of a virtual destructors for derived classes. 
 **/

#include <iostream>

class Base {
  //private:
  public:
    virtual ~Base() { std::cout << "clean up after Base" << std::endl; }
    
    // usually bad practive: not virtual for a base class
    //~Base() { std::cout << "clean up after Base" << std::endl; }
};

class Derived: public Base {
  //private:
  public:
    virtual ~Derived() { std::cout << "clean up after Derived" << std::endl; }
};

int main() {
  Base l_base;
  Derived l_derived;
  
  Base    *l_pointerToBase     = new Base;
  Derived *l_pointerToDerived1 = new Derived;
  Base    *l_pointerToDerived2 = new Derived;

  delete l_pointerToBase;
  delete l_pointerToDerived1;
  delete l_pointerToDerived2; // might cause trouble 
  return 0;
}
