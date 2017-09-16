class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.edit(params[:id])
  end

  def update
    @article =Article.find(params[:id])
    @article =Article.update(articles_params)
    redirect_to article_path(@article)
  end


  def create
    @article = Article.new(articles_params)
    #binding.pry
    if @article.save
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end


  private

  def articles_params
    params.required(:article).permit(:title,:text)
  end

end
