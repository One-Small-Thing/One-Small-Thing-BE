require 'rails_helper'

RSpec.describe CongressService do
  it 'can find congress by state', :vcr do
    state = "co"
    congress = CongressService.find_congress(state)
    expect(congress).to be_a(Hash)
    expect(congress[:results]).to be_a(Array)
    expect(congress[:results][0][:members][0]).to have_key(:title)
    expect(congress[:results][0][:members][0]).to have_key(:twitter_account)
    expect(congress[:results][0][:members][0]).to have_key(:contact_form)
  end
end
