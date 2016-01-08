class UsersController < ApplicationController
  before_action :set_user

  def show
    @prototypes = @user.prototypes
  end

  private
  def set_user
    @user = User.find(params[:id])
end
