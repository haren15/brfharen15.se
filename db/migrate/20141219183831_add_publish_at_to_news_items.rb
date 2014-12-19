class AddPublishAtToNewsItems < ActiveRecord::Migration
  def change
    add_column :news_items, :publish_at, :date
  end
end
