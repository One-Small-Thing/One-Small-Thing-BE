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

    field :top_stories, [TopStoriesType], null: true

    def top_stories
      NewsFacade.create_general_stories
    end

    field :congress, [CongressType], null: false do
      argument :state, String, required: false
    end

    def congress(state: nil)
      if state
        CongressFacade.find_congress_people(state)
      else
        CongressFacade.find_congress_people("")
      end
    end

    field :stories, [TopStoriesType], null: false do
      argument :name, String, required: true
    end

    def stories(name:)
      if name == "Top Stories"
        NewsFacade.create_general_stories
      else
        NewsFacade.create_topic_stories(name)
      end
    end

    field :representatives, [RepresentativeType], null: false do
      argument :address, String, required: true
    end

    def representatives(address:)
      RepresentativeFacade.find_each_rep(address)
    end

  end
end
