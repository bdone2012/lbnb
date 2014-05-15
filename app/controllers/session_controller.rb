class SessionController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(session[:user_id])
    else
      render(:new)
    end
  end

end
