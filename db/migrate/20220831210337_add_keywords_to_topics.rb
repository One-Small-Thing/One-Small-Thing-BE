class AddKeywordsToTopics < ActiveRecord::Migration[7.0]
  def change
    add_column :topics, :keywords, :string
  end
end
