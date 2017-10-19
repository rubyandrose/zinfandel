class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create(post_params)

    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def post_params
    params.require(:post).permit(:content)
  end

  def edit
  end

  def show
    @post = Post.find(params[:id])
  end
end
