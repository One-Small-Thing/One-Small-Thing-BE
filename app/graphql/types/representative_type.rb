module Types
  class RepresentativeType < Types::BaseObject
    field :name, String, null: true
    field :address, String, null: true
    field :party, String, null: true
    field :phones, String, null: true
    field :emails, String, null: true
    field :office, String, null: true
  end
end
