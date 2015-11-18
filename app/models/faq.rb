class Faq < ActiveRecord::Base
  rails_admin do
    configure :answer do
      html_attributes rows: 20, cols: 120
    end
  end

  def to_param
    "#{id}, #{question}".parameterize
  end
end
