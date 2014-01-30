/** @file
 * This file is part of the Advanced Progamming lecture.
 *
 * @author Alexander Breuer (breuera AT in.tum.de, http://www5.in.tum.de/wiki/index.php/Dipl.-Math._Alexander_Breuer) *
 * @section LICENSE
 * Copyright (c) 2014
 * Technische Universitaet Muenchen
 * Department of Informatics
 * Chair of Scientific Computing
 * http://www5.in.tum.de/
 *
 * @section DESCRIPTION
 * Simple netCDF-example.
 * This example is based on the following tutorial: http://www.unidata.ucar.edu/software/netcdf/examples/programs/simple_xy_wr.c
 **/

#include <cstdlib>
#include <iostream>
#include <netcdf.h>

// Handle errors by printing an error message and exiting with a non-zero status.
#define ERRCODE 2
#define ERR(e){ std::cerr <<"Error: " << nc_strerror(e) << std::endl; exit(ERRCODE);}

int main() {
  // set up data
  int l_ncId, l_dimXId, l_dimYId, l_variableId;
  int l_dimensionIds[2];
  int l_data[6][10];
  int l_errorCode;
  for (int l_x = 0; l_x < 6; l_x++) { 
    for (int l_y = 0; l_y < 10; l_y++) {
      l_data[l_x][l_y] = l_x * 10 + l_y;
    }
  }

  // set up netCDF-file
  if( (l_errorCode = nc_create("simple.nc", NC_CLOBBER, &l_ncId)) )
    ERR(l_errorCode);

  if( (l_errorCode = nc_def_dim(l_ncId, "x", 6, &l_dimXId)) )
    ERR(l_errorCode);
  if( (l_errorCode = nc_def_dim(l_ncId, "y", 10, &l_dimYId)) )
    ERR(l_errorCode);

  l_dimensionIds[0] = l_dimXId; l_dimensionIds[1] = l_dimYId;

  if( (l_errorCode = nc_def_var(l_ncId, "data", NC_INT, 2, l_dimensionIds, &l_variableId)) )
    ERR(l_errorCode);

  if( (l_errorCode = nc_enddef(l_ncId)) )
    ERR(l_errorCode);

  // write data
  if( (l_errorCode = nc_put_var_int(l_ncId, l_variableId, &l_data[0][0])) )
    ERR(l_errorCode);

  // close file
  if( (l_errorCode = nc_close(l_ncId)) )
    ERR(l_errorCode);

  std::cout << "finished writing simple.nc; use ncdump to view content" << std::endl;
  return 0;
}
