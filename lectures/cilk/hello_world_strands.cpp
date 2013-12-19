/** @file
 * This file is part of the Advanced Progamming lecture.
 *
 * @author Alexander Breuer (breuera AT in.tum.de, http://www5.in.tum.de/wiki/index.php/Dipl.-Math._Alexander_Breuer)
 *
 * @section LICENSE
 * Copyright (c) 2013
 * Technische Universitaet Muenchen
 * Department of Informatics
 * Chair of Scientific Computing
 * http://www5.in.tum.de/
 *
 * @section DESCRIPTION
 * Minimal hello world, which shows strands.
 **/

#include <ctime>
#include <iostream>

#include <cilk/cilk.h>

/**
 * Sleep for the given number of seconds.
 *
 * @param i_seconds seconds to sleep
 **/
void sleep( double i_seconds ) {
  clock_t l_startTime = clock();

  while( (clock() - l_startTime)/((double) CLOCKS_PER_SEC) < i_seconds );
}

/**
 * Sleep for the given time and print hello world.
 * @param i_timeToSleep seconds to sleep before hello world.
 **/
void hello_world( double i_timeToSleep) {
  sleep( i_timeToSleep );
  std::cout << "Hello World, I slept " << i_timeToSleep << " seconds!" << std::endl; 
}

int main() {
  hello_world( 1.5 );            // execute strand 1 
  cilk_spawn hello_world( 0.5 ); // spawn strand 3 at A
  hello_world( 2 );              // execute strand 2
  cilk_sync;                     // sync at B
  hello_world( 3 );              // execute strand 4
}
