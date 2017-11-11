class HomeController < ApplicationController
 

  def index
    @user = current_user
    @feed = Post.all
    render "home/index"
  end

end
