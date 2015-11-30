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
  end

end