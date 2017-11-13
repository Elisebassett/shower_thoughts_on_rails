class UsersController < ApplicationController
  before_action :authenticate, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'Account Made! Welcome to the world!'
      redirect_to "/login"
    else
      flash[:alert] = 'Your account was not created'
      redirect_to new_user_path
    end
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @current_user = current_user
    @posts = @user.posts.reverse_order
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :username, :bio)
  end

end
