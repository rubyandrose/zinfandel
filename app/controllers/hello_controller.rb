class HelloController < ApplicationController
  def index
    @user_name = current_user.full_name
  end
end
