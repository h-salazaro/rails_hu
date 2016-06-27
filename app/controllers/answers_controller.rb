class AnswersController < ApplicationController

  def create
    @answer = Answer.create(answer_params)
    session[:current_user_email] = answer_params[:email]

    MainMailer.notify_question_author(@answer).deliver_now

    redirect_to question_path(@answer.question.id)
  end


  private
  def answer_params
    params.require(:answer).permit(:question_id, :email, :body)
  end
end
