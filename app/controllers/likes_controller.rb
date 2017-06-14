class LikesController < ApplicationController
  def create
    if existing_like.present?
      existing_like.destroy
    else
      like = post.likes.build(user: current_user)
      like.save!
    end

    redirect_to posts_path
  end

  private

  def existing_like
    @existing_like ||= Like.find_by(user: current_user, post: post )
  end

  def post
    @post ||= Post.find(params[:post_id])
  end
end
