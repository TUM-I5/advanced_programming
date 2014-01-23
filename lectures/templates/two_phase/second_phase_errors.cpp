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
 * Shows errors in the second phase of the two-phase lookup. 
 **/

#include <iostream>

template< class T > class MyTemplateClass {
  public:
    MyTemplateClass() {
      std::cout << "MyTemplateClass" << std::endl;
    }

    int function1( T i_value ) {
     return i_value % 3;
    }

    void function2() {
      T::doSomething(); // calls a function of class T
    }

    void function3( T i_value ) {
      i_value+=+"?"; // soem strange operator
    }
};

int main(){
  // compiles fine
  MyTemplateClass<double> l_class1;
  MyTemplateClass<int>    l_class2;

  std::cout << l_class2.function1( 5 ) << std::endl;

  // not ok
  l_class1.function1( 5 );
  l_class1.function2();
  l_class2.function2();
  l_class1.function3( 5 );

  return 0;
};
