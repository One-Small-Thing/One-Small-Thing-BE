require 'rails_helper'

RSpec.describe CongressFacade do
  it 'can make a congress array from a service call', :vcr do
    state = "co"
    congress = CongressFacade.find_congress_people(state)

    expect(congress).to be_an(Array)
    expect(congress.first).to be_an_instance_of(Congress)
  end
end
