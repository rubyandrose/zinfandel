class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.all.sort_by { |post| post[:created_at] }.reverse
  end

  def update
    @user = current_user
    @user.update(bio: params[:new_bio])
    redirect_to user_path(@user)
  end

  def edit
    @user = current_user
  end
end
