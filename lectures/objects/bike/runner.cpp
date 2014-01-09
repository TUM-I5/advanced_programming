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
 * Runner, which uses bikes. 
 **/

#include "Bike.h"

int main() {
  // construct two bikes
  Bike l_myBike( 20 );
  Bike *l_myFriendsBike = new Bike( 15 );

  // print their initial status
  l_myBike.printInformation();
  l_myFriendsBike->printInformation();  

  // go on a bike tour with a friend
  l_myBike.changeGear( 16 );
  l_myBike.changeCadence( 16.5 );
  l_myFriendsBike->changeGear( 9 );
  l_myFriendsBike->changeCadence( 29.8 );

  // print information
  l_myBike.printInformation();
  l_myFriendsBike->printInformation();

  // free dynamic memory
  delete l_myFriendsBike;
}
