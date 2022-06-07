class Question < ApplicationRecord
  has_many :answers
  has_many :user_answers

  validates_presence_of :text

  def next_question
    Question.where("id > ?", id).first
  end
end
