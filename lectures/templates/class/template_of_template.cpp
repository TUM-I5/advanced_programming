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
 * Shows usage of a template classe as part of a template class. 
 **/

#include <iostream>

template< class T > class Pair {
  public:
    T m_firstValue;
    T m_secondValue;

    friend std::ostream &operator<<(std::ostream &io_stream, const Pair &i_pair ) {
      return io_stream << i_pair.m_firstValue << " " << i_pair.m_secondValue;
    }
};

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
  SoA< Pair<double>, int, 5 > l_soa;

  for( int l_i = 0; l_i < l_soa.m_size; l_i++ ) {
    l_soa.m_firstArray[l_i].m_firstValue = 1.0/(l_i+1);
    l_soa.m_firstArray[l_i].m_secondValue = 1.0/( (l_i+1) * (l_i+1) );
    l_soa.m_secondArray[l_i] = l_i * l_i;
  }
  l_soa.print();

  return 0;
};
