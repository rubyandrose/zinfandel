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
  end

  def create
    if content_params.present?
      Post.new(user: current_user, content: content_params).save
      redirect_to root_path
    else
      redirect_to root_path
      ## figure out how to display an error message
    end
  end

  def content_params
    @content_params ||= params.permit(:content)[:content]
  end
end
