require 'rails_helper'

RSpec.describe UserAnswer, :type => :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:question) }
    it { should belong_to(:answer) }
  end
end
