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
 * Class defition of a single bike. 
 **/

#ifndef BIKE_H_

#include <cmath>
#include <iostream>

#include "GearShift.h"

class Bike {
  //private:
    //! current speed
    float m_speed;

    //! current rpm
    float m_revolutions;

    //! gear shift
    GearShift m_gearShift;

  public:
    /**
     * Constructor
     *
     * @param i_numberOfGears #gears
     **/
    Bike( int i_numberOfGears );

    /**
     * Destructor
     **/
    ~Bike();

    /**
     * Changes the gear to the closest possible gear.
     *
     * @param i_gear gear to change to.
     **/
    void changeGear( int i_gear );

    /**
     * Brakes the bike.
     **/
    void brake();

    /**
     * Accelerates the bike.
     *
     * @param i_rpm revolutions per minute.
     **/
    void changeCadence( float i_rpm );

    /**
     * Prints status of our bike.
     **/
    void printInformation() const;
};

#endif
