class UserAnswersController < ApplicationController
  layout 'background'
  include UserAnswerHelper

  def create
    question = Question.find(create_params[:question_id])
    user_answer = @current_user.user_answers.find_or_create_by(question_id: create_params[:question_id])

    if user_answer.update(create_params.merge(user_id: @current_user.id))
      return redirect_to question_path(question.next_question) if question.next_question
      @total = calculate_total
      render :total
    else
      redirect_to question_path(question.id)
    end
  end

  private
  def create_params
    params.require(:user_answer).permit(:answer_id, :question_id)
  end
end
