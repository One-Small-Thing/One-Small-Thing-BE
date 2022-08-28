# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: true
    field :name, String, null: true
    field :email, String, null: false
    field :topics, Types::TopicType, null: false
    field :find_topics, Types::TopicType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def users
      User.all
    end

  end
end
