class Admin::ImagesController < Admin::BaseController

def index
  @images = Image.all
end

def new
  @image = Image.new
end

def create
  @image = Image.create(image_params)
  redirect_to admin_images_path
end

def edit
  @image = Image.find(params[:id])
end

def update
  @image = Image.find(params[:id])
  @image.update(image_params)
  if @image.save
    flash[:success] = "#{@image.name} updated!"
    redirect_to admin_images_path
  else
    render :edit
  end
end

def destroy
  @image = Image.find(params[:id])
  @image.destroy

  flash[:success] = "#{@image.name} was successfully deleted!"
  redirect_to admin_images_path
end

private

def image_params
  params.require(:image).permit(:name, :url)
end
end
