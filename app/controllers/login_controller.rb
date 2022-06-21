class LoginController < ApplicationController
  def index
  end

  def create
    find_user = User.find_by_username(params[:username])
    if find_user && find_user.authenticate(params[:password])
      session[:user_id] = find_user.id
      redirect_to root_path, notice: 'User loged in'
    else
      redirect_to login_path, alert: 'User name or password invalid'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Loged out'
  end

end
