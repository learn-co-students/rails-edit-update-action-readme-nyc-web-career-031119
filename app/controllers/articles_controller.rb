class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    # byebug
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    # byebug
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

def edit
  # byebug
  @article = Article.find(params[:id])
end

def update
  #  raise params.inspect
  # byebug
  @article = Article.find(params[:id])
# byebug
  @article.update(title: params[:article][:title], description: params[:article][:description])


  redirect_to article_path(@article.id)
end

end
