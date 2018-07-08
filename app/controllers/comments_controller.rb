class CommentsController < ApplicationController
  def create
    article = Article.find(params[:article_id])
    Comment.create(email: params[:email], content: params[:comment], article: article)
    flash[:succes] = 'Your comment was added'
    redirect_to article_path(article)
  end
end
