class SuggestedArticleMailer < ActionMailer::Base
  default from: "from@example.com"

  def suggestion
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  def thanks
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
