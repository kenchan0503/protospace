class TopController < ApplicationController
  def new_order
    @prototypes = Prototype.all.order("created_at DESC").page(params[:page]).per(5)
  end

  def like_order
  end
end
