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
 * Example, which shows an object-oriented AoS-implementation in simplified molecular dynamics.
 **/

#ifndef MOLECULES_H_

#include <cassert>
#include <iostream>

/**
 * Collection of Molecules
 **/
class Molecules {
  // private:
    //! number of molecules under control of this collection
    const int m_numberOfMolecules;

    //! time step width deltaT
    const double m_deltaT;

    //! positions in x-, y- and z-direcion
    double *m_x, *m_y, *m_z;

    // velocities in x-, y- and z-direction
    double *m_velocityX, *m_velocityY, *m_velocityZ;

  public:
    /**
     * Constructor, which allocates memory for all molecules.
     *
     * @param i_numberOfMolecules number of molecules under control of the collection.
     */
    Molecules( int    i_numberOfMolecules,
               double i_deltaT );

    /**
     * Destructor, which frees the allocated memory.
     **/
    ~Molecules();

    /**
     * Sets the the initial values of the molecule with the given ID.
     *
     * @param i_moleculeId id of the molecule.
     * @param i_initialValues initial values:
     *          0-2: position in x-, y- and z-direction
     *          3-5: velocity in x-, y- and z-direction
     **/
    void setInitialValues(       int    i_moleculeId,
                           const double i_values[6] );

    /**
     * Computes the next time step.
     **/
    void computeTimeStep();

    /**
     * Prints the values of the molecule with the given ID.
     *
     * @param i_moleculeId id of the molecule.
     **/
    void printValues( int i_moleculeId ) const;
};

#endif
