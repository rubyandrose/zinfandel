class SearchController < ApplicationController

  def index
    @users = User.search(params[:q])
  end

end
