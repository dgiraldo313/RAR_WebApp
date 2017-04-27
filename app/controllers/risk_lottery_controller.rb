class RiskBalloonGamesController < ApplicationController
  before_action :require_research
  respond_to :json, :html

  def show
   # checks to see if it was an AJAX request
   # this is used so that the first item in the array is not deleted twice
   # on risk ballon show page, two request are made every times page is loaded
      # One request to load the page and the other an ajax request to retrieve variables for JS.
    if !request.xhr?
      # delete first item in the array
      session[:game_list].shift
    end
    # variables passed to the views
    @risk_balloon_game = RiskBalloonGame.find(params[:id])
    @player = session[:player]
    @game_list = session[:game_list]
    @game_id = @game_list.first
    # reloads the player object to retrive latest data
    player= session[:player].reload
    # passes variable to views with the latest total_earnings
    @total_earnings = player.total_earnings

    # check if array is not empty
    if session[:game_list].any?
      respond_with  @risk_balloon_game

    # if array is empty then redirect ro result page
    else
      redirect_to results_path
    end

  end

end
