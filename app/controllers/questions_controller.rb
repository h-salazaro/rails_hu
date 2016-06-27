class QuestionsController < ApplicationController
  before_action :set_question, only: [:show]

  def show
    @answers = @question.answers.order(created_at: :desc)
  end

  def create
    @question = Question.create(question_params)
    sessions[:current_user_email] = question_params[:email]
    redirect_to root_path
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:email, :body)
  end
end
