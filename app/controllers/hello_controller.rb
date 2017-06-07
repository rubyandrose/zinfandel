class HelloController < ApplicationController
  def index
    @picture = current_user.picture_url
    @user_name = current_user.full_name
    @recent_posts = Post.all.order(created_at: :desc).limit(5)
  end
end
