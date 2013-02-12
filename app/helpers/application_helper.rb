# encoding: UTF-8
module ApplicationHelper

  def full_title(page_title)
    base_title = "Торты на заказ"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def country_find
    @country = Country.find(params[:id])
  end

  def city_find
    @city = City.find(params[:id])
  end

  def area_find
    @area = Area.find(params[:id])
  end

end
