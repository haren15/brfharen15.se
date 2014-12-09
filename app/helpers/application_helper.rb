module ApplicationHelper
  def render_news_item_puff(news_item)
    if news_item
      render partial: 'shared/news_item_puff', locals: { news_item: news_item }
    end
  end
end
