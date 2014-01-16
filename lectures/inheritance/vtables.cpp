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
 * Illustrative code for vtables and vpointers. 
 **/

class Base {
  public:
    virtual      ~Base() {}
    void         function1(){}
    virtual void function2(){}
    virtual void function3(){}
    virtual void function4(){}
};

class Derived: public Base {
  public: 
    virtual      ~Derived() {}
    virtual void function4(){}
    virtual void function5(){}
    void         function6(){};
};

int main(){
  Base l_base;
  Derived l_derived;
}
