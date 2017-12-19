class ImagesController < ApplicationController
    before_action :set_image, only: [:show, :destory, :edit, :update]
  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    redirect_to images_path
  end

  def edit
  end

  def update
    @image.update(image_params)
    if @image.save
      flash[:success] = "#{@image.name} updated!"
      redirect_to images_path
    else
      render :edit
    end
  end

  def destroy
    @image.destroy

    flash[:success] = "#{@image.name} was successfully deleted!"
    redirect_to images_path
  end

  private

  def image_params
    params.require(:image).permit(:name, :url)
  end

  def set_image
    @image = Image.find([params[:id]])
  end
end
