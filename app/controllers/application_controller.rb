class ApplicationController < ActionController::Base

  def current_user
    User.where(id: session[:user_id]).first
  end
  helper_method :current_user


  def check_user_logged_in_or_not
    if current_user.nil?
      redirect_to login_path, alert: 'You must logged in.'
    end
  end


end
