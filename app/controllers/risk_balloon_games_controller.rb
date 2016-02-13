class RiskBalloonGamesController < ApplicationController

  def show
    @risk_balloon_game= RiskBalloonGame.find(params[:id])
  end
end
