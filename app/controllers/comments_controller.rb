class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:id])
    @comments = @post.comment.all
  end

  def create
    @comment
  end

  def new

  end

  def even

  end

  def show

  end

  def update

  end

  def destroy

  end
end
