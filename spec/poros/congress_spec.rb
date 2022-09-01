require 'rails_helper'

RSpec.describe Congress do
  it 'exists and has attributes' do
    json = File.read('./spec/fixtures/dummy_files/congress_member_example.json')
    hash = JSON.parse(json, symbolize_names: true)
    member = Congress.new(hash[:results][0][:members][0])

    expect(member).to be_an_instance_of(Congress)
    expect(member.party).to be_a(String)
    expect(member.full_name).to eq("Tammy Baldwin")
    expect(member.twitter).to eq("SenatorBaldwin")
    expect(member.next_election).to eq("2024")
  end
end
