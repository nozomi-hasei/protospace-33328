class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototypes = Prototype.includes(:user).order("created_at DESC")
  end
end
