class PostsController < ApplicationController
  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(params.require(:post).permit(:content))
    @post.save!

    redirect_to posts_path
  end

  def index
    @posts = Post.all.sort_by { |post| post[:created_at] }.reverse
  end
end
