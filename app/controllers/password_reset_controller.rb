class PasswordResetController < ApplicationController
  def index
  end

  def create
    @user = User.find_by_email(params[:email])
    asdf = 1
    if @user.present?
      # send an email to the user to reset password
      redirect_to root_path, notice: "Email is found. We have sent an email to reset your password"
      asdf = 1
    else

    end
  end
end
