require 'rails_helper'

RSpec.describe NewsService, :vcr do
  before(:each) do
    gun_violence = Topic.create!( name: 'Gun Violence', keywords: 'shooting "mass shooting" "gun control" "school shooting"')
    environmental = Topic.create!( name: 'Environmental', keywords: '"environmental disaster" OR "natural disaster" OR "oil spill" OR "climate change" OR "ecological disaster"')
    lgbtq = Topic.create!( name: 'LGBTQ+', keywords: 'LGBTQ+ Transgender "Gay Marriage"')
    abortion_rights = Topic.create!( name: 'Abortion Rights', keywords: 'abortion "Roe V. Wade" OR "abortion access" OR "planned parenthood"')
    education = Topic.create!( name: 'Education', keywords: 'college OR "access to education" OR "student loan debt" OR "higher education" OR "literacy rates"')
    domestic_violence = Topic.create!( name: 'Domestic Violence', keywords: '"domestic violence survivor resource" OR "domestic violence" OR "domestic disturbance"')
    computing = Topic.create!( name: 'Free and Open Computing', keywords: '"free and open computing" OR linux OR gnu kde OR gnome')
  end
  it 'can return information from a  general news call' do
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
  it 'can return information from a topical call' do
    array = ['Gun Violence', 'Environmental', 'LGBTQ+', 'Abortion Rights', 'Education', 'Domestic Violence', 'Free and Open Computing']

    array.each do |topic|
      hash = NewsService.get_topic_call(topic)

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
end
