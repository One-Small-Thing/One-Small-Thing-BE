require 'rails_helper'

RSpec.describe Story do
  it 'exists and has attributes' do
    json = File.read('./spec/fixtures/dummy_files/story_hash_example.json')
    hash = JSON.parse(json, symbolize_names: true)
    story = Story.new(hash)

    expect(story).to be_an_instance_of(Story)
    expect(story.date).to eq("08/29/2022")
    expect(story.title).to eq(hash[:title])
    expect(story.author).to eq(hash[:author])
    expect(story.content).to eq(hash[:content])
    expect(story.img).to eq(hash[:urlToImage])
    expect(story.url).to eq(hash[:url])
    expect(story.description).to eq(hash[:description])
  end

  describe 'instance methods' do
    it 'will return a formatted' do
      json = File.read('./spec/fixtures/dummy_files/story_hash_example.json')
      hash = JSON.parse(json, symbolize_names: true)
      story = Story.new(hash)

      expect(story.date).to eq("08/29/2022")
      expect(story.date).to_not eq(hash[:publishedAt])
    end
  end
end
