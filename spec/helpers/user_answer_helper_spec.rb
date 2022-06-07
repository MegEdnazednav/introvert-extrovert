require 'rails_helper'

describe UserAnswerHelper, type: :helper do
  let(:question_one) { create(:question) }
  let(:question_one_answer_one) { create(:answer, question: question_one, score: 1) }
  let(:question_one_answer_two) { create(:answer, question: question_one, score: 5) }

  let(:question_two) { create(:question) }
  let(:question_two_answer_one) { create(:answer, question: question_two, score: 1) }
  let(:question_two_answer_two) { create(:answer, question: question_two, score: 5) }

  describe "determine personality type" do
    before {
      question_one_answer_one
      question_one_answer_two
      question_two_answer_one
      question_two_answer_two
    }

    it "should be introvert when answers have low scores" do
      determine_personality_type(question_one_answer_one.score + question_two_answer_one.score).should == 'introvert'
    end

    it "should be extrovert when answers have high scores" do
      determine_personality_type(question_one_answer_two.score + question_two_answer_two.score).should == 'extrovert'
    end
  end
end
