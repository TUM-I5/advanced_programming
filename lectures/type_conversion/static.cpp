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
 * Static cast operator. 
 **/

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
  Base    *l_pointer1 = new Base;
  Derived *l_pointer2 = static_cast<Derived*>(l_pointer1);
  // not allowed for static casts
  //int     *l_pointer3 = static_cast<int*>(l_pointer2);

  return 0;
}
