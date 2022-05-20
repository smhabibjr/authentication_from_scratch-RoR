class SignUpController < ApplicationController
  def new
    @students = Student.new
  end

  def create

    #Student.create(email: params[:email],password: params[:password], password_confirmation: params[:password_confirmation] )

  end


end

