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
 * Runner, which executes the object oriented code in Molecular dynamics. 
 **/

#include "Molecules.h"

int main() {
  // initial dummy values
  double l_initialMolecule[6] = { 0.1, 0.2, 0.3,
                                  0.4, 0.5, 0.6 };
  int l_numberOfMolecules = 5000;
  double l_deltaT = 0.0001;

  std::cout << "creating a new molecules collection"
            << std::endl;
  Molecules l_molecules( 5000, 0.01 );
  
  std::cout << "occupied size: " << sizeof(l_molecules)
            << std::endl;

  std::cout << "initializing molecules"
            << std::endl;
  for( int l_moleculeId = 0; l_moleculeId < l_numberOfMolecules; l_moleculeId++ ) {
    l_molecules.setInitialValues( l_moleculeId,
                                  l_initialMolecule );
  }

  std::cout << "occupied size: " << sizeof(l_molecules)
            << std::endl;

  std::cout << "iterating over time"
            << std::endl;
  for( double l_time = 0.0; l_time < 0.5; l_time += l_deltaT ) {
    l_molecules.computeTimeStep();
  }

  std::cout << "finished." << std::endl;
}
