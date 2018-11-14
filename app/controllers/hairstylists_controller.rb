class HairstylistsController < ApplicationController
  def index
    @hairstylists = User.where(hairstylist: true)
  end

  def show
    @hairstylist = User.find(params[:id])
  end
end
