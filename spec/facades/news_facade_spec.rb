require 'rails_helper'

RSpec.describe NewsFacade, :vcr do
  it 'can make a news story rray from a service call' do
    stories = NewsFacade.create_general_stories

    expect(stories).to be_an(Array)
    expect(stories.first).to be_an_instance_of(Story)
    expect(stories.length).to be(10)
  end
end
