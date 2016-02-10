class PlayersController < ApplicationController
  def index
    @players= Player.all
  end

  def show
    @player= Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def edit
    @player = Player.find(params[:id])

  end

  def create
    @player = Player.new(player_params)
    if @player.save
      session[:player_id]= @player.id
      flash[:notice] = "Thank you for signing up"
      redirect_to root_path
    else
      # flash[:error] = "Player could not be created"
      render action: :new
    end
  end

  def update
    @player = Player.find(params[:id])
    if @player.update_attributes(player_params)
        flash[:success] = "Saved Player."
        redirect_to root_path
    else
        flash[:error] = "That Player could not be saved."
        render action: :edit
    end
  end

  def destroy
    @player = Player.find(params[:id])
    if @player.destroy
        flash[:success] = "Player was deleted."
    else
        flash[:error] = "Player could not be deleted."
    end
    redirect_to players_path
  end


  private
  def player_params
    params.require(:player).permit(:first_name, :last_name,:email,:gender, :DOB, :education_level,:race,:household_size,:household_income)
  end
end
