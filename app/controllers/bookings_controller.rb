class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def show
  end

  def new
  end

  def create
    # TODO:
    #   Create a booking for the service
    # redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:service_id, :user_id, :date, :status)
  end
end
