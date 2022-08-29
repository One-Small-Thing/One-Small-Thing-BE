class BaseService
  def self.conn_news
    Faraday.new(url: "https://newsapi.org/v2/") do |req|
      req.headers['X-Api-Key'] = ENV['NEWS_API_KEY']
    end
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
