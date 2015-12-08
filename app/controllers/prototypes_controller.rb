class PrototypesController < ApplicationController
  def new
    @prototype = Prototype.new
    @prototype.photos.build
  end

  def create
    Prototype.create(prototype_params)
    if @prototype.save
      redirect_to :root
    else
      render :new
    end
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, photos_attributes: [:url, :status]).merge(user_id: current_user.id)
  end
end
