class SessionsController < ApplicationController
  include SessionsHelper

  def new
    if logged_in?
      redirect_to current_user
    end
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      render 'new'
    end
  end

  def destroy
    if logged_in?
      log_out
    end
    redirect_to root_url
  end

end
