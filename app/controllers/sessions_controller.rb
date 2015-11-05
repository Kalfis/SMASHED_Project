class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(sname: params[:sname])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to("/smashes")
    else
      redirect_to("login")
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to("/")
  end
end
