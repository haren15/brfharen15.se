class NewsItem < ActiveRecord::Base
  def self.published
    where('DATE(publish_at) <= ?', Date.today)
  end

  def to_param
    "#{id} #{title}".parameterize
  end
end
