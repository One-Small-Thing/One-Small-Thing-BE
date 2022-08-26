require 'rails_helper'

RSpec.describe UserTopic, type: :model do
  describe "validations" do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:topic_id) }
  end

  describe "relationships" do
    it { should belong_to(:user) }
    it { should belong_to(:topic) }
  end
end
