# encoding: UTF-8
class AreasController < ApplicationController
  before_filter :authenticate_user!, except: [:show, :index]
  before_filter :area_find, only: [:show, :edit, :update, :destroy]

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
end
