/** @file
 * This file is part of the Advanced Progamming lecture.
 *
 * @author Alexander Breuer (breuera AT in.tum.de, http://www5.in.tum.de/wiki/index.php/Dipl.-Math._Alexander_Breuer)
 *
 * @section LICENSE
 * Copyright (c) 2013
 * Technische Universitaet Muenchen
 * Department of Informatics
 * Chair of Scientific Computing
 * http://www5.in.tum.de/
 *
 * @section DESCRIPTION
 * Example, which shows an Array of Structures (AoS) implementation in simplified molecular dynamics.
 **/

// number of molecules
#define NUMBEROFMOLECULES 4000

// representation of a single molecule
typedef struct {
  // positions in x-, y- and z-direction
  double x, y, z;

  // velocities in x-, y- and z-direction
  double velocityX, velocityY, velocityZ;
} Molecule;

int main() {
  // declare an array of NUMBEROFMOLECULES molecules (64 byte aligned)
  Molecule l_molecules[NUMBEROFMOLECULES] __attribute__((aligned(64)));

  // initialize all molecules
  for( int l_molecule = 0; l_molecule < NUMBEROFMOLECULES; l_molecule++ ) {
    l_molecules[l_molecule].x         = 0.0;
    l_molecules[l_molecule].y         = 0.0;
    l_molecules[l_molecule].z         = 0.0;

    l_molecules[l_molecule].velocityX = l_molecule * 0.1;
    l_molecules[l_molecule].velocityY = l_molecule * 0.1;
    l_molecules[l_molecule].velocityZ = l_molecule * 0.1;
  }

  // define time step width
  double l_deltaT = 0.001;

  // iterate over time interval \f$ [0, 1] \f$ with time steps of \f$ \Delta t = 0.001 \f$.
  for( double l_currentTime = 0.; l_currentTime < 1.; l_currentTime += l_deltaT ) {
    // iterate over all molecules and update them according their positions and velocities
    for( int l_molecule = 0; l_molecule < NUMBEROFMOLECULES; l_molecule++ ) {
      l_molecules[l_molecule].x += l_deltaT * l_molecules[l_molecule].velocityX;
      l_molecules[l_molecule].y += l_deltaT * l_molecules[l_molecule].velocityY;
      l_molecules[l_molecule].z += l_deltaT * l_molecules[l_molecule].velocityZ;
    }

    // usually there would be some velocity computation here based on molecular interaction
  }
  
  return 0;
}
