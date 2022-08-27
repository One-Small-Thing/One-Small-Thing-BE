require 'rails_helper'

RSpec.describe Topic, type: :model do
  describe "validations" do
    it { should validate_presence_of(:name) }
  end

  describe "relationships" do
    it { should have_many(:user_topics) }
  end
end
