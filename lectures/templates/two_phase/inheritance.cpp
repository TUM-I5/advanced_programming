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
 * Shows a second phase error due to inheritance. 
 **/

#include <iostream>

template< class T > class Base {
  public: void b(){};
};

template< class T > class Derived: public Base<T> {
  public:
    void d(){
      //b(); // non-dependent: error
      this->b(); // dependent: works
      //this->a(); // would fail in the second phase
    };
};

int main(){
  Derived<double> l_derived;
  l_derived.d();

  return 0;
};
