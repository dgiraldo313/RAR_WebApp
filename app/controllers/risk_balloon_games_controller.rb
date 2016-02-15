class RiskBalloonGamesController < ApplicationController
  before_action :require_research
  respond_to :json, :html

  def show
    @risk_balloon_game= RiskBalloonGame.find(params[:id])
    respond_with  @risk_balloon_game
  end
end
