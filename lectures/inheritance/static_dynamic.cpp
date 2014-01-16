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
 * Example which shows the diffence between static and runtime decoding. 
 **/

#include <iostream>

class Base {
  //private:
  public:
    void staticPrint() {
      std::cout << "base" << std::endl;
    }

    virtual void dynamicPrint() {
      std::cout << "base" << std::endl;
    }
};

class Derived: public Base {
  //private:
  public:
    void staticPrint() {
      std::cout << "derived" << std::endl;
    }
    
    virtual void dynamicPrint() {
      std::cout << "derived" << std::endl;
    }
};

int main() {
  Base l_base;
  l_base.staticPrint();
  l_base.dynamicPrint();

  Derived l_derived;
  l_derived.staticPrint();
  l_derived.dynamicPrint();

  Base *l_derivedPointer = &l_derived;
  l_derivedPointer->staticPrint();
  l_derivedPointer->dynamicPrint();
}
