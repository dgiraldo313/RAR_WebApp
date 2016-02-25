class ResearchSessionsController < ApplicationController

  def create
    # checks the PIN the player entered and tries to find the research related to the PIN
    research= Research.find_by(PIN: params[:PIN])

    # if the PIN belongs to a research
  	if research
      # create a cookie to save the research_id
  		session[:research_id] = research.id
      # create a cookie to save the games that belong to the research
      session[:game_list] = research.risk_balloon_games

      flash[:success] = "Thanks for joining our study!"
      # send player to the screen where they can register
  		redirect_to register_path
    # if the PIN doesnt belong to a research
  	else
  		flash[:error] = "There was a problem joining the study. Please check your PIN"
  		# send player back to PIN page
      redirect_to root_path
  	end
  end

  # Once player finishes study, session will be detroyed
  def destroy
    # cookie is set from research id to nil
  	session[:research_id]= nil
  	reset_session
    # eventually will redirect to thank you page
  	redirect_to thankyou_path, notice: "Thank you for participating"
  end

end
