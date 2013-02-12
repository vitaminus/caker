module CountriesHelper

  def country_find
    @country = Country.find(params[:id])
  end

end
