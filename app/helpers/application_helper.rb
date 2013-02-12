# encoding: UTF-8
module ApplicationHelper

  include CountriesHelper
  include CitiesHelper
  include AreasHelper

  def full_title(page_title)
    base_title = "Торты на заказ"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

end
