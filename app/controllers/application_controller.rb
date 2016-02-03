class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  add_flash_types :success

  # private
  # def logged_in?
  # 	current_user
  # end
  # helper_method :logged_in?
  #
  # def current_user
  # 	@current_user ||= User.find(session[:id]) if session[:id]
  # end

  # helper_method :current_user
  #
  # def require_user
  # 	if current_user
  # 		true
  # 	else
  # 		flash[:notice]= 'You must be logged in to access that page.'
  # 		redirect_to :login
  # 	end
  # end
end
