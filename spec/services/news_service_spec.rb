require 'rails_helper'

RSpec.describe NewsService, :vcr do
  it 'can return information from a news call' do
    hash = NewsService.get_general_news

    expect(hash).to be_a(Hash)
    expect(hash.keys).to include(:status, :totalResults, :articles)
    expect(hash[:articles]).to be_an(Array)
    hash[:articles].each do |element|
      expect(element).to be_a(Hash)
      expect(element.keys).to include(:source, :author, :title, :description, :url, :urlToImage, :publishedAt, :content)
      expect(element[:source]).to be_a(Hash)
      expect(element[:source].keys).to include(:id, :name)
    end
  end
end
