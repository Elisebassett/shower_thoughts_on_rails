class PostsController < ApplicationController
  before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]
  
  def index
    @post = Post.find(params[:id])
  end

  def create
    @post = current_user.posts.create(post_params)
    redirect_to @user
  end

  def new
    @user = current_user
    @post = @user.posts.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
    @user = current_user
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to @user
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to user_path
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
  
end
