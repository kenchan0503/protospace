class CommentsController < ApplicationController
  before_action :set_prototype
  def create
    current_user.comments.create(prototype_id: @prototype.id, text: comment_params[:text])
    @comments = @prototype.comments
    @comment = Comment.new
  end

  private
  def set_prototype
    @prototype = Prototype.find(params[:prototype_id])
  end

  def comment_params
    params.require(:comment).permit(:text)
  end
end
