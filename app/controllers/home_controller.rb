class HomeController < ApplicationController
  before_action :authenticate_admin!

  def index
    # if current_user
    #   # redirect_to user_path
    # end
  end
end
