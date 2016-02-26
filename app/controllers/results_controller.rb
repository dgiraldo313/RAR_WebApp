class ResultsController < ApplicationController
  def index
    # reloads the player object to retrive latest data
    player= session[:player].reload
    # passes variable to views with the latest total_earnings
    @total_earnings = player.total_earnings
  end
end
