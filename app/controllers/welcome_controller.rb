class WelcomeController < ApplicationController
  def home
    redirect_to current_user if logged_in?

  end

  def about

  end
end