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
 * Class implementation of gear shift. 
 **/

#include "GearShift.h"

GearShift::GearShift( int i_numberOfGears ):
  m_numberOfGears( i_numberOfGears ),
  m_gear( 0 ) {};

bool GearShift::increaseGear() {
  if( m_gear < m_numberOfGears ) {
    m_gear++;
    return true;
  }
  return false;
}

bool GearShift::decreaseGear() {
  if( m_gear > 1 ) {
    m_gear--;
    return true;
  }
  return false;
}

int GearShift::getCurrentGear() const {
  return m_gear;
}
