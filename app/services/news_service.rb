class NewsService < BaseService

  def self.get_general_news
    response = conn_news.get("top-headlines?country=us")
    get_json(response)
  end

  def self.get_lgbtq_news
    response = conn_news.get("everything") do |f|
      f.params['q'] = 'LGBTQ+ Transgender "Gay Marriage"'
    end
    get_json(response)
  end

  def self.get_guncontrol_news
    response = conn_news.get("everything") do |f|
      f.params['q'] = 'shooting "mass shooting" "gun control" "school shooting"'
    end
    get_json(response)
  end

  def self.get_environmental_news
    response = conn_news.get("everything") do |f|
      f.params['q'] = 'shooting "mass shooting" "gun control" "school shooting"'
    end
    get_json(response)
  end

  def self.get_abortionrights_news
    response = conn_news.get("everything") do |f|
      f.params['q'] = 'shooting "mass shooting" "gun control" "school shooting"'
    end
    get_json(response)
  end
end
