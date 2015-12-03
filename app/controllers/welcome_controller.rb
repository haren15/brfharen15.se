class WelcomeController < ApplicationController
  def index
    @news_items = NewsItem.published.ordered.limit(3)
  end
end
