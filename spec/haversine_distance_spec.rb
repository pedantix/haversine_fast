require 'spec_helper'


class TestLocation
  attr_reader :longitude, :latitude, :description

  def initialize(lat, lon, desc)
    @longitude, @latitude, @description = lon, lat, desc
  end
end


RSpec.describe HaversineFast do

  let(:jax_residence) { TestLocation.new(30.199647, -81.524879, "Jacksonville Residence") }
  let(:altamonte_springs_residence) { TestLocation.new(28.653973, -81.406500, "Altamonte Springs Residence")}
  let(:jax_residence_2) { TestLocation.new(30.213115,-81.5738050, "Jacksonville Residence 2" ) }

  let(:hong_kong_residence) { TestLocation.new(22.396428, 114.109497, "Hong Kong") }

  let(:tolerance) { 5.00 }

  it { expect(subject).to respond_to(:calc_distance) }

  describe "should result in reasonably accurate distance calculations" do
    #smoke test
    def distance_between(loc1, loc2)
      HaversineFast.calc_distance(loc1.latitude, loc1.longitude, loc2.latitude, loc2.longitude)
    end

    it { expect(HaversineFast.calc_distance(0.00,0.00,0.00,0.00)).to eql 0.00 }


    it "should indicate there are 4.94 km between the two jax residence" do
      expect(distance_between(jax_residence, jax_residence_2)).to be_within(tolerance).of(4.94)
    end


    it "should indicate there are 171.71 km between the two jax residence" do
      expect(distance_between(jax_residence, altamonte_springs_residence)).to be_within(tolerance).of(171.71)
    end

    it "should indicate there are 13950.72km between jax residence and hong kong residence" do
      expect(distance_between(jax_residence, hong_kong_residence)).to be_within(tolerance * 20).of(13950.72)
    end
  end


end