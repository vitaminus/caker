# encoding: UTF-8
class ProfilesController < ApplicationController
  before_filter :profile_find,       only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(params[:profile])
    if @profile.save
      flash[:success] = "Профиль успешно сохранен"
      redirect_to profile_path(@profile)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @profile.update_attributes(params[:profile])
      flash[:succes] = 'Профиль успешно изменен'
      redirect_to profile_path(@profile)
    else
      render 'edit'
    end
  end

  def destroy
  end
end
