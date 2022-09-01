class Story
  attr_reader :date,
              :author,
              :title,
              :content,
              :img,
              :url,
              :description

  def initialize(hash)
    @date = formatted_date(hash[:publishedAt])
    @author = hash[:author]
    @title = hash[:title]
    @content = hash[:content]
    @img = hash[:urlToImage]
    @description = hash[:description]
    @url = hash[:url]
  end

  def formatted_date(date)
    date.to_date.strftime('%m/%d/%Y')
  end
end
