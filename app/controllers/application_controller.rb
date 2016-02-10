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
  def current_research
  	@current_research ||= Research.find(session[:research_id]) if session[:research_id]
  end

  helper_method :current_research

  def require_research
  	if current_research
  		true
  	else
  		flash[:notice]= 'You must have a PIN to access that page.'
  		redirect_to root_path
  	end
  end

  ##solution for devise redirecting to root
  def after_sign_in_path_for(resource)
    rails_admin_path #your path
  end
end
