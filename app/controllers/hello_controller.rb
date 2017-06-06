class HelloController < ApplicationController
  def index
    @picture = current_user.picture_url
    @user_name = current_user.full_name
    posts = Post.all.sort_by { |post| post[:created_at] }
    @recent_posts = posts.reverse[0..4]
  end
end
