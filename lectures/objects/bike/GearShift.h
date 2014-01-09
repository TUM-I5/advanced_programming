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
 * Class defition of gear shift. 
 **/

#ifndef GEARSHIFT_H_

class GearShift {
  //private:
    //! number of gears
    int m_numberOfGears;

    //! current gear
    int m_gear;

  public:
    /*
     * Constructor
     */
    GearShift( int i_numberOfGears );

    /**
     * Increases the gear (if possible).
     *
     * @return true if possible, false else.
     **/
    bool increaseGear();

    /**
     * Decreases the gear (if possible).
     *
     * @return true if possible, false else.
     **/
    bool decreaseGear();

    /**
     * Get the current gear.
     **/
    int getCurrentGear() const;
};

#endif
