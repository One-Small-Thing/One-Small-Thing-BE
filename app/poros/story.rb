class Story
  attr_reader :date,
              :author,
              :title,
              :content,
              :img

  def initialize(hash)
    @date = hash[:publishedAt]
    @author = hash[:author]
    @title = hash[:title]
    @content = hash[:content]
    @img = hash[:urlToImage]
  end
end
