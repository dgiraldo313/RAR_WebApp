class ResearchSessionsController < ApplicationController

  def create
    research= Research.find_by(PIN: params[:PIN])

  	if research
  		session[:research_id] = research.id
  		flash[:success] = "Thanks for logging in!"
  		redirect_to new_player_path
  	else
  		flash[:error] = "There was a problem logging in. Please check your username and password"
  		render action: 'new'
  	end
  end

  def destroy
  	session[:research_id]= nil
  	reset_session
  	redirect_to root_path, notice: "You have been logged out"
  end


end
