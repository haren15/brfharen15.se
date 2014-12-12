module ApplicationHelper
  def render_news_item(news_item)
    if news_item
      render partial: 'news_items/news_item', locals: { news_item: news_item }
    end
  end

  def render_blob(*args)
    options = args.extract_options!

    key = args.join('.')
    blob = Blob.find_by_key(key)

    render :partial => 'blobs/blob', locals: { key: key, blob: blob, options: options }
  end

  def render_title(section)
    render :partial => 'shared/title', locals: { section: section }
  end

  def markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    markdown.render(text).html_safe
  end
end
