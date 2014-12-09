class WelcomeController < ApplicationController
  def index
    @news_item_1, @news_item_2, @news_item_3 = NewsItem.all.limit(3)
  end
end
