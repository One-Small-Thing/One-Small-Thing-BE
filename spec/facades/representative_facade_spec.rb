require 'rails_helper'

RSpec.describe RepresentativeFacade, :vcr do
  it "can make a representative array" do
    reps = RepresentativeFacade.find_each_rep("Colorado")

    expect(reps).to be_a(Array)
    expect(reps[0][:name]).to eq("Joseph R. Biden")
    expect(reps[0][:address]).to eq([{:line1=>"1600 Pennsylvania Avenue Northwest", :city=>"Washington", :state=>"DC", :zip=>"20500"}])
    expect(reps[4][:emails]).to eq(["governorpolis@state.co.us"])
    expect(reps[0][:phones]).to include("(202) 456-1111")
    expect(reps[0][:party]).to eq("Democratic Party")
  end
end
