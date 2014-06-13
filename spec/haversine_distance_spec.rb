require 'spec_helper'


class TestLocation
  attr_reader :longitude, :latitude, :description

  def initialize(lat, lon, desc)
    @longitude, @latitude, @description = lon, lat, desc
  end
end


RSpec.describe HaversineFast do

  let(:jax_residence) { TestLocation.new(30.199647, -81.524879, "Jacksonville Residence") }
  let(:altamonte_springs_residence) { TestLocation.new(28.653973, -81.4065, "Altamonte Springs Residence")}
  let(:jax_residence_2) { TestLocation.new(30.213115,-81.5738050, "Jacksonville Residence 2" ) }


  let(:distance_between_jax_and_jax_2) {  }

  
  it { expect(subject).to respond_to(:calc_distance) }

  describe "should result in reasonably accurate distance calculations" do
    #smoke test
    it { expect(HaversineFast.calc_distance(0.00,0.00,0.00,0.00)).to eql 0.00 }

  end
end