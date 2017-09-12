class IdeasController < ApplicationController

  def index
    @ideas = Idea.all
  end

  def show
    @idea = Idea.find_by(id: params[:id])
  end

  def new
  end

  def create
    Idea.create(title: params[:title], description: params[:description], user_id: params[:user_id])
    redirect_to ''
  end

  def upvote
    @idea = Idea.find(params[:id])
    @idea.upvote_by current_user
    redirect_to '/'
  end

  def downvote
    @idea = Idea.find(params[:id])
    @idea.downvote_by current_user
    redirect_to '/'
  end

  def destroy
  end
end
