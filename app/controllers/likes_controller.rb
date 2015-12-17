class LikesController < ApplicationController
  def like
    @prototype = Prototype.find(params[:prototype])
    @like = current_user.likes.build(prototype_id: @prototype.id)
    @like.save
    redirect_to @prototype
  end

  def unlike
    @prototype = Prototype.find(params[:prototype])
    @like = current_user.likes.build(prototype_id: @prototype.id)
    @like.destroy
    redirect_to @protoytpe
  end
end
