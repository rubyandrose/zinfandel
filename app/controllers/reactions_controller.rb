class ReactionsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    reaction = post.reactions.build(params.permit(:feels).merge(user: current_user))
    reaction.save!

    redirect_to posts_path
  end
end
