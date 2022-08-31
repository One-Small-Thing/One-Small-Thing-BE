class NewsFacade

  def self.create_general_stories
    json = NewsService.get_general_news
    json[:articles][0..9].map { |hash| Story.new(hash) }
  end

  def self.create_topic_stories(topic)
    json = NewsService.get_topic_call(topic)
    json[:articles][0..9].map { |hash| Story.new(hash) }
  end
end
