class IdeasController < ApplicationController
  before_action :set_idea, only: [:show, :destory, :edit, :update]
  def index
    @user = User.find(params[:user_id])
    @ideas = @user.ideas
    @images = Image.all

  end

  def new
    @user = User.find(params[:user_id])
    @categories = Category.all
    @idea = @user.ideas.new
    @images = Image.all
  end

  def create
    @user = User.find(params[:user_id])

    @idea = @user.ideas.create!(idea_params)

    redirect_to user_ideas_path(@user)
  end

  def show
    @user= User.find(params[:user_id])
  end

  def edit
    @user = User.find(params[:user_id])
    @categories = Category.all
    @images = Image.all
  end

  def update
    idea = Idea.update(params[:id], idea_params)

    redirect_to user_ideas_path(idea.user, idea)
  end

  def destroy
    Idea.destroy(params[:id])
    redirect_to user_ideas_path(params[:user_id])
  end

  private

  def idea_params
    params.require(:idea).permit(:title, :idea, :category_id, image_ids:[])
  end

  def set_idea
    @idea = Idea.find(params[:id])
  end
end
