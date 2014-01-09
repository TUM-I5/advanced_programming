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
 * Class implementation of a single bike. 
 **/

#include "Bike.h"

Bike::Bike( int i_numberOfGears ):
  m_speed(0),
  m_revolutions(0),
  m_gearShift(i_numberOfGears) {
  std::cout << "bike with " << i_numberOfGears 
            << " gears constructed" << std::endl; 
};

Bike::~Bike() {
  std::cout << "bike destroyed :(" << std::endl;
}

void Bike::changeGear( int i_gear ) {
  if( i_gear < m_gearShift.getCurrentGear() ) {
    // decrease gears until best possible gear is reached
    while( m_gearShift.decreaseGear() ) {
      if( i_gear == m_gearShift.getCurrentGear() ) break;
    }
  }
  else if( i_gear > m_gearShift.getCurrentGear() ) {
    // increase gearse until best possible gear is reached
    while( m_gearShift.increaseGear() ) {
      if( i_gear == m_gearShift.getCurrentGear() ) break;
    }
  }
}

void Bike::brake() {
  m_speed = std::max( 0.f, m_speed - 5.f );
  m_revolutions = m_speed * 25.f;
}

void Bike::changeCadence( float i_rpm ) {
  m_revolutions = std::max( 0.f, i_rpm );
  m_speed = m_revolutions * m_gearShift.getCurrentGear() / 25.f;
}

void Bike::printInformation() const {
  std::cout << "speed: " << m_speed << std::endl
            << "rpms: " << m_revolutions << std::endl
            << "gear: " << m_gearShift.getCurrentGear()
            << std::endl;
}
