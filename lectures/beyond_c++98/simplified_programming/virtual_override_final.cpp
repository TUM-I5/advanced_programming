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
 * Virtual and override keywords in C++11. 
 **/

class Base {
  virtual void function1( float i_value );
  virtual void function2( float i_value );
};

class Derived1 final: public Base {
  // allowed
  virtual void function1( int i_value);
  // not allowed: different parameter
  //virtual void function1( int i_value ) override; 
};

// not allowed: Derived is final
//class Derived2: public Derived1{};

int main(){
  return 0;
};
