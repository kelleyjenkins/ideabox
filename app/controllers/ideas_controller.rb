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
    user = User.find(params[:user_id])
    idea = user.ideas.create(idea_params)

    redirect_to user_path
  end

  def show
    @user= User.find(params[:user_id])
    @idea = Idea.find(params[:id])
  end

  def edit
    @user = User.find(params[:user_id])
    @idea = Idea.find(params[:id])
  end

  def update
    idea = Idea.update(params[:id], idea_params)

    redirect_to user_ideas_path(idea.user, idea)
  end



  private

  def idea_params
    params.require(:idea).permit(:idea)
  end
end
