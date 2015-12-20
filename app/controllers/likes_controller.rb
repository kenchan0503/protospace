class LikesController < ApplicationController
  before_action :set_prototype

  def create
    @like = current_user.likes.build(prototype_id: @prototype.id)
    @like.save
  end

  def destroy
    @like = current_user.likes.find_by(prototype_id: @prototype.id)
    @like.destroy
  end

  private
  def set_prototype
    @prototype = Prototype.find(params[:id])
  end
end
