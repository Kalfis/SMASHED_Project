class SmirksController < ApplicationController

  def new
    @smirk = Smirk.new
  end

  def create
    @smirk = Smirk.new(smirk_params)
    @smirk.smash_id = params[:smash_id]
    @smirk.user_id = current_user.id
    @smirk.save
      redirect_to smash_path(@smirk.smash)
  end

  def update
    @smirk = Smirk.find(params[:id])
    if @smirk.update(smirk_params)
      redirect_to @smash
    else
      render 'edit'
    end
  end

  def smirk_params
    params.require(:smirk).permit(:user, :content)
  end

end
