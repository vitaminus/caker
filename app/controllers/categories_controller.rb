# encoding: UTF-8
class CategoriesController < ApplicationController
  before_filter :category_find, only: [:show, :edit, :update, :destroy]
  before_filter :admin_user,    except: [:show, :index]
  
  def index
    @categories = Category.all
  end

  def show    
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params[:category])
    if @category.save
      flash[:success] = 'Категория успешно добавлена'
      redirect_to new_category_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @category.update_attributes(params[:category])
      flash[:success] = "Изменения успешно сохранены!"
      redirect_to categories_path
    else
      render 'edit'
    end
  end

  def destroy
    @category.destroy
    flash[:success] = "Категория успешно удалена"
    redirect_to categories_path
  end
end
