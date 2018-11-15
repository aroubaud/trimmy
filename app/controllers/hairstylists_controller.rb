class HairstylistsController < ApplicationController
  def index
    if params[:query].present?
      @hairstylists = User.global_search(params[:query]).where(hairstylist: true)
    else
      @hairstylists = User.where(hairstylist: true)
    end
  end

  def show
    @hairstylist = User.find(params[:id])
  end
end
