class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]
  before_action :set_space, only: [:edit, :update, :destroy]

  def index
    if params[:query].present?
      @spaces = Space.search_by_space(params[:query]).geocoded.reverse
    else
      @spaces = Space.geocoded.reverse
    end

    @markers = @spaces.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { space: space })
      }
    end
    @spaces = Space.all.reverse
  end

  def show
    @booking = Booking.new
    @space = Space.find(params[:id])
    @markers = [{
        lat: @space.latitude,
        lng: @space.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { space: @space })

      }]
  end

  def new
    @space = Space.new
  end

  def create
    @user = current_user
    @space = Space.new(space_params)
    @space.user = @user
    @space.save
    redirect_to spaces_path
  end

  def edit
  end

  def update
    @space.update(space_params)
    redirect_to space_path(@space)
  end

  def destroy
    @space.destroy
    redirect_to spaces_path
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :price, :description, :category, :capacity, :photo, :user_id)
  end

  def set_space
    @space = Space.find(params[:id])
  end
end
