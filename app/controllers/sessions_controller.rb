class SessionsController < ApplicationController
  include SessionsHelper

  def new
    if logged_in
      redirect current_user
    end
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user
      log_in user
      redirect_to user
    else
      render 'new'
    end
  end
end
