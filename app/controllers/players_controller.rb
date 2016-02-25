class PlayersController < ApplicationController
  # authenticates page to make sure that a PIN is entered before player can register
  before_action :require_research


  def index
    @players= Player.all
  end

  def show
    @player= Player.find(params[:id])
  end

  # creates new instance of a player
  def new
    @player = Player.new
  end


  def edit
    @player = Player.find(params[:id])

  end


  def create
    # uses parameters to create new player
    @player = Player.new(player_params)
    # if there are no errors creating player
    if @player.save
      # creates a cookie for the player id
      session[:player_id]= @player.id
      flash[:notice] = "Thank you for registering"
      # redirect to the research page to show a list of all games
      redirect_to research_path(session[:research_id])
    # in case of any errors, player will be prompt to try again
    else
      # flash[:error] = "Player could not be created"
      render action: :new
    end
  end


  # dont think player needs to be updated at any point?
  # player's total_earnings need to be updated after everygame
  def update
    @player = Player.find(params[:id])
    @previous_earnings = @player.total_earnings
    @new_earnings= params[:total_earnings]
    # problem is here need to find a way to combine @new_earnings and @previous_earnings
    @total_earnings= @new_earnings
    @player.update_attributes(:total_earnings => @total_earnings)
  end

  # dont think player needs to be deleted at any point?
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
    params.require(:player).permit(:first_name, :last_name,:email,:gender, :DOB, :education_level,:race,:household_size,:household_income, :research_id)
  end
end
