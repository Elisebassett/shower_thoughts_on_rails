class HomeController < ApplicationController
 

  def index
    current_user
    @feed = Post.all
    render "home/index"
  end

end
