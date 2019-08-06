class SpacesController < ApplicationController

  before_action :set_space, only: [:show, :edit, :update, :destroy]

  def index
    @spaces = Space.all
  end

  def show
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

