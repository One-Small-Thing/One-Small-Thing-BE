class NewsService < BaseService

  def self.get_general_news
    response = conn_news.get("top-headlines?country=us")
    get_json(response)
  end

  def self.get_topic_call(topic_name)
    query_topic = Topic.find_by(name: topic_name)
    response = conn_news.get("everything") do |f|
      f.params['q'] = query_topic.keywords
    end
    get_json(response)
  end
end
