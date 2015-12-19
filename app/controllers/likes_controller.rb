class LikesController < ApplicationController
  def create
    @prototype = Prototype.find(params[:prototype])
    @like = current_user.likes.build(prototype_id: @prototype.id)
    @like.save
  end

  def destroy
    @prototype = Prototype.find(params[:prototype])
    @like = current_user.likes.find_by(prototype_id: @prototype.id)
    @like.destroy
  end
end
