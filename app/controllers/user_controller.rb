class UserController < ApplicationController
  def show
    # showアクションの処理を記述
    @user = User.find(params[:id])
  end
end

