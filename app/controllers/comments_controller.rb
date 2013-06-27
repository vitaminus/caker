# encoding: UTF-8
class CommentsController < ApplicationController
  before_filter :load_commentable

  def index
    @comments = @commentable.comments
  end

  def new
    @comment = @commentable.comments.new
  end

  def create
    @comment = @commentable.comments.new(params[:comment])
    if @comment.save
      redirect_to @commentable, notice: "Отзыв добавлен."
    else
      render :new
    end
  end

  def destroy
    #@manufacturer = User.find(params[:user_id])
    @comment = @commentable.comments.find(params[:id])
    @comment.destroy
    redirect_to @commentable, notice: "Комментарий удален"
  end

private

  def load_commentable
    resource, id = request.path.split('/')[1,2]
    resource = 'users' if resource == 'manufacturers'
    @commentable = resource.singularize.classify.constantize.find(id)
  end

end