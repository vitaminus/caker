class ManufacturersController < ApplicationController
  
  def index
    @manufacturers = User.order('username').where("admin = ?", false)
  end

  def show
    @manufacturer = User.find(params[:id])
  end
end
