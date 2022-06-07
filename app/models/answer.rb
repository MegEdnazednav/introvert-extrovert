class Answer < ApplicationRecord

  belongs_to :question
  has_many :user_answers

  validates_presence_of :text, :score
end
