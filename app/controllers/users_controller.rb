class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create
    User.create(create_paramas)
  end

  def edit
  end

  def update
    User.update
  end

  private
  def create_params
  end
end