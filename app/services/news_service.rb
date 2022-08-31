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
      f.params['q'] = '"environmental disaster" "natural disaster" "oil spill" "climate change" "ecological disaster"'
    end
    get_json(response)
  end

  def self.get_abortionrights_news
    response = conn_news.get("everything") do |f|
      f.params['q'] = 'abortion "Roe V. Wade" "abortion access" "planned parenthood"'
    end
    get_json(response)
  end

  def self.get_education_news
    response = conn_news.get("everything") do |f|
      f.params['q'] = 'college "access to education" "student loan debt" "higher education" "literacy rates"'
    end
    get_json(response)
  end

  def self.get_fao_comp_news
    response = conn_news.get("everything") do |f|
      f.params['q'] = '"free and open computing" linux gnu kde gnome'
    end
    get_json(response)
  end

  def self.get_domestic_violence_news
    response = conn_news.get("everything") do |f|
      f.params['q'] = '"domestic violence survivor resource" "domestic violence" "domestic disturbance"'
    end
    get_json(response)
  end
end
