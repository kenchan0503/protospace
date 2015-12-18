class TopController < ApplicationController
  def new_order
    @prototypes = Prototype.all.order("created_at DESC").page(params[:page]).per(5)
  end

  def like_order
    prototype_ids = Like.group(:prototype_id).order('count_prototype_id DESC').count(:prototype_id).keys
    @prototypes = prototype_id.map{ |id| Prototype.find(id) }
  end
end
