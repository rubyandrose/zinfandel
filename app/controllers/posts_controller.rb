class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    Post.new(user: current_user, content: params[:content]).save
    redirect_to :back
  end
end
