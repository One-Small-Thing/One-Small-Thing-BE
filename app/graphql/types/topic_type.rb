# frozen_string_literal: true

module Types
  class TopicType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :topic_name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def topic_name
      self.object.pluck(:name).join(", ")
    end
  
  end
end
