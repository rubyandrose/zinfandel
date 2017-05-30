class HelloController < ApplicationController
  def index
    @picture = current_user.picture_url
  end
end
