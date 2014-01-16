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
 * Example of inheritance with interfaces and implementations. 
 **/

#define _USE_MATH_DEFINES
#include <cmath>
#undef _USE_MATH_DEFINES

#include <iostream>

class Shape {
  //private:
    int m_color;

  public:
    Shape( int i_color=0 ):
     m_color( i_color ) {};
    virtual ~Shape(){};

    int getColor() const { return m_color; };

    // purely virtual function
    virtual double getSurfaceArea() const = 0;

    // virtual function with default implementation
    //virtual double getSurfaceArea() const { return 0.0; };
};

class Circle: public Shape {
  //private:
    double m_radius;

  public:
    Circle( double i_radius ):
     Shape(), m_radius( i_radius ) {
      std::cout << "constructed a circle, radius: "
                << m_radius << std::endl;
    };
    virtual ~Circle(){};

    virtual double getSurfaceArea() const { return M_PI * m_radius * m_radius; }; 

    // allowed, but usually bad practice..
    // int getColor() const { return -1; };
};

class Rectangle: public Shape {
  //private:
    double m_width, m_height;
  public:
    Rectangle( double i_width, double i_height, int i_color = 0 ):
     Shape( i_color),  m_width( i_width ), m_height( i_height) {
      std::cout << "constructed rectangle, width/height: "
                << m_width << "/" << m_height << std::endl;
    };
    virtual ~Rectangle{};

    virtual double getSurfaceArea() const { return m_width * m_height; };
};

int main() {
  Circle l_circle( 2.3 );
  Rectangle l_rectangle( 4.2, 1.8, 3 );

  Shape* l_shapes[2];
  l_shapes[0] = &l_circle;
  l_shapes[1] = &l_rectangle;

  for( int l_shapeId = 0; l_shapeId < 2; l_shapeId ++ ) {
    std::cout << l_shapes[l_shapeId]->getColor() << ", "
              << l_shapes[l_shapeId]->getSurfaceArea() << std::endl;
  }

  // not allowed for virtual function w/o default implementation
  //Shape l_shape1();
  return 0;
}
