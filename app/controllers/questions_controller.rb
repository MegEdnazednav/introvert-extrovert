# frozen_string_literal: true

class QuestionsController < ApplicationController
  layout 'background'

  def show
    redirect_to root_path unless @current_user
    @question = Question.find(params[:id])
    @answers = @question.answers
    @user_answer = UserAnswer.new
  end
end
