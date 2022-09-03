require 'rails_helper'

RSpec.describe RepresentativeFacade, :vcr do
  it "can make a representative array" do
    reps = RepresentativeFacade.find_each_rep("Colorado")

    require "pry"; binding.pry
  end
end
