class PrototypesController < ApplicationController
  before_action :set_prototype, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]

  def index
    prototype_ids = Like.group(:prototype_id).order('count_prototype_id DESC').page(params[:page]).per(5).count(:prototype_id).keys
    @like_order_prototypes = prototype_ids.map{ |id| Prototype.find(id) }
  end

  def newest
    @new_order_prototypes = Prototype.page(params[:page]).per(5).order("created_at DESC")
  end

  def new
    @prototype = Prototype.new
    @photos = @prototype.photos.build
  end

  def create
    @prototype = current_user.prototypes.new(prototype_params)
    if @prototype.save
      redirect_to :root
    else
      @photos = @prototype.photos
      render :new
    end
  end

  def show
    @like = current_user.likes.find_by(prototype_id: @prototype.id)
  end

  def edit
    @photos = @prototype.photos
  end

  def update
    if @prototype.update(prototype_params)
      redirect_to :root
    else
      @photos = @prototype.photos
      render :edit
    end
  end

  def destroy
    @prototype.destroy
    redirect_to :root
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, photos_attributes: [:id, :url, :status])
  end

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end
end
