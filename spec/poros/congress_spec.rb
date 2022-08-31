require 'rails_helper'

RSpec.describe Congress do
  it 'exists and has attributes' do
    json = File.read('./spec/fixtures/dummy_files/congress_member_example.json')
    hash = JSON.parse(json, symbolize_names: true)
    member = Congress.new(hash)

    expect(member).to be_an_instance_of(Congress)
  end
end
