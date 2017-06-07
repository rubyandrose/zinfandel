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
    @posts = Post.all
    @feels = Reaction::ACCEPTABLE_FEELS
  end
end
