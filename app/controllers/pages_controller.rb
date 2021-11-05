class PagesController < ApplicationController
  before_action :authenticate_user!, except=>[:home,:highscores]
  def home 

  end

  def games
  end

  def playervs
  end

  def highscores
    @users = User.order('win DESC')
  end

  def played
    current_user.wins+=1 if params[:win]
    current_user.loses+=1 if params[:loss]
    current_user.ties+=1 if params[:tie]
    current_user.save
  end

  def set_stats
    @wins=current_user.wins
    @loses=current_user.loses
    @ties=current_user.ties
  end
end
