class PostsController < ApplicationController
  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(params.require(:post).permit(:content, :giphy))
    @post.save!

    redirect_to posts_path
  end

  def index
    @posts = Post.all
  end
end
