# frozen_string_literal: true

module Mutations
  class UserUpdate < BaseMutation
    description "Updates a user by id"

    field :user, Types::UserType, null: false

    argument :id, ID, required: true
    argument :name, String, required: false
    argument :email, String, required: false
    argument :location, String, required: false

    def resolve(id:, **args)
      user = ::User.find(id)
      raise GraphQL::ExecutionError.new "Error updating user", extensions: user.errors.to_hash unless user.update(**args)

      { user: user }
    end
  end
end
