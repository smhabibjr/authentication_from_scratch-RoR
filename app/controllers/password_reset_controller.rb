class PasswordResetController < ApplicationController
  def index
  end

  def create
    @user = User.find_by(email: params[:email])
    asdf = 1
    if @user.present?
      # send an email to the user to reset password
      redirect_to root_path, notice: "Email is found. We have sent an email to reset your password"
      PasswordMailer.with(user: @user).reset.deliver_now
    else
      redirect_to login_path, alert:"User not found. Try again or create a new account"
    end
  end

  def edit
    @user = User.find_signed!(params[:token], purpose: "password_reset")
  rescue ActiveSupport::MessageVerifier::InvalidSignature
    redirect_to login_path, alert:"Your token has expired. Please try again."
  end

  def update
    @user = User.find_signed!(params[:token], purpose: "password_reset")
    if @user.update(password_params)
      redirect_to login_path, notice:"Your password was reset successfully. Please sing in."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end

end
