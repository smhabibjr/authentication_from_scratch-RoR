class AccountLoginController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index

  end

  def create
    registeredEmail = params[:registeredEmail]
    registeredPass = params[:registeredPass]
    account_verify = Account.find_by(email:registeredEmail, pass:registeredPass)
    if account_verify
      status = account_verify['name']
      redirect_to controller: :dashboard, action: index
      value = 1
    else
      status = "account not found "
      flash[:notice] = "User not found. Check email or password and try again"
      redirect_to action: index
    end
  end
end
