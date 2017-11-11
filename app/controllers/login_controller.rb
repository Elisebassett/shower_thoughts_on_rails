class LoginController < ApplicationController
  
  def index
    
  end

  def create
    @user = User.find_by(session_params)
    if @user
      session[:id] = @user.id
      redirect_to @user
    else
      flash[:alert] = 'Your email or password are incorrect'
      redirect_to new_session_path
    end
  end

  def new
  
  end

  def destroy
    session[:user_id] = nil
    redirect_to users_path
  end

  def session_params
    params.require(:login).permit(:email, :password)
  end
end
