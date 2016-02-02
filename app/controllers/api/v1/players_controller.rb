class Api::V1::PlayersController < ApplicationController
  respond_to :json

  def index
    respond_with Player.all
  end

  def show
    respond_with player
  end

  def create
    respond_with :api, :v1, Player.create(player_params)
  end

  def update
    respond_with player.update(player_params)
  end

  def destroy
    respond_with player.destroy
  end

  private

  def player
    Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:first_name, :last_name, :email, :gender)
  end

end
