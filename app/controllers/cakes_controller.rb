# encoding: UTF-8
class CakesController < ApplicationController
  
  before_filter :cake_find, only: [:show, :edit, :update, :destroy]

  def index
    @cakes = Cake.all
  end

  def show
    @cake = Cake.find(params[:id])
    @commentable = @cake
    @comments = @commentable.comments
    @comment = Comment.new
  end

  def new
    @cake = Cake.new
  end

  def create
    @cake = Cake.new(params[:cake])
    if @cake.save
      flash[:success] = 'Торт успешно добавлен'
      redirect_to new_cake_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @cake.update_attributes(params[:cake])
      flash[:success] = 'Изменения успешно сохранены'
      redirect_to cakes_path
    else
      render 'edit'
    end
  end

  def destroy
    @cake.destroy
    flash[:success] = 'Торт успешно удален'
    redirect_to cakes_path
  end

end
