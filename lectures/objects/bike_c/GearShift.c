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
 * C implementation of a gear shift. 
 **/
#include "GearShift.h"

GearShift *GearShift_constructor( GearShift *io_this, int i_numberOfGears ) {
  // check if memory for (non-static) member variables is allocated
  if( io_this == NULL ) {
    // allocate memory
    io_this = (GearShift*) malloc( sizeof(GearShift) );
  }

  // initialize member variables
  if( io_this ) {
    io_this->m_numberOfGears = i_numberOfGears;
    io_this->m_gear          = 0;
  }

  return io_this;
}

void GearShift_destructor( GearShift *io_this, bool i_dynamic ) {
  if( i_dynamic ) {
    free( io_this );
  }
}

bool GearShift_increaseGear( GearShift *io_this ) {
  if( io_this->m_gear < io_this->m_numberOfGears ) {
    io_this->m_gear++;
    return true; 
  }
  return false;
}

bool GearShift_decreaseGear( GearShift *io_this ) {
  if( io_this->m_gear > 1 ) {
    io_this->m_gear--;
    return true; 
  }
  return false;
}

int GearShift_getCurrentGear( GearShift *i_this ) {
  return i_this->m_gear;
}
