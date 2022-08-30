require 'rails_helper'

RSpec.describe CongressService do
  it 'can find congress by state', :vcr do
    state = "co"
    congress = CongressService.find_congress(state)
  end
end
