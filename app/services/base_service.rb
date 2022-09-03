class BaseService
  def self.conn_news
    Faraday.new(url: "https://newsapi.org/v2/") do |req|
      req.headers['X-Api-Key'] = ENV['NEWS_API_KEY']
      req.params['excludeDomains'] = "theguardian.com,cnn.com,dailynorseman.com"
      req.params['pageSize'] = 20
    end
  end

  def self.conn_congress
    Faraday.new(url: "https://api.propublica.org") do |f|
      f.headers['X-API-KEY'] = ENV['congress_api']
    end
  end

  def self.conn_reps
    Faraday.new(url: "https://www.googleapis.com") do |f|
    f.params('key') = ENV['google_api']
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
