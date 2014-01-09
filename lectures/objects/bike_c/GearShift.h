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
#include <stdlib.h>
#include <stdbool.h>

typedef struct {
  int m_numberOfGears;
  int m_gear;
} GearShift;

GearShift *GearShift_constructor( GearShift *io_this, int i_numberOfGears );

void GearShift_destructor( GearShift *io_this, bool i_dynamic );

bool GearShift_increaseGear( GearShift *io_this );

bool GearShift_decreaseGear( GearShift *io_this );

int GearShift_getCurrentGear( GearShift *i_this );
