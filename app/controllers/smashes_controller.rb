class SmashesController < ApplicationController
  def index
    @smashes = Smash.all
  end

  def show
    @smash = Smash.find(params[:id])
  end

  def
    @smash = Smash.new
  end

  def create
    @smash = Smash.new(smash_params)
    @smash.user_id = current_user.sname
    if @smash.save
      redirect_to("/smashes")
    else
      render :new
    end
  end

  private
  def smash_params
    params.require(:smash).permit(
    :content
    :image
    :user
    )
  end
  
end
