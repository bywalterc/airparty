class SpacesController < ApplicationController

  def index
    @spaces = Space.all
  end

  def show
    @space = Space.find(params[:id])
  end

  def new
    @space = Space.new
  end

  def create
    @user = User.all.first
    @space = Space.new(space_params)
    @space.user = @user
    @space.save
    redirect_to spaces_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :price, :description, :category, :capacity, :space_photo, :user_id)
  end

end

