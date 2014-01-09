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
#include <stdlib.h>
#include <math.h>
#include <stdio.h>

#include "GearShift.h"

typedef struct {
  float m_speed;
  float m_revolutions;
  GearShift m_gearShift;
} Bike;

Bike *Bike_constructor( Bike *io_this, int i_numberOfGears );

void Bike_destructor( Bike *io_this, bool i_dynamic );

void Bike_changeGear( Bike *io_this, int i_gear );

void Bike_brake( Bike *io_this );

void Bike_changeCadence( Bike *io_this, float i_rpm );

void Bike_printInformation( Bike *io_this );
