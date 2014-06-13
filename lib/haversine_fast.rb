require "haversine_fast/version"

module HaversineFast
  module_function
  def calc_distance(lon1, lat1, lon2, lat2)
    calculate_distance_by_haversine(lon1, lat1, lon2, lat2)
  end
end
