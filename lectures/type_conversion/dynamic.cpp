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
 * Dynamic cast operator. 
 **/

#include <iostream>

class Base {
  //private:
  public:
    virtual ~Base(){};
};

class Derived: public Base {
  //private:
  public:
    virtual ~Derived(){};
};

int main() {
  Base*    l_pointerToDerived1 = new Derived;
  Base*    l_pointerToBase     = new Base;
  // not allowed: implicit down cast 
  //Derived* l_pointerToDerived2 = l_pointerToDerived1;
  //Derived* l_pointerToDerived3 = l_pointerToBase;

  Derived* l_pointerToDerived4 = dynamic_cast<Derived*>( l_pointerToDerived1 );
  Derived* l_pointerToDerived5 = dynamic_cast<Derived*>( l_pointerToBase     );

  if( l_pointerToDerived4 ) std::cout << "first cast works" << std::endl;
  else                      std::cout << "first cast returns NULL" << std::endl;
  
  if( l_pointerToDerived5 ) std::cout << "second cast works" << std::endl;
  else                      std::cout << "second cast returns NULL" << std::endl;

  return 0;
}
