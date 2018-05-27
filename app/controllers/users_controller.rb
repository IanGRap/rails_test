class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def login_page
    @user = User.new
  end

  def login
    user = User.find_by(name: params[:user][:name])
    if user && user.authenticate(params[:user][:password])
      redirect_to user
    else
      render 'login_page'
    end
  end

  def show
    @user = User.find(params[:id])
    @projects = @user.projects
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to root_path
  end

  private

    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end

end
