# encoding: UTF-8
class CitiesController < ApplicationController
  before_filter :authenticate_user!, except: [:show, :index]
  before_filter :city_find, only: [:show, :edit, :update, :destroy]

  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(params[:city])
    if @city.save
      flash[:success] = 'Город успешно добавлен'
      redirect_to new_city_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    
  end

  def destroy
    
  end
end
