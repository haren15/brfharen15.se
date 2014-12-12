module ApplicationHelper
  def render_news_item(news_item)
    if news_item
      render partial: 'news_items/news_item', locals: { news_item: news_item }
    end
  end
end
