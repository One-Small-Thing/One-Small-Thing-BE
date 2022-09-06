require 'rails_helper'

RSpec.describe RepresentativeService do
  it 'can fin reps and their emails by state', :vcr do
    address = "Colorado"
    reps = RepresentativeService.find_reps(address)
    expect(reps).to be_a(Hash)
    expect(reps[:offices]).to be_a(Array)
    expect(reps[:offices][0]).to have_key(:name)
    expect(reps[:officials]).to be_a(Array)
    expect(reps[:officials][0]).to have_key(:name)
    expect(reps[:officials][0]).to have_key(:address)
    expect(reps[:officials][0]).to have_key(:party)
    expect(reps[:officials][0]).to have_key(:phones)
    expect(reps[:officials][4]).to have_key(:emails)
  end
end
