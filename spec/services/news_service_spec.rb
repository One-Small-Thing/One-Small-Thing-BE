require 'rails_helper'

RSpec.describe NewsService, :vcr do
  it 'can return information from a news call' do
    hash = NewsService.get_general_news

    expect(hash).to be_a(Hash)
    expect(hash.keys).to include([:status, :totalResults, :articles])
    expect(hash[:articles]).to be_an(Array)
  end
end
