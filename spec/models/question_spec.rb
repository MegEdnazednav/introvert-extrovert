require 'rails_helper'

RSpec.describe Question, :type => :model do
  let(:question) { create(:question) }
  let(:other_question) { create(:question) }

  before { question }

  describe 'validations' do
    it { should validate_presence_of(:text) }
  end

  describe 'associations' do
    it { should have_many(:answers) }
    it { should have_many(:user_answers) }
  end

  describe 'without a next_question' do
    it 'next question is nil' do
      expect(question.next_question).to be nil
    end
  end

  describe 'with a next_question' do
    before { other_question }

    it 'next question exists' do
      expect(question.next_question.id).to be other_question.id
    end
  end
end
