class SmirksController < ApplicationController

  def new
    @smirk = Smirk.new
  end

  def create
    @smirk = Smirk.new
    @smirk.user_id = current_user.id
    if @smirk.save
      render :new
  end

end
