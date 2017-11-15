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
    respond_to do |format|
      @post.update(post_params)
      format.js # edit.js.erb
    end
  end

  def destroy
    respond_to do |format|
      Post.find(params[:id]).destroy
      format.js # destroy.js.erb
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
  
end
