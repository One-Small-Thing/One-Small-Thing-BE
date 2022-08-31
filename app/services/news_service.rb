class NewsService < BaseService

  def self.get_general_news
    response = conn_news.get("top-headlines?country=us")
    get_json(response)
  end

  def self.get_topic_call(topic_key_words)
    response = conn_news.get("everything") do |f|
      f.params['q'] = topic_key_words
    end
    get_json(response)
  end

  def self.get_lgbtq_news
    topic_key_words = 'LGBTQ+ Transgender "Gay Marriage"'
    get_topic_call(topic_key_words)
  end

  def self.get_guncontrol_news
    topic_key_words = 'shooting "mass shooting" "gun control" "school shooting"'
    get_topic_call(topic_key_words)
  end

  def self.get_environmental_news
    topic_key_words = '"environmental disaster" OR "natural disaster" OR "oil spill" OR "climate change" OR "ecological disaster"'
    get_topic_call(topic_key_words)
  end

  def self.get_abortionrights_news
    topic_key_words = 'abortion "Roe V. Wade" "abortion access" "planned parenthood"'
    get_topic_call(topic_key_words)
  end

  def self.get_education_news
    topic_key_words = 'college OR "access to education" OR "student loan debt" OR "higher education" OR "literacy rates"'
    get_topic_call(topic_key_words)
  end

  def self.get_fao_comp_news
    topic_key_words = '"free and open computing" OR linux OR gnu kde OR gnome'
    get_topic_call(topic_key_words)
  end

  def self.get_domestic_violence_news
    topic_key_words = '"domestic violence survivor resource" OR "domestic violence" OR "domestic disturbance"'
    get_topic_call(topic_key_words)
  end
end
