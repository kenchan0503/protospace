class LikesController < ApplicationController
  before_action :set_prototype

  def create
    @like = current_user.likes.build(prototype_id: @prototype.id)
    @like.save
  end

  def destroy
    Like.find(params[:id]).destroy
  end

  private
  def set_prototype
    @prototype = Prototype.find(params[:prototype_id])
  end
end
