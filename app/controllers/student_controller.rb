class StudentController < ApplicationController
  def index

    @members = Member.new
  end
  def create
    @members = Member.new(new_params)
    if @members.save
      session[:user_id] = @members.id
      redirect_to root_url, notice: "Successfully created account"
      else
        redirect_to sign_up_path, alert: "Try again to create new account"
    end
  end

  def new_params
    params.require(:member).permit(:email, :password, :password_confirmation)
  end
end