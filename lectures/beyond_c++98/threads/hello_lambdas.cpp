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
 * Simple hello world with a lambda expressions and threads in C++11.
 **/

#include <ctime>
#include <iostream>

#include <thread>

/**
 * Sleep for the given number of seconds.
 *
 * @param i_seconds seconds to sleep
 **/
void sleep( double i_seconds ) {
  clock_t l_startTime = clock();

  while( (clock() - l_startTime)/((double) CLOCKS_PER_SEC) < i_seconds );
}

int main() {
  auto l_helloWorld = []( double i_timeToSleep  ) {
    sleep( i_timeToSleep );
    std::cout << "Hello World, I slept " << i_timeToSleep << " seconds!" << std::endl;
  };

  std::thread l_thread1( l_helloWorld, 5 );
  std::thread l_thread2( l_helloWorld, 2 );
  std::thread l_thread3( l_helloWorld, 4 );

  l_helloWorld( 3 );

  l_thread1.join();
  l_thread2.join();
  l_thread3.join();
}
