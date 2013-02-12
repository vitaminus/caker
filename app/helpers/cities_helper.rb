module CitiesHelper

  def city_find
    @city = City.find(params[:id])
  end

end
