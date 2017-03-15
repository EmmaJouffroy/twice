class LogsController < ApplicationController
  before_action :set_log
  def show
    @article = @log.article
    @article.content = @log.content
    @articles = Article.all.order(date: :asc)
    @articles.each do |article|
      if article.id == @log.article_id
        article.content = @log.content
        break
      end
    end

    @notion = Notion.first
    render "articles/show"
  end
  private
  def set_log
    @log = Log.find(params[:id])
  end
end
