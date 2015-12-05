class PrototypesController < ApplicationController
  def new
    @prototype = Prototype.new
  end

  def prototype_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, :avatar)
  end
end
