class ApplicationController < ActionController::Base
  protect_from_forgery
  include CountriesHelper
  include CitiesHelper
  include AreasHelper
end
