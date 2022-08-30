class HomesController < ApplicationController

  def index
    @micropost = current_user.microposts.build if logged_in?
  end

  def practice
  end

  def play
  end

  def about
  end

end
