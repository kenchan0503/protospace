class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
    @prototypes = @user.prototypes
  end

  def edit
  end

  def update
    @user.update(update_params)
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def update_params
    params.require(:user).permit(:use_name, :email, :group_name, :works, :profile, :avatar)
  end
end
