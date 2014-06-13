require 'spec_helper'


class TestLocation
  attr_reader :longitude, :latitude, :description

  def initialize(lon, lat, desc)
    @longitude, @latitude, @description = lon, lat, desc
  end
end


RSpec.describe HaversineFast do
  
  it { expect(subject).to respond_to(:calc_distance) }

  describe "should result in reasonably accurate distance calculations" do
    #smoke test
    it { expect(HaversineFast.calc_distance(0.00,0.00,0.00,0.00)).to eql 0.00 }

  end
end