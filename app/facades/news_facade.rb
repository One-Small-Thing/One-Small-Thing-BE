class NewsFacade

  def self.create_general_stories
    json = NewsService.get_general_news
    json[:articles][0..9].map { |hash| Story.new(hash) }
  end

  def self.create_LGBTQ_stories
    json = NewsService.get_lgbtq_news
    json[:articles][0..9].map { |hash| Story.new(hash) }
  end

  def self.create_guncontrol_stories
    json = NewsService.get_guncontrol_news
    json[:articles][0..9].map { |hash| Story.new(hash) }
  end

  def self.create_environmental_stories
    json = NewsService.get_environmental_news
    json[:articles][0..9].map { |hash| Story.new(hash) }
  end

  def self.create_abortionrights_stories
    json = NewsService.get_abortionrights_news
    json[:articles][0..9].map { |hash| Story.new(hash) }
  end

  def self.create_fao_comp_stories
    json = NewsService.get_fao_comp_news
    json[:articles][0..9].map { |hash| Story.new(hash) }
  end

  def self.create_education_stories
    json = NewsService.get_education_news
    json[:articles][0..9].map { |hash| Story.new(hash) }
  end

  def self.create_domestic_violence_stories
    json = NewsService.get_domestic_violence_news
    json[:articles][0..9].map { |hash| Story.new(hash) }
  end
end
