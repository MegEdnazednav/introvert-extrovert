require 'rails_helper'

RSpec.describe User, :type => :model do
  subject {
    described_class.new(
      name: "some name"
    )
  }

  describe "validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    describe 'validations' do
      it { should validate_presence_of(:name) }
    end
  end

  describe 'associations' do
    it { should have_many(:user_answers) }
  end
end
