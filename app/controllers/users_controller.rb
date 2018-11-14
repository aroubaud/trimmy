class UsersController < ApplicationController
  def index
    @hairstylists = User.where(hairstylist: true)
  end

  def show
  end
end
