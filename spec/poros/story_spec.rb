require 'rails_helper'

RSpec.describe Story do
  it 'exists and has attributes' do
    json = File.read('./spec/fixtures/dummy_files/story_hash_example.json')
    hash = JSON.parse(json, symbolize_names: true)
    story = Story.new(hash)

    expect(story).to be_an_instance_of(Story)
    expect(story.date).to eq(hash[:publishedAt])
    expect(story.title).to eq(hash[:title])
    expect(story.author).to eq(hash[:author])
    expect(story.content).to eq(hash[:content])
    expect(story.img).to eq(hash[:urlToImage])
  end
end
