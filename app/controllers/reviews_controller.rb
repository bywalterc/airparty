class ReviewsController < ApplicationController
  def create
    @space = Space.find(params[:space_id])
    @review = Review.new(review_params)
    @review.space = @space
    if @review.save
      redirect_to space_path(@space)
    else
      @booking = Booking.new
      render 'spaces/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
