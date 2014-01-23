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
 * Shows errors in the first phase of the two-phase lookup. 
 **/

#include <iostream>

template< int N > class MyTemplateClass {
  public:
    void error1() {
      float l_array[]]; // ] redundant
    }

    void error2() {
      helloWorld(); // function does not exist
    }
};

int main(){
  // we never use the class template above 

  return 0;
};
