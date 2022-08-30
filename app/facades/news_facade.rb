class NewsFacade

  def self.create_general_stories
    json = NewsService.get_general_news
    json[:articles][0..9].map { |hash| Story.new(hash) }
  end
end
