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
end
