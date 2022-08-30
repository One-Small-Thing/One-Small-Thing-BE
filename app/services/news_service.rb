class NewsService < BaseService

  def self.get_general_news
    response = conn_news.get("top-headlines?country=us")
    get_json(response)
  end
end
