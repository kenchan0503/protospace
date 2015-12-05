class PrototypesController < ApplicationController
  def new
    @prototype = Prototype.new
    @prototype.photos.build
  end

  def create
    Prototype.create(prototype_params)
  end

  private
  def prototype_params
    binding.pry
    params.require(:prototype).permit(:title, :catchcopy, :concept, :avatar).merge(user_id: current_user.id)
  end
end
