class ResearchSessionsController < ApplicationController

  def create
    research= Research.find_by(PIN: params[:PIN])

  	if research
  		session[:research_id] = research.id
  		flash[:success] = "Thanks for joining our study!"
  		redirect_to register_path
  	else
  		flash[:error] = "There was a problem joining the study. Please check your PIN"
  		# render action: 'new'
      redirect_to root_path
  	end
  end

  def destroy
  	session[:research_id]= nil
  	reset_session
  	redirect_to root_path, notice: "You have been logged out"
  end


end
