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
 * Shows what functions are generated in templates classes of a class template. 
 **/

#include <iostream>
#include <string>

template< class T > class HelloWorld {
  //private:
  T m_data;

  public:
    HelloWorld( const T &i_data ) {
      m_data = i_data;
    }

    void print() const {
      std::cout << "hello world: "
                << m_data << std::endl;
    }

    void setData( const T &i_data ) {
      m_data = i_data;
    }
};

int main(){
  HelloWorld<int>         l_helloWorld1(16);
  HelloWorld<std::string> l_helloWorld2(std::string("really.."));

  l_helloWorld2.print();
  l_helloWorld2.setData( std::string("changed!") );
  l_helloWorld2.print();

  return 0;
};
