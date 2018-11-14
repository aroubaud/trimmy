class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
  end

  def new

  end

  def create

    @service = Service.find(params[:service_id])
    @booking = Booking.new(status: 'pending')
    @booking.service = @service
    @booking.user = current_user
    @booking.save
    redirect_to bookings_path
  end

  # private

  # def booking_params
  #   params.require(:booking).permit(:date, :status, :service_id)
  # end
end
