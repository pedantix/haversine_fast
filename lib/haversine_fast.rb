require "haversine_fast/version"
require "calc_haversine"

module HaversineFast
  module_function
  def calc_distance(lat1, lon1, lat2, lon2)
    calculate_distance_by_haversine(lat1, lon1, lat2, lon2)
  end
end
