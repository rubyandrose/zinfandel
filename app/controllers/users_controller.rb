class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.all.sort_by { |post| post[:created_at] }.reverse
  end
end
