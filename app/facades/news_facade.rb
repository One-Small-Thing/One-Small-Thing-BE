class NewsFacade

  def self.create_general_stories
    json = NewsService.get_general_news
    json[:articles].map do |hash|
      if hash[:author] == nil && hash[:title] == nil && hash[:publishedAt] == nil
      else
        Story.new(hash)
      end
    end
  end

  def self.create_topic_stories(topic)
    json = NewsService.get_topic_call(topic)
    json[:articles].map do |hash|
      if hash[:author] == nil && hash[:title] == nil && hash[:publishedAt] == nil
      else
        Story.new(hash)
      end
    end
  end
end
