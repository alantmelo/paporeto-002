# Preview all emails at http://localhost:3000/rails/mailers/suggested_article_mailer
class SuggestedArticleMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/suggested_article_mailer/suggestion
  def suggestion
    SuggestedArticleMailer.suggestion
  end

  # Preview this email at http://localhost:3000/rails/mailers/suggested_article_mailer/thanks
  def thanks
    SuggestedArticleMailer.thanks
  end

end
