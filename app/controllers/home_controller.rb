class HomeController < ApplicationController
 

  def index
    current_user
    @feed = Post.all
    @comment = Comment.new
  end


end
