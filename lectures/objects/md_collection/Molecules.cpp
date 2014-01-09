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
 * Example, which shows an object-oriented AoS-implementation in simplified molecular dynamics.
 **/

#include "Molecules.h"

Molecules::Molecules( int    i_numberOfMolecules,
                      double i_deltaT ):
  m_numberOfMolecules( i_numberOfMolecules ),
  m_deltaT( i_deltaT ) {
  std::cout << "allocating memory for "
            << i_numberOfMolecules
            << " molecules" << std::endl;

  // allocate memory for the molecules 
  m_x = new double[i_numberOfMolecules];
  m_y = new double[i_numberOfMolecules];
  m_z = new double[i_numberOfMolecules];
  m_velocityX = new double[i_numberOfMolecules];
  m_velocityY = new double[i_numberOfMolecules];
  m_velocityZ = new double[i_numberOfMolecules];
}

Molecules::~Molecules() {
  std::cout << "freeing Memory" << std::endl;

  delete[] m_x,         m_y,         m_z,
           m_velocityX, m_velocityY, m_velocityZ;
}

void Molecules::setInitialValues(       int    i_moleculeId,
                                  const double i_values[6] ) {
  // assert that the id is in bound
  assert( i_moleculeId < m_numberOfMolecules );
  
  m_x[i_moleculeId] = i_values[0];
  m_y[i_moleculeId] = i_values[1];
  m_z[i_moleculeId] = i_values[2];

  m_velocityX[i_moleculeId] = i_values[3];
  m_velocityY[i_moleculeId] = i_values[4];
  m_velocityZ[i_moleculeId] = i_values[5];
}

void Molecules::computeTimeStep() {
  // iterate over all molecules of the collection
  for( int l_moleculeId = 0; l_moleculeId < m_numberOfMolecules; l_moleculeId++ ) {
    m_x[l_moleculeId] += m_deltaT * m_velocityX[l_moleculeId];
    m_y[l_moleculeId] += m_deltaT * m_velocityY[l_moleculeId];
    m_z[l_moleculeId] += m_deltaT * m_velocityZ[l_moleculeId];
  }
  // usually here would be same velocity computation based on molecular forces
}

void Molecules::printValues( int i_moleculeId ) const {
  // assert the the id is in bound
  assert( i_moleculeId < m_numberOfMolecules );

  std::cout << "x: "  << m_x[i_moleculeId] << std::endl
            << "y: "  << m_y[i_moleculeId] << std::endl
            << "z: "  << m_z[i_moleculeId] << std::endl
            << "vX: " << m_velocityX[i_moleculeId] << std::endl
            << "vY: " << m_velocityY[i_moleculeId] << std::endl
            << "vZ: " << m_velocityZ[i_moleculeId] << std::endl;
}
