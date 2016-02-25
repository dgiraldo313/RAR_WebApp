class ResearchesController < ApplicationController
  before_action :require_research
  def show
    @research= Research.find(params[:id])
    # create a variable to store all the instances of the risk balloon game that belongs to a research
    @balloon_games= @research.risk_balloon_games
    @game_list= session[:game_list]
  end
end
