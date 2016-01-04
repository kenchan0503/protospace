class CommentsController < ApplicationController
  before_action :set_prototype
  def create
    current_user.comments.create(comment_params)
    @comments = @prototype.comments
    @comment = Comment.new
  end

  private
  def set_prototype
    @prototype = Prototype.find(params[:prototype_id])
  end

  def comment_params
    params.require(:comment).permit(:text).merge(prototype_id: @prototype.id)
  end
end
