class PrototypesController < ApplicationController
  def new
    @prototype = Prototype.new
    @photos = @prototype.photos.build
  end

  def create
    @prototype = current_user.prototypes.new(prototype_params)
    if @prototype.save
      redirect_to :root
    else
      @prototype = Prototype.new
      @photos = @prototype.photos
      render :new
    end
  end

  def show
    @prototype = Prototype.find(params[:id])
  end

  def edit
    @prototype = Prototype.find(params[:id])
    @photos = @prototype.photos
  end

  def update
    @prototype = Prototype.find(params[:id])
    if @prototype.update(prototype_params)
      redirect_to :root
    else
      @photos = @prototype.photos
      render :edit
    end
  end

  def destroy
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, photos_attributes: [:id, :url, :status])
  end
end
