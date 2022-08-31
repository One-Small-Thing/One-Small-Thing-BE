class User < ApplicationRecord

  has_many :user_topics
  has_many :topics, through: :user_topics

  validates_presence_of :name, :email
  validates_uniqueness_of :email
  # def find_topics
  #   topics
  # end
end
