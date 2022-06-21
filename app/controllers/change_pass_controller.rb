class ChangePassController < ApplicationController
  before_action :check_user_logged_in_or_not

  def index

  end

  def update
    if current_user.update(password_params)
      redirect_to root_path, notice: "Password successfully updated."
    else
      render :index, notice: "Invalid password. Try again."
    end
  end
  private
  def password_params
    params.require(:user).permit(:password, :password_confirmation )
  end

end
