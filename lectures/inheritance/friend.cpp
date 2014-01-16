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
 * Example showing the friend keyword for access control. 
 **/


class Simple {
  //private:
    int m_private;
  protected:
    int m_protected;
  public:
    int m_public;

   friend void  modify( Simple &io_simple );
   friend class Friend;
   friend class DerivedFriend;
};

void modify( Simple &io_simple ) {
  io_simple.m_private   = 1;
  io_simple.m_protected = 1;
  io_simple.m_public    = 1;
}

class Friend {
  public:
    void modify( Simple &io_simple ) {
      io_simple.m_private   = 1;
      io_simple.m_protected = 1;
      io_simple.m_public    = 1;
    }
};

class DerivedFriend: public Simple {
  public:
    void modify() {
      m_private   = 1;
      m_protected = 1;
      m_public    = 1;
    }
};

int main() {
  Simple        l_simple;
  Friend        l_friend;
  DerivedFriend l_derivedFriend;

  modify( l_simple );
  l_friend.modify( l_simple );
  l_derivedFriend.modify();
}
