class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @stories = @user.stories.page(params[:page]).per_page(20)
  end
end