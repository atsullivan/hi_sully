class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    formatted_input = FormattedInput.new(@article.text, @article.title)
    @paragraphs = formatted_input.text
    @title = formatted_input.title
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end
end
