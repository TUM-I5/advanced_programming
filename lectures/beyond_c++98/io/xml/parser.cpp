/** @file
 * This file is part of the Advanced Progamming Lecture.
 *
 * @author Alexander Breuer (breuera AT in.tum.de, http://www5.in.tum.de/wiki/index.php/Dipl.-Math._Alexander_Breuer)
 *
 * @section LICENSE
 * Copyright (c) 2013-2014
 * Technische Universitaet Muenchen
 * Department of Informatics
 * Chair of Scientific Computing
 * http://www5.in.tum.de/
 *
 * @section DESCRIPTION
 * Example of an XML parser.
 **/

#include <iostream>
#include <pugixml/src/pugixml.hpp>

/**
 * Prints the name and attributes of an XML node.
 * @param i_xmlNode XML node, which is printed.
 **/
void printNodeInformation( const pugi::xml_node i_xmlNode ) {
  // print node name
  std::cout << "node name: " << i_xmlNode.name() << std::endl;
  
  // iterate over attributes and print them
  for( pugi::xml_attribute l_attribute = i_xmlNode.first_attribute(); l_attribute; l_attribute = l_attribute.next_attribute()) {
    std::cout << "; " << l_attribute.name() << " = " << l_attribute.value();
  }
  std::cout << std::endl;
}

int main() {
  // create a new xml document
  pugi::xml_document l_xmlDocument;

  // load the xml-file
  pugi::xml_parse_result l_parseResult = l_xmlDocument.load_file( "example.xml" );
  if( !l_parseResult ) {
    std::cerr << "XML-load failed: " << l_parseResult.description() << std::endl;
  }

  // get the advanced programming XML tag and print node information
  pugi::xml_node l_advancedProgramming = l_xmlDocument.first_child();
  printNodeInformation( l_advancedProgramming);
  
  // get sessions
  pugi::xml_node l_sessions = l_advancedProgramming.first_child();
  
  // iterate over session and print information
  for ( pugi::xml_node l_session = l_sessions.first_child(); l_session; l_session = l_session.next_sibling()) {
    printNodeInformation( l_session );
  }

  return 0;
}
