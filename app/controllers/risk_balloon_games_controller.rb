class RiskBalloonGamesController < ApplicationController
  before_action :require_research
  respond_to :json
  def show
    @risk_balloon_game= RiskBalloonGame.find(params[:id])
    respond_with  RiskBalloonGame.find(params[:id])
  end
end
