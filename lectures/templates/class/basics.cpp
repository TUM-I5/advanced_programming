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
 * Shows basic usage of a class template. 
 **/

#include <iostream>

/*
 * Redundant implementation w\o templates.
 */
class PairDouble {
  //private:
    double m_firstValue;
    double m_secondValue;

  public:
    PairDouble( double i_first, double i_second):
     m_firstValue(  i_first  ),
     m_secondValue( i_second ) {};
};

class PairInt {
  //private:
    int m_firstValue;
    int m_secondValue;

  public:
    PairInt( int i_first, int i_second ):
     m_firstValue(  i_first  ),
     m_secondValue( i_second ) {};
};

/*
 * Class Template
 */
template< class T > class Pair {
  //private:
    T m_firstValue;
    T m_secondValue;

  public:
   Pair( T i_first, T i_second ):
     m_firstValue(  i_first  ),
     m_secondValue( i_second ){};
};

int main(){
  Pair< double > l_pairDouble( 5.1, 2.3 );
  Pair< int    > l_pairInt1(   2,   1   );
  Pair< int    > l_pairInt2(   3,   4   );
  Pair< long   > l_pairLong(   1,   2   ); 

  l_pairInt2 = l_pairInt1;

  // not allowed: template parameter missing
  //Pair( 1, 2 );

  // not allowed: differenct template classes
  //l_pairLong = l_pairInt1;
  //Pair<long> l_pairLong2( l_pairInt1 ); 

  return 0;
};
