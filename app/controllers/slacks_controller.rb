class SlacksController < ApplicationController
  skip_before_action :authenticate_user!
  skip_before_action :protect_from_forgery
  
  def create
    render json: response_json
  end

  def response_json
	{
	  text: "The most recent post is: #{most_recent_post_for_user.content}"  
	}
  end

  def most_recent_post_for_user
  	email = params[:text]
  	user = User.find(email: email)
  	posts = user.posts
  	posts.last
  end
end
