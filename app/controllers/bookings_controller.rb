class BookingsController < ApplicationController
  def index
    @service = Service.find(params[:service_id])
    @bookings = Booking.all
  end

  def show
  end

  def new
  end

  def create
  end

  private

  def booking_params
    params.require(:booking).permit(:service_id, :user_id, :date, :status)
  end
end
