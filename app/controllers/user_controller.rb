class UserController < ApplicationController
  def index
    @new_user = User.new
  end

  def create

    @new_user = User.new(new_user_params)
    if @new_user.save
      session[:user_id] = @new_user.id
      redirect_to root_path, notice: 'Account successfully created'
    else
      render :index
    end
  end

  private

  def new_user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation,)
  end

end
