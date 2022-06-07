require 'rails_helper'

RSpec.describe Answer, :type => :model do
  describe 'validations' do
    it { should validate_presence_of(:text) }
    it { should validate_presence_of(:score) }
  end

  describe 'associations' do
    it { should have_many(:user_answers) }
    it { should belong_to(:question) }
  end
end
