# frozen_string_literal: true

module Types
  class TopStoriesType < Types::BaseObject
    field :date, String, null: true
    field :author, String, null: true
    field :title, String, null: true
    field :content, String, null: true
    field :img, String, null: true
    field :url, String, null: true
    field :description, String, null: true
  end
end
