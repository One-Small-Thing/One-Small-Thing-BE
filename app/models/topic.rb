class Topic < ApplicationRecord
  has_many :user_topics

  validates_presence_of :name
end
