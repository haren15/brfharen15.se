class NewsItem < ActiveRecord::Base
  rails_admin do
    configure :description do
      html_attributes rows: 20, cols: 120
    end
  end

  def self.published
    where('DATE(publish_at) <= ?', Date.today)
  end

  def self.ordered
    order('publish_at DESC')
  end

  def to_param
    "#{id} #{title}".parameterize
  end
end
