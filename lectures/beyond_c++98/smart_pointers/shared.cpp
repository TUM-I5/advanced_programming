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
 * shared_ptr in C++11. 
 **/

#include <memory>
#include <vector>
#include <iostream>

template<class T> void function( std::shared_ptr<T> &o_pointer ) {
  std::shared_ptr< std::vector<double> > l_pointer( new std::vector<double> ); // reference counter: 1
  o_pointer = l_pointer; // reference counter: 2

  for( int l_i = 0; l_i < 10; l_i++ ) {
    l_pointer->push_back(l_i);
  }
} // reference counter: 1

int main() {
  int l_size = 10;  

  std::shared_ptr< std::vector<double> > l_pointer;
  function< std::vector< double> >( l_pointer );

  for( int l_i = 0; l_i < 10; l_i++ )
    std::cout << l_pointer->at(l_i) << std::endl;
  return 0;
} // reference counter: 0
