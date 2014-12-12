class Blob < ActiveRecord::Base
  validates :key, presence: true

  rails_admin do
    configure :contents do
      html_attributes rows: 20, cols: 120
    end
  end
end
