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
 * Example, which shows a AoSoA implementation in simplified molecular dynamics.
 **/

// multiple of SIMD vector length
#define VECTORLENGTH 16

// #(simd-groups); * vector length == #(molecules)
#define NUMBEROFGROUPS 1000

// representation of a single molecule
typedef struct {
  // positions in x-, y- and z-direction
  double x[VECTORLENGTH], y[VECTORLENGTH], z[VECTORLENGTH];

  // velocities in x-, y- and z-direction
  double velocityX[VECTORLENGTH], velocityY[VECTORLENGTH], velocityZ[VECTORLENGTH];
} MoleculeGroup;

int main() {
  // define an array of NUMBEROFGROUPS*VECTORLENGTH molecules (64 byte aligned)
  MoleculeGroup l_molecules[NUMBEROFGROUPS] __attribute__((aligned(64)));

  // initialize all molecules
  for( int l_moleculeGroup = 0; l_moleculeGroup < NUMBEROFGROUPS; l_moleculeGroup++ ) {
    for( int l_molecule = 0; l_molecule < VECTORLENGTH; l_molecule++ ) {
      l_molecules[l_moleculeGroup].x[l_molecule]         = 0.0;
      l_molecules[l_moleculeGroup].y[l_molecule]         = 0.0;
      l_molecules[l_moleculeGroup].z[l_molecule]         = 0.0;

      l_molecules[l_moleculeGroup].velocityX[l_molecule] = (l_moleculeGroup * VECTORLENGTH + l_molecule) * 0.1;
      l_molecules[l_moleculeGroup].velocityY[l_molecule] = (l_moleculeGroup * VECTORLENGTH + l_molecule) * 0.1;
      l_molecules[l_moleculeGroup].velocityZ[l_molecule] = (l_moleculeGroup * VECTORLENGTH + l_molecule) * 0.1;
    }
  }

  // define time step width
  double l_deltaT = 0.001;

  // iterate over time interval \f$ [0, 1] \f$ with time steps of \f$ \Delta t = 0.001 \f$.
  for( double l_currentTime = 0.; l_currentTime < 1.; l_currentTime += l_deltaT ) {
    // iterate over all molecules and update them according their positions and velocities
    for( int l_moleculeGroup = 0; l_moleculeGroup < NUMBEROFGROUPS; l_moleculeGroup++ ) {
      for( int l_molecule = 0; l_molecule < VECTORLENGTH; l_molecule++ ) {
        l_molecules[l_moleculeGroup].x[l_molecule] += l_deltaT * l_molecules[l_moleculeGroup].velocityX[l_molecule];
        l_molecules[l_moleculeGroup].y[l_molecule] += l_deltaT * l_molecules[l_moleculeGroup].velocityY[l_molecule];
        l_molecules[l_moleculeGroup].z[l_molecule] += l_deltaT * l_molecules[l_moleculeGroup].velocityZ[l_molecule];
      }
    }

    // usually there would be some velocity computation here based on molecular interaction
  }
  
  return 0;
}
