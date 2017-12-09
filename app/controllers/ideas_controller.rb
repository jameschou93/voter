class IdeasController < ApplicationController
require 'will_paginate/array'

  def index
    if current_user
      @user = current_user.id
    else
      @user = "n/a"
    end
    @ideas = Idea.all.sort_by { |idea| idea.get_downvotes.size - idea.get_upvotes.size}.paginate(page: params[:page], per_page: 5)
      respond_to do |format|
        format.html
        format.js {render 'paginate'}
    end
    # @ideas = @ideas.sort_by { |idea| idea.get_downvotes.size - idea.get_upvotes.size}
  end

  def show
    @idea = Idea.find_by(id: params[:id])
  end

  def new
  end

  def create
    idea = Idea.new(title: params[:title], description: params[:description], user_id: params[:user_id])
    if current_user
      idea.save
      redirect_to ''
    else
      redirect_to new_user_registration_path
    end
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
