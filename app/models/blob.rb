class Blob < ActiveRecord::Base
  validates :key, presence: true, uniqueness: true

  after_create :expire_cache
  after_update :expire_cache
  after_destroy :expire_cache

  rails_admin do
    configure :contents do
      html_attributes rows: 20, cols: 120
    end
  end

  def self.get(key)
    Rails.cache.fetch(key) { find_by_key(key) }
  end


  private

  def expire_cache
    Rails.cache.delete(key)
  end
end
