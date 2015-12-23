class LikesController < ApplicationController
  before_action :set_prototype

  def create
    @like = current_user.likes.build(prototype_id: @prototype.id)
    @like.prototype.update(like_count: @like.prototype.like_count + 1)
    @like.save
  end

  def destroy
    @like = current_user.likes.build(prototype_id: @prototype.id)
    Like.find(params[:id]).destroy
    @like.prototype.update(like_count: @like.prototype.like_count - 1)
  end

  private
  def set_prototype
    @prototype = Prototype.find(params[:prototype_id])
  end
end
