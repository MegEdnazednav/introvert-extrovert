require 'rails_helper'

RSpec.describe "create a new user", type: :request do
  subject { post "/user_answers", params: create_params }
  let(:question) { create(:question) }
  let(:answer) { create(:answer, question: question) }
  let(:answer_two) { create(:answer, question: question) }
  let(:user_answer) { create :user_answer, question_id: question.id, answer_id: answer_two.id, user: user }

  let(:user) { create(:user) }

  let(:create_params) do
    {
      user_answer: {
        question_id: question.id,
        answer_id: answer.id
      }
    }
  end

  before { user }

  context "With correct params" do
    it 'saves the answer' do
      expect{ subject }.to change{ UserAnswer.count }.by(1)
    end
  end

  context "With correct params but question already answered" do
    before { user_answer }
    it 'updates the answer' do
      expect{ subject }.not_to change{ UserAnswer.count }
      expect(user_answer.reload.answer_id).to be answer.id
    end
  end

  context "Without correct params" do
    let(:create_params) { { name: nil } }

    it 'raises a parameter missing error' do
      expect{ subject }.to raise_error(ActionController::ParameterMissing)
    end
  end
end
