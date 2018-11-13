class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
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
