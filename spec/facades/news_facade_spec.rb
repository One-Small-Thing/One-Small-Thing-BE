require 'rails_helper'

RSpec.describe NewsFacade, :vcr do
  it 'can make a news story array from a general stories service call' do
    stories = NewsFacade.create_general_stories

    expect(stories).to be_an(Array)
    expect(stories.first).to be_an_instance_of(Story)
    expect(stories.length).to be(10)
  end

  it 'can make a news story array from an LGBTQ news service call' do
    stories = NewsFacade.create_LGBTQ_stories

    expect(stories).to be_an(Array)
    expect(stories.first).to be_an_instance_of(Story)
    expect(stories.length).to be(10)
  end

  it 'can make a news story array from a Gun Control news service call' do
    stories = NewsFacade.create_guncontrol_stories

    expect(stories).to be_an(Array)
    expect(stories.first).to be_an_instance_of(Story)
    expect(stories.length).to be(10)
  end

  it 'can make a news story array from a Environmental news service call' do
    stories = NewsFacade.create_general_stories

    expect(stories).to be_an(Array)
    expect(stories.first).to be_an_instance_of(Story)
    expect(stories.length).to be(10)
  end
end
