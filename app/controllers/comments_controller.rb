class CommentsController < ApplicationController
  before_action :set_prototype
  def create
  end

  private
  def set_prototype
    @protoytpe = protoytpe.find(params[:id])
  end
end
