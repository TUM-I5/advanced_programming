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
 * Example of simple inheritance applied to compute graphics. 
 **/

#include <iostream>

class Shape {
  //private:
  public:
    Shape() {
      std::cout << "constructed a new shape" << std::endl;
    }

    virtual ~Shape(){};
};

class Star:      public Shape {};
class Circle:    public Shape {};
class Rectangle: public Shape {};

int main() {
  Shape     l_shape1;
  Shape     l_shape2;
  Star      l_star1;
  Circle    l_circle;
  Rectangle l_rectangle;

  l_shape1 = l_shape2;
  l_shape2 = l_rectangle;
  Shape l_shape3( l_star1 );

  // forbidden
  //l_circle = l_shape2;
  //l_star1   = l_rectangle;
  //Star l_star2( l_shape1 );
}
