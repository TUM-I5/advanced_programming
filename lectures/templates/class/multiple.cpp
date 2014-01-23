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
 * Shows usage of multiple type and non-type template parameters. 
 **/

#include <iostream>

template< class T1, class T2, int SIZE > class SoA {
  public:
    const int m_size;

    T1 m_firstArray[SIZE];
    T2 m_secondArray[SIZE];
    
    SoA(): m_size(SIZE){};

    void print() {
      for( int l_i = 0; l_i < SIZE; l_i++ ) {
        std::cout << m_firstArray[l_i]  << std::endl;
        std::cout << m_secondArray[l_i] << std::endl;
      }
    }
};

int main(){
  SoA<double, long, 10> l_soa;

  for( int l_i = 0; l_i < l_soa.m_size; l_i++ ) {
    l_soa.m_firstArray[l_i] = 1.0/(l_i+1);
    l_soa.m_secondArray[l_i] = l_i * l_i;
  }

  l_soa.print();

  return 0;
};
