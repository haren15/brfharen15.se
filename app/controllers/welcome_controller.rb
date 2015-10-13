class WelcomeController < ApplicationController
  def index
    @news_items = NewsItem.published.order('publish_at DESC').limit(3)
  end
end
