class User < ApplicationRecord
  has_many :user_answers

  validates_presence_of :name

  def not_all_questions_answered
    user_answers.count != Question.all.count
  end
end
