class ServicesController < ApplicationController
  def index
    @services = Service.all
    @bookings = current_user.booking_requests
  end

  def show
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params) # some info comes from params
    @service.user = current_user

    if @service.save
      redirect_to services_path(@services)
    else
      render :new
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])

    @service.update(
      name: params[:service][:name],
      description: params[:service][:description],
      price: params[:service][:price]
    )
    redirect_to services_path(@services)
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy

    redirect_to services_path
  end

  private

  def service_params
    params.require(:service).permit(:name, :description, :price)
  end
end
