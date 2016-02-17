class DataOutputRiskBalloonController < ApplicationController

  def create
    # uses parameters to create new player
    @data = DataOutputRiskBalloon.new(data_params)
    # if there are no errors creating player
    # respond_to do |format|
    if @data.save
      # creates a cookie for the data object
        # session[:data]= @data
      flash[:success] = "Data was saved successfully"
    else
        flash[:error] = "There was an error saving the data"
    end
  end

  private
  def data_params
    params.require(:data_output_risk_balloon).permit(:player_id, :risk_balloon_game_id,:popped?,:inflation_level, :earnings, :turns_taken,:time_played)
  end
end
