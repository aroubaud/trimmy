class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
  end

  def update
    booking = Booking.find(params[:id])

    booking.update(
      status: params[:status]
    )
    redirect_to services_path
  end

  def new
    @service = Service.find(params[:service_id])
    @booking = Booking.new
  end

  def create
    @service = Service.find(params[:service_id])
    @booking = Booking.new(booking_params.merge(status: 'Pending'))
    @booking.service = @service
    @booking.user = current_user
    @booking.save
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
