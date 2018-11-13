class ServicesController < ApplicationController
  def index
    @hairstylist = User.find(params[:hairstylist_id])
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
