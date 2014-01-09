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
 * C implementation of a single bike. 
 **/
#include "Bike.h"

Bike *Bike_constructor( Bike *io_this, int i_numberOfGears ) {
  // check if memoy for (non-static) member variables is allocated
  if( io_this == NULL ) {
    // allocate memory
    io_this = (Bike*) malloc( sizeof(Bike) );
  }

  // initialize member variables
  if( io_this ) {
    io_this->m_speed = 0;
    io_this->m_revolutions = 0;
    GearShift_constructor( &(io_this->m_gearShift), i_numberOfGears );
  }

  printf( "bike with %i gears constructed\n", i_numberOfGears );

  return io_this;
}

void Bike_destructor( Bike *io_this, bool i_dynamic ) {
  if( i_dynamic ) {
    free( io_this );
  }
  
  printf( "bike destroyed :(\n" );
}

void Bike_changeGear( Bike *io_this, int i_gear ) {
  if( i_gear < GearShift_getCurrentGear(&(io_this->m_gearShift)) ) {
    while( GearShift_decreaseGear(&(io_this->m_gearShift)) ) {
      if( i_gear == GearShift_getCurrentGear(&(io_this->m_gearShift)) ) break;
    }
  }
  else if( i_gear > GearShift_getCurrentGear(&(io_this->m_gearShift)) ) {   
    while( GearShift_increaseGear(&(io_this->m_gearShift)) ) {
      if( i_gear == GearShift_getCurrentGear(&(io_this->m_gearShift)) ) break;
    }
  }
}

void Bike_brake( Bike *io_this ) {
  io_this->m_speed = fmaxf( 0.f, (io_this->m_speed - 5.f) );
  io_this->m_revolutions = io_this->m_speed * 25;
}

void Bike_changeCadence( Bike *io_this, float i_rpm ) {
  io_this->m_revolutions = fmaxf( 0.f, i_rpm );
  io_this->m_speed = io_this->m_revolutions * GearShift_getCurrentGear(&(io_this->m_gearShift)) / 25.f;
}

void Bike_printInformation( Bike *io_this ) {
  printf( "speed: %f\nrpms: %f\ngear: %i\n",
          io_this->m_speed,
          io_this->m_revolutions,
          GearShift_getCurrentGear(&(io_this->m_gearShift)) );
}
