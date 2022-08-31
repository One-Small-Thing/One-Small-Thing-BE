module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id.to_i)
    end

    field :users, [UserType], null: true

    def users
      User.all
    end

    field :topics, [TopicType], null: false

    def topics
      Topic.all
    end

    field :headlines, [HeadlineType], null: true

    def headlines
      NewsFacade.create_general_stories
    end

    field :stories, [HeadlineType], null: false do
      argument :name, String, required: true
    end

    def stories(name:)
      NewsFacade.create_topic_stories(name)
    end
  end
end
