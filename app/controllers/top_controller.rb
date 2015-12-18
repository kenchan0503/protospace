class TopController < ApplicationController
  def index
    @prototypes = Prototype.all.order("created_at DESC").page(params[:page]).per(5)
  end
end
