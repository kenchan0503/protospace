class LikesController < ApplicationController
  before_action :set_prototype

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

  private
  def set_prototype
    @prototype = Prototype.find(params[:prototype])
  end
end
