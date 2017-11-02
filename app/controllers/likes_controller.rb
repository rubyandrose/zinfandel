class LikesController < ApplicationController
	def create
		@like = current_user.likes.build(post_id: params[:post_id])
		if @like.save
      redirect_to posts_path
    	end
	end
end