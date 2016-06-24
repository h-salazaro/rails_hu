require 'rails_helper'

RSpec.describe Question, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  subject(:question) { Question.new(email: "mail@mail.com", body: "is this the real life?") }

  it 'has an email' do
    expect(question.email).not_to be nil
  end

  it 'has a body' do
    expect(question.body).not_to be nil
  end

end
