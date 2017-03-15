class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def showMap
    @articles = Article.all
    render "map.html.erb"
  end
end
