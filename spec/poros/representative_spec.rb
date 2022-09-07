require 'rails_helper'

RSpec.describe Representative, :vcr do
  it "exists and has attributes" do
    address = "Colorado"
    rep = RepresentativeFacade.find_each_rep(address)

    expect(rep[0].name).to eq("Joseph R. Biden")
    expect(rep[0].party).to eq("Democratic Party")
    expect(rep[0].office).to eq("President of the United States")
  end
end
