class CommentsController < ApplicationController

  def create
    respond_to do |format|
      @comment = current_user.comments.create(comment_params)
      format.js # edit.js.erb
    end
  end

  def update
    @comment = Comment.find(params[:id])
    respond_to do |format|
      @comment.update(comment_params)
      format.js # edit.js.erb
    end
  end

  def destroy
    respond_to do |format|
      Comment.find(params[:id]).destroy
      format.js # destroy.js.erb
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end

end
