class RiskBalloonGamesController < ApplicationController
  before_action :require_research
  respond_to :json, :html

  def show
    @risk_balloon_game= RiskBalloonGame.find(params[:id])
    @player_id = session[:player_id]
    @game_list= session[:game_list]


    if @game_list
      respond_with  @risk_balloon_game
    else
      redirect_to thankyou_path
    end

    # session.delete(:game_list)



  end

end
