# encoding: UTF-8
class CountriesController < ApplicationController
  before_filter :authenticate_user!, except: [:show, :index]
  before_filter :country_find,       only: [:show, :edit, :update, :destroy]
  before_filter :admin_user,         except: [:show, :index]

  def index
    @countries = Country.all
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new(params[:country])
    if @country.save
      flash[:success] = "Страна успешно добавлена"
      redirect_to new_country_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @country.update_attributes(params[:country])
      flash[:succes] = 'Страна успешно изменена'
      redirect_to country_path(@country)
    else
      render 'edit'
    end
  end

  def destroy
    @country.destroy
    flash[:success] = "Страна успешно удалена"
    redirect_to countries_path
  end

end
