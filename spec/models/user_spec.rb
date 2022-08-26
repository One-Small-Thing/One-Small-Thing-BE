require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
  end

  describe "relationships" do
    it { should have_many(:user_topics) }
    it { should have_many(:topics).through(:user_topics) }
  end
end
