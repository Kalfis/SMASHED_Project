class UsersController < ApplicationController

  before_action :authorize, except: [:index, :new, :create]
  
  def index

  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to('/login')
    else
      redirect_to('/users/new')
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

    def user_params
      params.require(:user).permit(
      :sname,
      :email,
      :password,
      :password_confirmation
      )
    end

end
