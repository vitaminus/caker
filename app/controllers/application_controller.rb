# encoding: UTF-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  include CountriesHelper
  include CitiesHelper
  include AreasHelper
  include ProfilesHelper

  protected

    def admin_user
      unless current_user.admin?
        flash[:error] = "У вас недостаточно прав для доступа к этой странице"
        redirect_to(root_path)
      end
    end
end
