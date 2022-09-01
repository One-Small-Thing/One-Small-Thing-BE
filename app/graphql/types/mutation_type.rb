module Types
  class MutationType < Types::BaseObject
    field :user_update, mutation: Mutations::UserUpdate
    field :user_delete, mutation: Mutations::UserDelete
    field :create_user, mutation: Mutations::CreateUser
  end
end
