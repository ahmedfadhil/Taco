class ArticlesController < ApplicationController
  def new
    @article = Article.new

  end

  def create
    #render plain: params[:article].inspect
    # Create an article
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_show(@article)
  end
  def show
  end

  private
  def article_params
    params.require(:article).permit(:title, :author, :description)
  end

end