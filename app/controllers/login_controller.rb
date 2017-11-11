class LoginController < ApplicationController
  
  def index
    
  end

  def create
    @user = User.find_by(session_params)
    if @user 
      session[:id] = @user.id
      redirect_to '/'
    else
      flash[:alert] = 'Your username or password are incorrect'
      redirect_to login_path
    end
  end

  def new
  
  end

  def destroy
    session[:user_id] = nil
    redirect_to users_path
  end

  private

  def session_params
    params.require(:login).permit(:username, :password)
  end
end
