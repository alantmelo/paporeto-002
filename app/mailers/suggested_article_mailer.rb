class SuggestedArticleMailer < ActionMailer::Base
  def suggestion(suggested_article)
    @suggested_article = suggested_article

    mail to: 'Editor do Paporeto <editor@paporeto.com>', from: "#{@suggested_article.name} <#{@suggested_article.email}>", subject: 'Paporeto: Sugestão de artigo'
  end

  def thanks(suggested_article)
    @suggested_article = suggested_article

    mail to: "#{@suggested_article.name} <#{@suggested_article.email}>", from: 'Editor do Paporeto <editor@paporeto.com>', subject: 'Paporeto: Obrigado pela sugestão de artigo'
  end
end
