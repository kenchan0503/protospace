class PrototypesController < ApplicationController
  def new
    @prototype = Prototype.new
  end

  def create
  end

  def prototype_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, :avatar)
  end
end
