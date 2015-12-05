class PrototypesController < ApplicationController
  def new
    @prototype = Prototype.new
  end

  def create
    Review.create(create_params)
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, :avatar)
  end
end
