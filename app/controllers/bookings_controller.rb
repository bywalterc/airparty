class BookingsController < ApplicationController
  before_action :set_space, except: [:destroy]

  def new
    @booking = Booking.new
    raise
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.space = @space
    @booking.user = current_user
    if @booking.save
      # flash[:notice] = 'Your new booking is confirmed'
      redirect_to user_path(current_user), notice: 'Your booking is confirmed'
    else
      render 'spaces/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :date_start, :date_end)
  end

  def set_space
    @space = Space.find(params[:space_id])
  end
end
