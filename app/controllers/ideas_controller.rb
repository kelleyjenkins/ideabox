class IdeasController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @ideas = @user.ideas
  end

  def new
    @user = User.find(params[:user_id])
    @idea = @user.ideas.new
  end

  def create
    user = User.new
    idea = user.ideas.create(:idea)
    redirect_to user_path
  end

  def show
    @user = User.find(params[:user_id])
  end
end
