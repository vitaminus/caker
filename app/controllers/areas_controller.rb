# encoding: UTF-8
class AreasController < ApplicationController
  before_filter :authenticate_user!, except: [:show, :index]
  before_filter :area_find,          only: [:show, :edit, :update, :destroy]
  before_filter :admin_user,         except: [:show, :index]

  def index
    @areas = Area.all
  end

  def new
    @area = Area.new
  end

  def create
    @area = Area.new(params[:area])
    if @area.save
      flash[:success] = 'Район успешно добавлен'
      redirect_to new_area_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @area.update_attributes(params[:area])
      flash[:success] = "Изменения успешно сохранены!"
      redirect_to @area
    else
      render 'edit'
    end
  end

  def destroy
    @area.destroy
    flash[:success] = "Страна успешно удалена"
    redirect_to areas_path
  end
end
