/** @file
 * This file is part of the Advanced Progamming Lecture.
 *
 * @author Alexander Breuer (breuera AT in.tum.de, http://www5.in.tum.de/wiki/index.php/Dipl.-Math._Alexander_Breuer)
 *
 * @section LICENSE
 * Copyright (c) 2013-2014
 * Technische Universitaet Muenchen
 * Department of Informatics
 * Chair of Scientific Computing
 * http://www5.in.tum.de/
 *
 * @section DESCRIPTION
 * Examples of stream manipulators and a custom manipulator.
 **/

#include <iostream>
#include <iomanip>
#include <sstream> 

/**
 * Stream manipulator, which inserts the given number of tabs.
 **/
class Tabber {
  public:
    const unsigned int m_numberOfRepeats;
  
    /**
     * Constructor
     **/
    Tabber( unsigned int i_numberOfRepeats = 2 ):
     m_numberOfRepeats( i_numberOfRepeats ) {};

    /**
     * Overloads the "<<"-operator of ostream and does the manipulation
     **/
    friend std::ostream& operator<<( std::ostream &io_stream, const Tabber &i_tabber ) {
      // loop over the number of repeats
      for( unsigned l_repeat = 0; l_repeat < i_tabber.m_numberOfRepeats; l_repeat++ ) {
        io_stream << "\t";
      }

      return io_stream;
    }
};

int main() {
  char l_chars[4];
  std::cout << "please enter some characters: " << std::endl;

  // read first 4 chars only
  std::cin >> std::setw(4) >> l_chars;

  // print the chars
  std::cout << "first chars: " << l_chars << std::endl;

  double l_floatNumber = 1.0 / 7.0;
  int l_intNumber = 165;

  // different predefined stream manipulators
  std::cout << "precision 3: "
            << std::setprecision(3) << l_floatNumber
            << std::endl << "precision 20: "
            << std::setprecision(20) << l_floatNumber
            << std::endl << "hexadecimal: "
            << std::hex << std::showbase << l_intNumber
            << std::endl; 

  // call custom stream manipulator
  std::cout << "tab insertion test: " << Tabber(3) << "done.." << std::endl;

  return 0;
}
