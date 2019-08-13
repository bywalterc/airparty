class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    if current_user == @user
      @bookings = @user.bookings
      @spaces = @user.spaces
    else
      redirect_to spaces_path
    end
  end
end
