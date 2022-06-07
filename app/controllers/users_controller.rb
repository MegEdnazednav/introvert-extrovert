class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_before_action :set_current_user

  layout 'background'

  def new
    @user = User.new
  end

  def create
    @user = User.new(create_params)
    if @user.save
      session[:user] = @user
      redirect_to question_path(Question.first), format: 'js'
    else
      render :new
    end
  end

  private
  def create_params
    params.require(:user).permit(:name)
  end
end
