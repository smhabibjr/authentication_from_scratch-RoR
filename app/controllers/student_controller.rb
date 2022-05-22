class StudentController < ApplicationController
  def new
    @students = Student.new
  end

  def create
    @stud = Student.new(user_params)
    @stud.save

    #Student.create(email: params[:email],password: params[:password], password_confirmation: params[:password_confirmation] )
  end

  private

  def user_params
    params.require(:student).permit(:email, :password, :password_confirmation)
  end

end

