class PrototypesController < ApplicationController
  before_action :set_prototype, only: [:show, :edit, :update, :destroy]

  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
    @photo = @prototype.photos.build
  end

  def create
    @prototype = current_user.prototypes.new(prototype_params)
    if @prototype.save
      redirect_to :root
    else
      @photo = @prototype.photos
      render :new
    end
  end

  def show
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
