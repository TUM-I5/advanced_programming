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
 * Cilk parallelization in simplified molecular dynamics.
 **/
#include <cilk/cilk.h>

//number of molecules
#define NUMBEROFMOLECULES 4000

// representation of a single molecule
typedef struct {
  // positions in x-, y- and z-direction (64 byte aligned)
  double x[NUMBEROFMOLECULES] __attribute__((aligned(64))),
         y[NUMBEROFMOLECULES] __attribute__((aligned(64))),
         z[NUMBEROFMOLECULES] __attribute__((aligned(64)));

  // velocities in x-, y- and z-direction (64 byte aligned)
  double velocityX[NUMBEROFMOLECULES] __attribute__((aligned(64))),
         velocityY[NUMBEROFMOLECULES] __attribute__((aligned(64))),
         velocityZ[NUMBEROFMOLECULES] __attribute__((aligned(64)));
} __attribute__((aligned(64))) Molecules;

int main() {
  // declare an array of NUMBEROFMOLECULES molecules
  Molecules l_molecules;

  // initialize all molecules
  for( int l_molecule = 0; l_molecule < NUMBEROFMOLECULES; l_molecule++ ) {
    l_molecules.x[l_molecule]         = 0.0;
    l_molecules.y[l_molecule]         = 0.0;
    l_molecules.z[l_molecule]         = 0.0;

    l_molecules.velocityX[l_molecule] = l_molecule * 0.1;
    l_molecules.velocityY[l_molecule] = l_molecule * 0.1;
    l_molecules.velocityZ[l_molecule] = l_molecule * 0.1;
  }

  // define time step width
  double l_deltaT = 0.001;

  // iterate over time interval \f$ [0, 1] \f$ with time steps of \f$ \Delta t = 0.001 \f$.
  for( double l_currentTime = 0.; l_currentTime < 1.; l_currentTime += l_deltaT ) {
    // iterate over all molecules and update them according their positions and velocities
    cilk_for( int l_molecule = 0; l_molecule < NUMBEROFMOLECULES; l_molecule++ ) {
      l_molecules.x[l_molecule] += l_deltaT * l_molecules.velocityX[l_molecule];
      l_molecules.y[l_molecule] += l_deltaT * l_molecules.velocityY[l_molecule];
      l_molecules.z[l_molecule] += l_deltaT * l_molecules.velocityZ[l_molecule];
    }

    // usually there would be some velocity computation here based on molecular interaction
  }
 
  return 0;
}
