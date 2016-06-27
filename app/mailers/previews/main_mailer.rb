class MainMailerPreview < ActionMailer::Preview

  def notify_question_author
    question = Question.create(email: "author@question.com", body: "Is it monday?")
    answer = Answer.create(question: question, email: "answer@question.com", body: "yes, it is")

    mail = MainMailer.notify_question_author(answer)

  end
end
