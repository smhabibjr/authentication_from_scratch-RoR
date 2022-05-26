class UserController < ApplicationController
  def index
    @new_user = User.new
  end

  def create

    create_new_user = User.create(f_name: params[:f_name], l_name: params[:l_name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
    if create_new_user
      asdf = 1
    else
      asdf = 1
    end
  end

  private
  def user_params
    params.require(:user).permit(:f_name,:l_name, :email,:password, :password_confirmation)
    sdf = 1
  end


end
