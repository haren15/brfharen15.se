class Faq < ActiveRecord::Base
  rails_admin do
    configure :answer do
      html_attributes rows: 20, cols: 120
    end
  end
end
