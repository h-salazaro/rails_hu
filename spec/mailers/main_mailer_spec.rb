require "rails_helper"

RSpec.describe MainMailer, type: :mailer do
  describe "notify_question_author" do
    let(:mail) { MainMailer.notify_question_author }

    it "renders the headers" do
      expect(mail.subject).to eq("Notify question author")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
