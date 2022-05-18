# frozen_string_literal: true
class AccountSignupController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index

  end

  def create
    name = params[:name]
    email = params[:email]
    pass = params[:password]
    confirm_pass = params[:confirm_password]
    create_new_user = Account.create(name: params[:name], email: params[:email], pass: params[:password], confirm_pass: params[:confirm_password])
    if create_new_user
      account_id = create_new_user['id']
      value = 1
    else
      head :not_found
      value = 1

    end

  end
end
