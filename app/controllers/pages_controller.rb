class PagesController < ApplicationController
  def home
  end

  def choice
    @article = Article.order(date: :asc).limit(1)[0]
  end
end
