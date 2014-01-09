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
 * Simple example which shows usage of a const member function. 
 **/

class SimpleClass {
  // private:
    int m_a;

  public:
    void simpleFunctions() const {
      // forbidden assignment
      // m_a = 5;
    }
};

int main() {
  SimpleClass l_simple;
  l_simple.simpleFunctions();
}
