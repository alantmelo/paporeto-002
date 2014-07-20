class SuggestedArticlesController < ApplicationController
  def new
    @suggested_article = SuggestedArticle.new
  end

  def create
    @suggested_article = SuggestedArticle.new(suggested_article_params)

    if @suggested_article.save
      redirect_to root_path, notice: "Obrigado pela sugestão, #{@suggested_article.name}"
    else
      render :new
    end
  end

  private
    def suggested_article_params
      params.require(:suggested_article).permit(:name, :email, :body)
    end
end
