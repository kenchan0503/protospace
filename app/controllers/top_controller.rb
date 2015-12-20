class TopController < ApplicationController
  def index
    binding.pry
    @new_order_prototypes = Prototype.order("created_at DESC").page(params[:page]).per(5)
    prototype_ids = Like.group(:prototype_id).order('count_prototype_id DESC').page(params[:page]).per(5).count(:prototype_id).keys
    @like_order_prototypes = prototype_ids.map{ |id| Prototype.find(id) }
  end
end
