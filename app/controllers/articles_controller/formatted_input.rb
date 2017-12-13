class FormattedInput < ApplicationController
  def initialize(article_text, article_title)
    @article_text = article_text
    @article_title = article_title
  end

  def text
    formatted_paragraphs_array
  end

  def title
    formatted_title
  end

  private
  attr_reader :article_text, :article_title

  def formatted_paragraphs_array
    paragraphs_array.map(&:strip)
  end

  def paragraphs_array
    article_text.split("\n")
  end

  def formatted_title
    article_title.strip
  end
end
