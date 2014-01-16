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
 * Example which shows access control in an inheritance setting. 
 **/


class Base {
  //private:
    int m_private;
  protected:
    int m_protected;
  public:
    int m_public;
};

class DerivedPublic: public Base {
  DerivedPublic() {
    // not allowed, variable is private
    //m_private   = 0;
    m_protected = 0;
    m_public    = 0;
  }
};

class DerivedProtected: protected Base {
  DerivedProtected() {
    // not allowed, variable is private
    //m_private   = 0;
    m_protected = 0;
    m_public    = 0;
  }
};

class DerivedPrivate: private Base {
  DerivedPrivate() {
    // not allowed, variable is private
    //m_private   = 0;
    m_protected = 0;
    m_public    = 0; 
  }
};

int main() {
  Base l_base;
  // not allowed: private and protected
  //l_base.m_private = 0; l_base.m_protected =0;
  l_base.m_public = 0;

  DerivedPublic l_derivedPublic;
  l_derivedPublic.m_private = 0; 
}
