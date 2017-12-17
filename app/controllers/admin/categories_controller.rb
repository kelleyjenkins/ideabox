class Admin::CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
    redirect_to admin_categories_path
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    if @category.save
      flash[:success] = "#{@category.name} updated!"
      redirect_to admin_categories_path
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    flash[:success] = "#{@category.name} was successfully deleted!"
    redirect_to admin_categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
