require 'rails_helper'

RSpec.describe Answer, type: :model do

  subject(:answer) { Answer.new(question_id: 1, email: "cosme@fulanito.com", body: "It is the right answer") }

  it 'belongs to a question' do
    expect(subject.question_id).not_to be_nil
  end

  it 'has a valid email' do
    expect(subject.email).to match(/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
  end

  it 'has a body' do
    expect(subject.body.length).to be > 0
  end

end
