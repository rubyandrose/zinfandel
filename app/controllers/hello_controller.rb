class HelloController < ApplicationController
  def index
    @picture = current_user.picture_url
    @user_name = current_user.full_name
  end
end
