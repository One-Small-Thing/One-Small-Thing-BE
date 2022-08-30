# frozen_string_literal: true

module Types
  class HeadlineType < Types::BaseObject
    field :date, String, null: false
    field :author, String, null: false
    field :title, String, null: false
    field :content, String, null: false
    field :img, String, null: false

    
  end
end
