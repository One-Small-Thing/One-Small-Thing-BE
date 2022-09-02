require 'rails_helper'

RSpec.describe NewsFacade, :vcr do
  before(:each) do
    gun_violence = Topic.create!( name: 'Gun Violence', keywords: 'shooting "mass shooting" "gun control" "school shooting"')
    environmental = Topic.create!( name: 'Environmental', keywords: '"environmental disaster" OR "natural disaster" OR "oil spill" OR "climate change" OR "ecological disaster"')
    lgbtq = Topic.create!( name: 'LGBTQ+', keywords: 'LGBTQ+ Transgender "Gay Marriage"')
    abortion_rights = Topic.create!( name: 'Abortion Rights', keywords: 'abortion "Roe V. Wade" OR "abortion access" OR "planned parenthood"')
    education = Topic.create!( name: 'Education', keywords: 'college OR "access to education" OR "student loan debt" OR "higher education" OR "literacy rates"')
    domestic_violence = Topic.create!( name: 'Domestic Violence', keywords: '"domestic violence survivor resource" OR "domestic violence" OR "domestic disturbance"')
    computing = Topic.create!( name: 'Free and Open Computing', keywords: '"free and open computing" OR linux OR gnu kde OR gnome')
  end
  it 'can make a news story array from a general stories service call' do
    stories = NewsFacade.create_general_stories

    expect(stories).to be_an(Array)
    expect(stories.first).to be_an_instance_of(Story)
    expect(stories.length).to be(20)
  end

  it 'can make a news story array from a topical news service call' do
    array = ['Gun Violence', 'Environmental', 'LGBTQ+', 'Abortion Rights', 'Education', 'Domestic Violence', 'Free and Open Computing']

    array.each do |topic|
      stories = NewsFacade.create_topic_stories(topic)

      expect(stories).to be_an(Array)
      expect(stories.first).to be_an_instance_of(Story)
      expect(stories.length).to be(20)
    end
  end
end
