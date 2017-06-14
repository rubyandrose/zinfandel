class CommentsController < ApplicationController
  def new
    current_post = Post.find params[:post_id]
    @comment = current_post.comments.build
  end

  def create
    current_post = Post.find params.require(:comment)[:post_id]
    Comment.create!(comment_body: params.require(:comment)[:comment_body], user:current_user, post:current_post)

    redirect_to posts_path
  end
end
