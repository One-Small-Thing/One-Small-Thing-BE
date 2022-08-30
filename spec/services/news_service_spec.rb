require 'rails_helper'

RSpec.describe NewsService, :vcr do
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
  it 'can return information from a topic: LGBTQ call' do
    hash = NewsService.get_lgbtq_news

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

  it 'can return information from a topic: Gun Control call' do
    hash = NewsService.get_guncontrol_news

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

  it 'can return information from a topic: Environmental call' do
    hash = NewsService.get_environmental_news

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

  it 'can return information from a topic: Abortion Rights call' do
    hash = NewsService.get_abortionrights_news

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

  it 'can return information from a topic: Education call' do
    hash = NewsService.get_education_news

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

  it 'can return information from a topic: FAO Computing call' do
    hash = NewsService.get_fao_comp_news

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

  it 'can return information from a topic: Domestic Violence call' do
    hash = NewsService.get_domestic_violence_news

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
