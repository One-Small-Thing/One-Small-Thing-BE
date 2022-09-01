# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: true
    field :name, String, null: true
    field :email, String, null: false
    field :location, String, null: false
    field :topics, [TopicType], null: true
    field :find_topics, Types::TopicType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
