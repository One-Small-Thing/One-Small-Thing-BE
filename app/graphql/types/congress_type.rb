# frozen_string_literal: true

module Types
  class CongressType < Types::BaseObject
    field :full_name, String, null: true
    field :url, String, null: true
    field :party, String, null: true
    field :twitter, String, null: true
    field :contact, String, null: true
    field :next_election, String, null: true
    field :phone, String, null: true
  end
end
