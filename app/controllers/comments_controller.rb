class CommentsController < ApplicationController
  before_action :set_prototype
  def create
    current_user.comments.create(prototype_id: @prototype.id, text: params[:comment][:text])
    redirect_to :@prototype
  end

  private
  def set_prototype
    @prototype = Prototype.find(params[:prototype_id])
  end
end
