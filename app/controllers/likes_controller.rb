class LikesController < ApplicationController
  before_action :set_prototype

  def create
    @like.save
  end

  def destroy
    @like = current_user.likes.build(prototype_id: @prototype.id)
    Like.find(params[:id]).destroy
  end

  private
  def set_prototype
    @prototype = Prototype.find(params[:prototype_id])
  end

  def set_like
    @like = current_user.likes.build(prototype_id: @prototype.id)

  end
end
