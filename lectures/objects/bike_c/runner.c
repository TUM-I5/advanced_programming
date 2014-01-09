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
 * C Runner, which uses bikes.
 **/

#include "Bike.h"

int main() {
  // construct two bikes
  Bike l_myBike;
  Bike_constructor( &l_myBike, 20 );
  Bike* l_myFriendsBike = Bike_constructor( NULL, 15 );

  // print their initial status
  Bike_printInformation( &l_myBike );
  Bike_printInformation( l_myFriendsBike );

  // go on a bike tour with a friend
  Bike_changeGear( &l_myBike, 16 );
  Bike_changeCadence( &l_myBike, 16.5f );
  Bike_changeGear( l_myFriendsBike, 9 );
  Bike_changeCadence( l_myFriendsBike, 29.8f );

  // print information
  Bike_printInformation( &l_myBike );
  Bike_printInformation( l_myFriendsBike );

  // call destructors
  Bike_destructor( &l_myBike, false );
  Bike_destructor( l_myFriendsBike, true );
}
