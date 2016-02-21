class SmashesController < ApplicationController

  def index
    @smashes = Smash.all.order(created_at: :desc)
  end

  def show
    @smash = Smash.find(params[:id])
    @smirk = Smirk.new
    @smirk.smash_id = @smash.id

  end

  def new
    @smash = Smash.new
  end

  def create
    @smash = Smash.new(smash_params)
    @smash.user_id = current_user.id
    if @smash.save
      redirect_to("/smashes")
    else
      render :new
    end
  end

  def upvote
    @smash = Smash.find(params[:id])
    @smash.liked_by current_user
    redirect_to @smash
  end

  def downvote
    @smash = Smash.find(params[:id])
    @smash.downvote_from current_user
    redirect_to @smash
  end

  private
  def smash_params
    params.require(:smash).permit(
    :content,
    :image,
    :user
    )
  end

end
