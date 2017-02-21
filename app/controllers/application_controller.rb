class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def current_user
  	@current_user ||= User.find_by(id: session[:user_id])
  end

helper_method :current_user

rescue_from CanCan::AccessDenied do | exception |
    redirect_to '/', alert: exception.message
  end
end
