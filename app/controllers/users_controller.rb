class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to("/")
    else
      render :new
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    # binding.pry
    @current_page = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @current_page = User.find_by(id: params[:id])
    @user.update(point: @current_page.point + ((params["user"]["point"]).to_i))
    binding.pry
      current_user.update(point: current_user.point - ((params["user"]["point"]).to_i))
       if @user.save
      redirect_to user_path(@user)
    end

  end

  private

  def user_params
    params.require(:user).permit(
      :username,
      :email,
      :password,
      :password_confirmation
      )
  end

end
