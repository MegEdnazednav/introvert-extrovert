module UserAnswerHelper
  def determine_personality_type(score)
    if score >= half_of_total
      'extrovert'
    else
      'introvert'
    end
  end

  def personality_type_link(type)
    type == 'introvert' ?
      "https://www.healthline.com/health/what-is-an-introvert"
      :
      "https://www.healthline.com/health/what-is-an-extrovert"
  end

  def calculate_total
    @current_user.user_answers.map{|a| a.answer.score}.sum
  end

  private
  def half_of_total
    Question.all.map{|q| q.answers.last.score}.sum / 2
  end
end
