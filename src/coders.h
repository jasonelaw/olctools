#include <Rcpp.h>
#include "validate.h"
using namespace Rcpp;

#ifndef __OLC_CODE__
#define __OLC_CODE__

class olc_coders: public olc_validate {

private:

  int grid_rows;

  int grid_cols;

  double grid_degrees;

  int max_pair_length;

  std::vector < std::string > output_names;

  std::vector < double > resolution_levels;

  double clip_lat(double lat);

  double clip_longitude(double longitude);

  double lat_precision(int length);

  std::string olc_encode_single(double lat, double longitude, int output_length);

  std::vector < double > olc_decode_single(std::string olc);

public:

  std::vector < std::string > olc_encode_vector(std::vector < double > latitude, std::vector < double > longitude,
                                                std::vector < int > code_length);

  DataFrame olc_decode_vector(std::vector < std::string > olc);

  olc_coders();

};

#endif
