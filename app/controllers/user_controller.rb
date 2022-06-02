class UserController < ApplicationController
  def index
    @new_user = User.new
  end

  def create

    create_new_user = User.new(new_user_params)
    if create_new_user.save
      session[:user_id] = create_new_user.id
      redirect_to root_path, notice: 'Account successfully created'
    else
        redirect_to signup_path, notice: 'invalid username and password'
    end
  end

  private

  def new_user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation,)
  end

end
