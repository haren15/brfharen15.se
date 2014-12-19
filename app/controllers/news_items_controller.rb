class NewsItemsController < ApplicationController
  def index
    @news_items = NewsItem.published
  end

  def show
    @news_item = NewsItem.find(params[:id])
  end
end
