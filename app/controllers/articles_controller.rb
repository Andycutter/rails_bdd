class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end
  
  def create
    @article = Article.create(article_params)
    if @article.persisted?
      redirect_to root_path, notice: 'Article was successfully created.'
    else
      flash[:error] = 'Your article could not be saved'
    end

  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
