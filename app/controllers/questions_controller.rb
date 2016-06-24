class QuestionsController < ApplicationController
  before_action :set_question, only: [:show]

  def show
  end

  def create
    @question = Question.create(question_params)
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
