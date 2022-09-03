require 'rails_helper'

RSpec.deacribe RepresentativeService do
  it 'can fin reps and their emails by state' do
    state = "Colorado"
    reps = RepresentativeService.find_reps(state)
    expect(reps).to be_a(Hash)
  end
end
