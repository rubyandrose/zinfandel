class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user

    if @user.update
      redirect_to post_path(@user)
    else
      render :edit
    end
  end
end
