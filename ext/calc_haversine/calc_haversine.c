#include <ruby.h>
#include <math.h>

void Init_calc_haversine();

//define the following constants
//radius of the earth 
static const double RADIUS_OF_EARTH = 6378.1370;

//deg2rad
static const double DEG2RAD = M_PI / 180;



//ruby wants to call 
//calculate_distance_by_haversine(lon1, lat1, lon2, lat2)

#define NUM2RADDBL(x) (NUM2DBL(x) * DEG2RAD)

static VALUE calculate_distance_by_haversine(VALUE self, VALUE lat1, VALUE lon1, VALUE lat2, VALUE lon2){
  //convert values to double
  
  double  dLat1 = NUM2RADDBL(lat1),
          dLon1 = NUM2RADDBL(lon1),
          dLat2 = NUM2RADDBL(lat2),
          dLon2 = NUM2RADDBL(lon2),;


  return rb_float_new((double)0.00);
}

void Init_calc_haversine(){
  VALUE mHaversine = rb_define_module("HaversineFast");
  rb_define_singleton_method(mHaversine, "calculate_distance_by_haversine", calculate_distance_by_haversine, 4);
}

