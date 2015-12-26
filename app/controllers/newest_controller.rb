class NewestController < ApplicationController
  def index
    @prototypes = Prototype.page(params[:page]).order("created_at DESC")
  end
end
