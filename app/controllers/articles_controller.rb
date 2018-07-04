class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(article_params)
    @article.save
  end

  private

  def article_params
    article = params.require(:article).permit(:title, :content)
  end
end
