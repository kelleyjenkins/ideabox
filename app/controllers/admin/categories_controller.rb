class Admin::CategoriesController < Admin::BaseController
  before_action :set_category, only: [:destroy, :edit, :update]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
        flash[:success] = "You created the #{@category.name} category!"
      redirect_to admin_categories_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @category.update(category_params)
    if @category.save
      flash[:success] = "#{@category.name} updated!"
      redirect_to admin_categories_path
    else
      render :edit
    end
  end

  def destroy
    @category.destroy

    flash[:success] = "#{@category.name} was successfully deleted!"
    redirect_to admin_categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
