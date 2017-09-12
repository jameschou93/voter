class CommentsController < ApplicationController
  def create
    @comment = Comment.create(user_id: params[:user_id], idea_id: params[:idea_id], comment: params[:comment])
    redirect_to '/'
  end
end
