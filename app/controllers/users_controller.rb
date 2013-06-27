class UsersController < ApplicationController
  
  def index
    @users = User.order('username').where("admin = ?", false)
  end

  def show
    @user = User.find(params[:id])
    @username = @user.name? ? @user.name : @user.username
    @commentable = @user
    @comments = @commentable.comments
    @comment = Comment.new
  end

end
